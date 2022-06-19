.class Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;
.super Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdContentWaterfallItem"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1, p3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 678
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->a:Ljava/lang/String;

    const-string p1, "creativeid"

    const/4 p2, 0x0

    .line 679
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->b:Ljava/lang/String;

    const-string p1, "adnet"

    .line 680
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "value"

    .line 669
    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public fetch(Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
    .locals 4

    const/4 v0, 0x3

    .line 695
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing ad content playlist item ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x3

    if-nez p1, :cond_1

    .line 700
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v1, "Ad session cannot be null"

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 702
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad Session cannot be null"

    invoke-direct {v1, v2, v3, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    .line 705
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 706
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad content is empty"

    invoke-direct {v1, v2, v3, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/ErrorInfo;)V

    return-object p1

    .line 709
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 710
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->b:Ljava/lang/String;

    const-string v1, "creativeid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->c:Ljava/lang/String;

    const-string v1, "adnet"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->l:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->l:Ljava/util/Map;

    const-string v1, "ad_size"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->m:Lcom/verizon/ads/CreativeInfo;

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->m:Lcom/verizon/ads/CreativeInfo;

    const-string v1, "creative_info"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_4
    new-instance v0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v1, Lcom/verizon/ads/AdContent;

    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/verizon/ads/AdContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/AdContent;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 688
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-super {p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "AdContentWaterfallItem{creativeId: %s, adnet: %s, %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
