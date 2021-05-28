class Review < ApplicationRecord
  belongs_to :list

  RATING = [1, 2, 3, 4, 5]

  validates :comment, presence: true
  validates :rating, inclusion: { in: RATING }, presence: true
end
