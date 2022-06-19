.class abstract Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Waterfall$WaterfallItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VerizonSSPWaterfallItem"
.end annotation


# instance fields
.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Z

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/verizon/ads/CreativeInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->h:Ljava/lang/String;

    .line 516
    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->i:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "h"

    const-string v1, "w"

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->h:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string p1, "item"

    .line 482
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->g:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v2, "enableEnhancedAdControl"

    .line 483
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->i:Z

    const-string p1, "buyer"

    const/4 v2, 0x0

    .line 484
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->j:Ljava/lang/String;

    const-string p1, "price"

    .line 485
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->k:Ljava/lang/String;

    const-string p1, "ad_crid"

    .line 487
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ad_bidder_id"

    .line 488
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 491
    :cond_0
    new-instance v4, Lcom/verizon/ads/CreativeInfo;

    invoke-direct {v4, p1, v3}, Lcom/verizon/ads/CreativeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->m:Lcom/verizon/ads/CreativeInfo;

    :cond_1
    const-string p1, "adMetaData"

    .line 494
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "adSize"

    .line 496
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 498
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->l:Ljava/util/Map;

    .line 500
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->l:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 503
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string v0, "Error occurred when trying to parse ad size from response"

    invoke-virtual {p2, v0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    iput-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->l:Ljava/util/Map;

    :cond_2
    return-void

    .line 479
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jsonObject cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 535
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->g:Ljava/lang/String;

    const-string v2, "itemId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "buyer"

    .line 538
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "pru"

    .line 542
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->h:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->g:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->i:Z

    .line 526
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->j:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->k:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->m:Lcom/verizon/ads/CreativeInfo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "placementId: %s, itemId: %s, enhancedAdControlEnabled: %s, buyer: %s, pru: %s, creativeInfo: %s"

    .line 525
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
