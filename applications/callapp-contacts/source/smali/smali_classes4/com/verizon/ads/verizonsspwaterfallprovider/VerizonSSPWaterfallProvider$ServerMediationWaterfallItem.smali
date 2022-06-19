.class Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;
.super Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerMediationWaterfallItem"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 566
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "req"

    .line 568
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "url"

    .line 569
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->a:Ljava/lang/String;

    const-string/jumbo v0, "validRegex"

    const/4 v1, 0x0

    .line 572
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->b:Ljava/lang/String;

    const-string v0, "postBody"

    .line 573
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->c:Ljava/lang/String;

    const-string v0, "postType"

    .line 574
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->d:Ljava/lang/String;

    const-string p1, "cridHeaderField"

    .line 575
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->e:Ljava/lang/String;

    const-string p1, "adnet"

    .line 576
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetch(Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
    .locals 5

    const/4 v0, 0x3

    .line 593
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing server mediation playlist item ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    .line 598
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Ad session cannot be null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 600
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x3

    const-string v3, "Ad Session cannot be null"

    invoke-direct {v0, v1, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    :cond_1
    const/16 p1, 0x2710

    const-string v0, "com.verizon.ads.verizonssp"

    const-string v1, "serverMediationRequestTimeout"

    .line 603
    invoke-static {v0, v1, p1}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 606
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1

    .line 613
    :goto_0
    iget v0, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v1, 0xc8

    const-string v2, ">"

    if-eq v0, v1, :cond_3

    .line 614
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to retrieve content for server mediation playlist item, placement ID <"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    invoke-static {p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/utils/HttpUtils$Response;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object v0

    .line 619
    :cond_3
    iget-object v0, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 620
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Ad content is empty for server mediation playlist item, placement ID <"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 622
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad content is empty"

    invoke-direct {v0, v2, v3, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    .line 625
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(?s)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> and content <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 630
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No ad response"

    invoke-direct {v0, v2, v3, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    .line 633
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 634
    iget-object v1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->adMetadata:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 635
    iget-object v1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->adMetadata:Ljava/util/Map;

    const-string v2, "response_headers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_6
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 639
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->e:Ljava/lang/String;

    const-string v2, "CREATIVE_ID_HEADER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_7
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->l:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 643
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->l:Ljava/util/Map;

    const-string v2, "ad_size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_8
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->m:Lcom/verizon/ads/CreativeInfo;

    if-eqz v1, :cond_9

    .line 647
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->m:Lcom/verizon/ads/CreativeInfo;

    const-string v2, "creative_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    .line 654
    :cond_a
    new-instance v1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v2, Lcom/verizon/ads/AdContent;

    iget-object p1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lcom/verizon/ads/AdContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/AdContent;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 584
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->e:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;->f:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 586
    invoke-super {p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ServerMediationWaterfallItem{url: %s, validateRegEx: %s, postContentType: %s, cridHeaderField: %s, adNet: %s, %s}"

    .line 584
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
