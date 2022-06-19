.class public Lcom/callapp/contacts/api/helper/vk/VKHelper$9;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/vk/VKHelper;
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

.field final synthetic b:Lcom/callapp/contacts/api/helper/vk/VKHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$9;->b:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .line 699
    :try_start_0
    new-instance v0, Lcom/vk/api/sdk/d/b;

    const-string v1, "wall.get"

    const-string v2, "5.90"

    invoke-direct {v0, v1, v2}, Lcom/vk/api/sdk/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 700
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/d/b;

    const-string v1, "filter"

    const-string v2, "owner"

    .line 701
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/d/b;

    const-string v1, "count"

    const/4 v2, 0x5

    .line 702
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;I)Lcom/vk/api/sdk/d/b;

    .line 704
    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "response"

    .line 707
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "items"

    .line 709
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 711
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 712
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    .line 713
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 724
    :goto_1
    const-class v1, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 694
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$9;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vk_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0054

    return v0
.end method
