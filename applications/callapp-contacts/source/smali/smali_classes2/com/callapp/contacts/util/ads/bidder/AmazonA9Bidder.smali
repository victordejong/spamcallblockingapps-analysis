.class public Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# instance fields
.field private adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

.field private final clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private context:Landroid/content/Context;

.field private dtbAdSize:Lcom/amazon/device/ads/DTBAdSize;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private inlineVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private isDestroyed:Z

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private price:D

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->price:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;D)D
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->price:D

    return-wide p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/amazon/device/ads/DTBAdResponse;)D
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getPrice(Lcom/amazon/device/ads/DTBAdResponse;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->inlineVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->inlineVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/util/Map;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

    return-object p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/amazon/device/ads/DTBAdResponse;)Lcom/amazon/device/ads/DTBAdResponse;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

    return-object p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->dtbAdSize:Lcom/amazon/device/ads/DTBAdSize;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private getDTBAdSize(ILjava/lang/String;)Lcom/amazon/device/ads/DTBAdSize;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize;

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    new-instance p1, Lcom/amazon/device/ads/DTBAdSize;

    const/16 v0, 0x12c

    const/16 v1, 0xfa

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/device/ads/DTBAdSize;-><init>(IILjava/lang/String;)V

    .line 379
    sget-object p2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    goto :goto_0

    .line 374
    :cond_2
    new-instance p1, Lcom/amazon/device/ads/DTBAdSize;

    const/16 v0, 0x140

    const/16 v1, 0x32

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/device/ads/DTBAdSize;-><init>(IILjava/lang/String;)V

    .line 375
    sget-object p2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    :goto_0
    return-object p1
.end method

.method public static getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdResponse;->a()Ljava/util/Map;

    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "amznp"

    .line 84
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 85
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "amazona9"

    return-object p0
.end method

.method private getPrice(Lcom/amazon/device/ads/DTBAdResponse;)D
    .locals 3

    .line 392
    new-instance v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;-><init>()V

    .line 393
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->c()Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/DTBAdSize;

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/DTBAdResponse;->a(Lcom/amazon/device/ads/DTBAdSize;)Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->getPricePoints(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getServerExtras()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "amazona9_app_id"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getMoPubAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mopub_ad_unit_for_html"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getDfpAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dfp_ad_unit_for_html"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slot_uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdResponse;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->price:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 166
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/DTBAdResponse;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 169
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getMoPubAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "amazonFromDfpEnabled"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getDfpAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getMoPubAdUnitId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_2

    .line 174
    invoke-direct {p0, p1, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadBannerAdFromKeywordsDFP(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadBannerAdFromKeywordsMoPub(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;)V

    return-void
.end method

.method private loadBannerAdFromKeywordsDFP(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;)V
    .locals 7

    .line 225
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->price:D

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "Ad"

    const-string v2, "loading Amazon ad from DFP"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->dtbAdSize:Lcom/amazon/device/ads/DTBAdSize;

    .line 2046
    iget v0, v0, Lcom/amazon/device/ads/DTBAdSize;->b:I

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_0

    .line 227
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 228
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadBannerAdFromKeywordsMoPub(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;)V
    .locals 2

    .line 181
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 310
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/DTBAdResponse;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 313
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->handlerThread:Landroid/os/HandlerThread;

    .line 314
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 316
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->handler:Landroid/os/Handler;

    .line 318
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->isDestroyed:Z

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 412
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 416
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->dtbAdSize:Lcom/amazon/device/ads/DTBAdSize;

    .line 3046
    iget v0, v0, Lcom/amazon/device/ads/DTBAdSize;->b:I

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->isInitialized()Z

    move-result p4

    if-nez p4, :cond_0

    .line 96
    new-instance p4, Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    invoke-direct {p4}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;-><init>()V

    .line 97
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4, p1, p5}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->isInitialized()Z

    move-result p4

    if-nez p4, :cond_1

    .line 101
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 107
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->requestId:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p1

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getDTBAdSize(ILjava/lang/String;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->dtbAdSize:Lcom/amazon/device/ads/DTBAdSize;

    if-nez p1, :cond_2

    .line 111
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_2
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide p4

    const-wide/16 p6, 0x0

    const/4 p1, 0x0

    cmp-long v0, p4, p6

    if-lez v0, :cond_3

    .line 116
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p4

    const-class p5, Lcom/amazon/device/ads/DTBAdResponse;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object p6

    .line 1215
    invoke-virtual {p4, p5, p6, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p4

    .line 116
    check-cast p4, Lcom/amazon/device/ads/DTBAdResponse;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

    .line 118
    :cond_3
    iget-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

    if-nez p4, :cond_4

    .line 119
    new-instance p4, Lcom/amazon/device/ads/DTBAdRequest;

    invoke-direct {p4}, Lcom/amazon/device/ads/DTBAdRequest;-><init>()V

    const/4 p5, 0x1

    new-array p5, p5, [Lcom/amazon/device/ads/DTBAdSize;

    .line 120
    iget-object p6, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->dtbAdSize:Lcom/amazon/device/ads/DTBAdSize;

    aput-object p6, p5, p1

    invoke-virtual {p4, p5}, Lcom/amazon/device/ads/DTBAdRequest;->a([Lcom/amazon/device/ads/DTBAdSize;)V

    .line 121
    new-instance p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/JSONBidder;)V

    invoke-virtual {p4, p1}, Lcom/amazon/device/ads/DTBAdRequest;->a(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void

    .line 143
    :cond_4
    const-class p1, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Loading bid from cache - placementId: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->amazonA9BidResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getPrice(Lcom/amazon/device/ads/DTBAdResponse;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->price:D

    .line 146
    invoke-interface {p3, p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmazonA9Bidder{moPubView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
