.class public Lcom/pubmatic/sdk/openwrap/core/POBBanner;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:[Lcom/pubmatic/sdk/common/POBAdSize;

.field private b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;


# direct methods
.method public varargs constructor <init>([Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->UNKNOWN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->a:[Lcom/pubmatic/sdk/common/POBAdSize;

    return-void
.end method


# virtual methods
.method public getRTBJson(Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->getValue()I

    move-result v1

    const-string v2, "pos"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->a:[Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {p0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->getSizeArray([Lcom/pubmatic/sdk/common/POBAdSize;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "api"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public varargs getSizeArray([Lcom/pubmatic/sdk/common/POBAdSize;)Lorg/json/JSONArray;
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "w"

    :try_start_0
    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdWidth()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "h"

    :try_start_1
    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdHeight()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "POBBanner"

    const-string v6, "Error on formatting width/height in ad request."

    invoke-static {v5, v6, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSupportedAPIs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->MRAID2:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->MRAID3:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getHtmlMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->OMSDK:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-void
.end method

.method public varargs setAdSizes([Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->a:[Lcom/pubmatic/sdk/common/POBAdSize;

    return-void
.end method
