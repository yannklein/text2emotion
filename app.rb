# app.rb
require 'sinatra'
require 'json'
require 'net/http'
require 'uri'
require 'tempfile'
require 'textmood'

get '/' do
  erb :index
end

post '/sentence' do
  @sentence = params["sentence"]
  tm = TextMood.new(language: "en")
  @score = tm.analyze(@sentence)
  erb :index
end