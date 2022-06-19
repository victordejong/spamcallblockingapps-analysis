.class interface abstract Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract follow(Ljava/lang/String;Z)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "screen_name"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/b/t;
            a = "follow"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/o;
        a = "/1.1/friendships/create.json"
    .end annotation
.end method

.method public abstract getFollowersId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "screen_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "cursor"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lretrofit2/b/t;
            a = "include_user_entities"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lretrofit2/Call<",
            "Lcom/callapp/contacts/api/helper/twitter/IDs;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/f;
        a = "/1.1/followers/ids.json"
    .end annotation
.end method

.method public abstract getFriendsId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "screen_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "cursor"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lretrofit2/b/t;
            a = "include_user_entities"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lretrofit2/Call<",
            "Lcom/callapp/contacts/api/helper/twitter/IDs;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/f;
        a = "/1.1/friends/ids.json"
    .end annotation
.end method

.method public abstract lookup(Ljava/lang/String;Z)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "user_id"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/b/t;
            a = "include_user_entities"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/o;
        a = "/1.1/users/lookup.json"
    .end annotation
.end method

.method public abstract postStatus(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/o;
        a = "/1.1/statuses/update.json"
    .end annotation
.end method

.method public abstract searchUser(Ljava/lang/String;JJZ)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "q"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/b/t;
            a = "count"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lretrofit2/b/t;
            a = "page"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lretrofit2/b/t;
            a = "include_user_entities"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ)",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/f;
        a = "/1.1/users/search.json"
    .end annotation
.end method

.method public abstract show(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/t;
            a = "screen_name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/f;
        a = "/1.1/users/show.json"
    .end annotation
.end method
