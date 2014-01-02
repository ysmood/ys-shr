express = require 'express'
_ = require 'underscore'
colors = require 'colors'
conf = require './config'

app = express()

console.log ('>> Sharing: ' + conf.dir).blue

app.use express.directory(conf.dir)
app.use express.static(conf.dir)

console.log ('>> Listen port: ' + conf.port).green
app.listen conf.port
