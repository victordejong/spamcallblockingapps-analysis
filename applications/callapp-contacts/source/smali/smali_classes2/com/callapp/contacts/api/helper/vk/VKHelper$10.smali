.class public Lcom/callapp/contacts/api/helper/vk/VKHelper$10;
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
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/vk/VKHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$10;->b:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/ArrayList;
    .locals 7

    .line 749
    new-instance v0, Lcom/vk/api/sdk/d/b;

    const-string/jumbo v1, "video.get"

    const-string v2, "5.90"

    invoke-direct {v0, v1, v2}, Lcom/vk/api/sdk/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$10;->a:Ljava/lang/String;

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/d/b;

    const-string v1, "extended"

    const/4 v2, 0x1

    .line 751
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;I)Lcom/vk/api/sdk/d/b;

    const-string v1, "count"

    const/4 v2, 0x5

    .line 752
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;I)Lcom/vk/api/sdk/d/b;

    const/4 v1, 0x0

    .line 756
    :try_start_0
    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v2, "response"

    .line 759
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "items"

    .line 761
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 763
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x0

    .line 764
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 765
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "player"

    .line 766
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 767
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 768
    new-instance v5, Lcom/callapp/contacts/model/contact/VideoData;

    sget-object v6, Lcom/callapp/contacts/model/contact/VideoData$Types;->Web:Lcom/callapp/contacts/model/contact/VideoData$Types;

    invoke-direct {v5, v6}, Lcom/callapp/contacts/model/contact/VideoData;-><init>(Lcom/callapp/contacts/model/contact/VideoData$Types;)V

    .line 769
    invoke-virtual {v5, v4}, Lcom/callapp/contacts/model/contact/VideoData;->setVideoId(Ljava/lang/String;)V

    const-string v4, "title"

    .line 771
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 772
    invoke-virtual {v5, v4}, Lcom/callapp/contacts/model/contact/VideoData;->setTitle(Ljava/lang/String;)V

    const-string v4, "photo_800"

    .line 774
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 775
    invoke-virtual {v5, v3}, Lcom/callapp/contacts/model/contact/VideoData;->setThumbnailUrl(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    .line 785
    :goto_2
    const-class v2, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 743
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$10;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vk_profile_uploaded_videos_urls_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$10;->a:Ljava/lang/String;

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
