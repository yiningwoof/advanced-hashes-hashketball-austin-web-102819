# Write your code here!
def game_hash()
  hash = {}
  hash[:home] = {}
  hash[:away] = {}
  hash[:home][:team_name] = "Brooklyn Nets"
  hash[:home][:colors] = ["Black", "White"]
  hash[:home][:players] = [{:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, {:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7}, {:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15}, {:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5}, {:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}]
  hash[:away][:team_name] = "Charlotte Hornets"
  hash[:away][:colors] = ["Turquoise", "Purple"]
  hash[:away][:players] = [{:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, {:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10}, {:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5}, {:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0}, {:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}]
  hash
end

def num_points_scored(player)
  hash = game_hash()
  home_players = hash[:home][:players].map{|player_data| player_data[:player_name]}
  away_players = hash[:away][:players].map{|player_data| player_data[:player_name]}
  if home_players.include? player
    index = home_players.index(player)
    score = hash[:home][:players][index][:points]
  elsif away_players.include? player
    index = away_players.index(player)
    score = hash[:away][:players][index][:points]
  end
  score
end

def shoe_size(player)
  hash = game_hash()
  home_players = hash[:home][:players].map{|player_data| player_data[:player_name]}
  away_players = hash[:away][:players].map{|player_data| player_data[:player_name]}
  if home_players.include? player
    index = home_players.index(player)
    size = hash[:home][:players][index][:shoe]
  elsif away_players.include? player
    index = away_players.index(player)
    size = hash[:away][:players][index][:shoe]
  end
  size
end

def team_colors(team)
  hash = game_hash()
  hash.each{|k, v| return v[:colors] if v[:team_name] == team}
end

def team_names
  hash = game_hash()
  hash.map{|k, v| v[:team_name]}
end

def player_numbers(team)
    hash = game_hash()
    hash.each{|k, v| v[:players].map{|player| player[:number]} if v[:team_name] == team}
end

def player_stats(player)
  hash = game_hash()
  home_players = hash[:home][:players].map{|player_data| player_data[:player_name]}
  away_players = hash[:away][:players].map{|player_data| player_data[:player_name]}
  stats = []
  if home_players.include? player
    index = home_players.index(player)
    stats = [hash[:home][:players][index][:number], hash[:home][:players][index][:shoe], hash[:home][:players][index][:points], hash[:home][:players][index][:rerounds], hash[:home][:players][index][:assists], hash[:home][:players][index][:steals], hash[:home][:players][index][:blocks], hash[:home][:players][index][:slam_dunks]]
  elsif away_players.include? player
    index = away_players.index(player)
    stats = [hash[:home][:players][index][:number], hash[:home][:players][index][:shoe], hash[:home][:players][index][:points], hash[:home][:players][index][:rerounds], hash[:home][:players][index][:assists], hash[:home][:players][index][:steals], hash[:home][:players][index][:blocks], hash[:home][:players][index][:slam_dunks]]
  end
  stats
  end