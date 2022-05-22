

module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :test_field, String, null: false
      
    def test_field
      "hello world"
    end

    # /user/:id
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end