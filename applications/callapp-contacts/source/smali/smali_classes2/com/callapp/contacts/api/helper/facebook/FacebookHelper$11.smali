.class public Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 15

    .line 2037
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    sget-object v1, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 2038
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    .line 2039
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2037
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 2045
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "message,attachments{unshimmed_url},updated_time"

    .line 2046
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "limit"

    const/16 v1, 0xa

    .line 2047
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2049
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 2050
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/feed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v9, 0x0

    const-string v10, "v4.0"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 2962
    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v0

    .line 3121
    iget-object v0, v0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v1, "updated_time"

    const/4 v2, 0x0

    const-string v3, "data"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 2061
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v7, 0x0

    .line 2064
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 2065
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v9, "message"

    .line 2067
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2068
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2069
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2070
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2071
    invoke-static {v2, v8}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v2, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v2

    :goto_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move-object v6, v2

    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_3

    .line 2085
    iget-object v8, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iget-object v9, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2087
    iget-object v2, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2088
    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 2089
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-nez v7, :cond_7

    if-eqz v0, :cond_7

    .line 2095
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2097
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2100
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_8

    if-nez v8, :cond_8

    .line 2104
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v10, "attachments"

    .line 2105
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2106
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 2107
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2108
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_6

    const/4 v11, 0x0

    .line 2110
    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 2111
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_5

    const-string v13, "unshimmed_url"

    .line 2112
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2113
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2114
    invoke-static {v12}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2115
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2116
    invoke-static {v13}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2117
    invoke-static {v6, v13}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v2, v12

    :cond_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v5, v7

    .line 2134
    :cond_8
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    const-string v2, ""

    :cond_9
    return-object v2
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb_user_self_wall_post_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$11;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b001c

    return v0
.end method
