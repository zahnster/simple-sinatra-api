require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

before do
    content_type :json 
end

get '/' do
    JSON.pretty_generate({
        :success => 'true', 
        :failure => 'false'
    })
end
