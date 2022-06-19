.class public Lcom/pubmatic/sdk/openwrap/core/POBImpression;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected adPosition:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field protected final adUnitId:Ljava/lang/String;

.field private b:Lcom/pubmatic/sdk/openwrap/core/POBBanner;

.field private c:Lcom/pubmatic/sdk/openwrap/core/POBVideo;

.field private d:Z

.field private e:Z

.field protected final id:Ljava/lang/String;

.field protected pmZoneId:Ljava/lang/String;

.field protected testCreativeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->UNKNOWN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adPosition:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adUnitId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->e:Z

    iput-boolean p4, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->d:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    :cond_1
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-lez v4, :cond_2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string p2, "value"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "POBImpression"

    const-string v1, "Not able to generate Json with key/value pair."

    invoke-static {p2, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "keywords"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pubmatic"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bidder"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-boolean p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->e:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const-string p1, "reward"

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBImpression"

    const-string v1, "Not able to generate Ext Json."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a:Ljava/util/Map;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->pmZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPosition()Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adPosition:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionJson()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isUseInternalBrowser()Z

    move-result v1

    const-string v2, "clickbrowser"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "displaymanager"

    const-string v2, "PubMatic_OpenWrap_SDK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displaymanagerver"

    const-string v2, "1.8.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tagid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "pmZoneId"

    invoke-direct {p0, v5, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getTestCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_2
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getTestCreativeId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "testcrid"

    invoke-direct {p0, v5, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_4
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "dctr"

    invoke-direct {p0, v2, v4}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "ext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isRequestSecureCreative()Z

    move-result v1

    const-string v2, "secure"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->b:Lcom/pubmatic/sdk/openwrap/core/POBBanner;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adPosition:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->b:Lcom/pubmatic/sdk/openwrap/core/POBBanner;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->getSupportedAPIs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->getRTBJson(Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "banner"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->c:Lcom/pubmatic/sdk/openwrap/core/POBVideo;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adPosition:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->setPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->c:Lcom/pubmatic/sdk/openwrap/core/POBVideo;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->getRTBJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-boolean v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->d:Z

    const-string v2, "instl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTestCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->testCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public isInterstitial()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->d:Z

    return v0
.end method

.method public setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adPosition:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-void
.end method

.method public setBanner(Lcom/pubmatic/sdk/openwrap/core/POBBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->b:Lcom/pubmatic/sdk/openwrap/core/POBBanner;

    return-void
.end method

.method public setCustomParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->a:Ljava/util/Map;

    return-void
.end method

.method public setInterstitial(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->d:Z

    return-void
.end method

.method public setPMZoneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->pmZoneId:Ljava/lang/String;

    return-void
.end method

.method public setTestCreativeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->testCreativeId:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Lcom/pubmatic/sdk/openwrap/core/POBVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->c:Lcom/pubmatic/sdk/openwrap/core/POBVideo;

    return-void
.end method
