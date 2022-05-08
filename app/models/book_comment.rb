class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :comment, presence:true

  #↓なぜ記述したか不明のためコメントアウト
  # def create
  #   @book = book.find(params[:post_image_id])
  #   @comment = current_user.book_comments.new(book_comment_params)
  #   comment.book_id = book.id
  #   comment.save
  #   redirect_to book_path
  # end

  # private

  # def book_comment_params
  #   params.require(:book_comment).permit(:comment)
  # end
end
