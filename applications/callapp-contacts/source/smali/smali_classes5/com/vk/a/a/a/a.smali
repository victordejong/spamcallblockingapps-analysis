.class public final Lcom/vk/a/a/a/a;
.super Lcom/vk/api/sdk/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/api/sdk/d/b<",
        "Ljava/util/List<",
        "+",
        "Lcom/callapp/contacts/api/helper/vk/VKUser;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/sdk/sample/requests/VKFriendsRequest;",
        "Lcom/vk/api/sdk/requests/VKRequest;",
        "",
        "Lcom/callapp/contacts/api/helper/vk/VKUser;",
        "uid",
        "",
        "(I)V",
        "parse",
        "r",
        "Lorg/json/JSONObject;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/vk/a/a/a/a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-string v0, "friends.get"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 33
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/vk/api/sdk/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_0

    const-string v0, "user_id"

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/vk/a/a/a/a;->a(Ljava/lang/String;I)Lcom/vk/api/sdk/d/b;

    :cond_0
    const-string p1, "fields"

    const-string v0, "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about"

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/vk/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/d/b;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/vk/a/a/a/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    const-string v0, "r"

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    .line 1042
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1045
    sget-object v3, Lcom/callapp/contacts/api/helper/vk/VKUser;->CREATOR:Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "users.getJSONObject(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;->a(Lorg/json/JSONObject;)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1047
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
