class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    self.songs.map{|song| song.artist}
  end

  def songs
    Song.all.select{|song| song.genre == self}
  end
end
