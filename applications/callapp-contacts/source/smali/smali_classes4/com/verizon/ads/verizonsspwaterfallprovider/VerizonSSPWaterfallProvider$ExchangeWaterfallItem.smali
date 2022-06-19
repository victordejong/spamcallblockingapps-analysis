.class Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;
.super Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExchangeWaterfallItem"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 738
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "req"

    .line 740
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "url"

    .line 741
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->a:Ljava/lang/String;

    const-string p2, "postBody"

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->b:Ljava/lang/String;

    const-string p2, "postType"

    .line 745
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetch(Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
    .locals 7

    const/4 v0, 0x3

    .line 761
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing exchange mediation playlist item ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x3

    if-nez p1, :cond_1

    .line 766
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Ad session cannot be null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 768
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad Session cannot be null"

    invoke-direct {v0, v2, v3, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    :cond_1
    const/16 p1, 0x2710

    const-string v2, "com.verizon.ads.verizonssp"

    const-string v3, "exchangeRequestTimeout"

    .line 771
    invoke-static {v2, v3, p1}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 774
    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 775
    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, p1}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1

    goto :goto_0

    .line 778
    :cond_2
    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1

    .line 781
    :goto_0
    iget v2, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v3, 0xc8

    const-string v4, ">"

    if-eq v2, v3, :cond_3

    .line 782
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to retrieve content for exchange mediation playlist item, placement ID <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 784
    new-instance v0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    invoke-static {p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/utils/HttpUtils$Response;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object v0

    .line 787
    :cond_3
    iget-object v2, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 788
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad content is empty for exchange mediation playlist item, placement ID <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 790
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "No ad response"

    invoke-direct {v0, v1, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    .line 796
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ad"

    .line 797
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_buyer"

    const/4 v5, 0x0

    .line 798
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->j:Ljava/lang/String;

    const-string v4, "ad_pru"

    .line 799
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->k:Ljava/lang/String;

    const-string v4, "ad_crid"

    .line 800
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ad_bidder_id"

    .line 801
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    new-instance v5, Lcom/verizon/ads/CreativeInfo;

    invoke-direct {v5, v4, v2}, Lcom/verizon/ads/CreativeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 805
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v2, "Exchange waterfall item creative info: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 808
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 809
    iget-object v2, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->adMetadata:Ljava/util/Map;

    if-eqz v2, :cond_6

    const-string v2, "response_headers"

    .line 810
    iget-object p1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->adMetadata:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p1, "creative_info"

    .line 813
    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->l:Ljava/util/Map;

    if-eqz p1, :cond_7

    const-string p1, "ad_size"

    .line 816
    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->l:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    :cond_7
    new-instance p1, Lcom/verizon/ads/AdContent;

    invoke-direct {p1, v3, v0}, Lcom/verizon/ads/AdContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 821
    new-instance v0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    invoke-direct {v0, p1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/AdContent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 824
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v2, "Error occurred when trying to parse ad content from exchange response"

    invoke-virtual {v0, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error parsing ad content"

    invoke-direct {v0, v2, v3, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 753
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 754
    invoke-super {p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ExchangeWaterfallItem{url: %s, postContentType: %s, %s}"

    .line 753
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
