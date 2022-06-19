.class public Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# instance fields
.field private auctionResult:Lio/bidmachine/models/AuctionResult;

.field private bannerRequest:Lio/bidmachine/banner/BannerRequest;

.field private bannerView:Lio/bidmachine/banner/BannerView;

.field public cacheKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private interstitialRequest:Lio/bidmachine/interstitial/InterstitialRequest;

.field private isDestroyed:Z

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field private nativeRequest:Lio/bidmachine/nativead/NativeRequest;

.field private price:D

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/models/AuctionResult;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->saveToMemCache(Lio/bidmachine/models/AuctionResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/banner/BannerRequest;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$102(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/banner/BannerRequest;)Lio/bidmachine/banner/BannerRequest;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Ljava/util/Map;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/banner/BannerView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerView:Lio/bidmachine/banner/BannerView;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/banner/BannerView;)Lio/bidmachine/banner/BannerView;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerView:Lio/bidmachine/banner/BannerView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->price:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;D)D
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->price:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeRequest:Lio/bidmachine/nativead/NativeRequest;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/nativead/NativeRequest;)Lio/bidmachine/nativead/NativeRequest;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeRequest:Lio/bidmachine/nativead/NativeRequest;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->interstitialRequest:Lio/bidmachine/interstitial/InterstitialRequest;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/interstitial/InterstitialRequest;)Lio/bidmachine/interstitial/InterstitialRequest;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->interstitialRequest:Lio/bidmachine/interstitial/InterstitialRequest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->requestId:Ljava/lang/String;

    return-object p0
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

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com_mopub_ad_unit_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->price:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lio/bidmachine/banner/BannerView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/banner/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerView:Lio/bidmachine/banner/BannerView;

    .line 267
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/banner/BannerView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    .line 308
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerView:Lio/bidmachine/banner/BannerView;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    .line 309
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {p1}, Lio/bidmachine/banner/BannerRequest;->notifyMediationWin()V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 311
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 316
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 317
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 318
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 319
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handler:Landroid/os/Handler;

    .line 321
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$6;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 373
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 374
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 375
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 376
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handler:Landroid/os/Handler;

    .line 378
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveToMemCache(Lio/bidmachine/models/AuctionResult;)V
    .locals 11

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 234
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v5

    const-class v6, Lio/bidmachine/models/AuctionResult;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    long-to-int v9, v0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 236
    const-class v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->isDestroyed:Z

    .line 439
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    sget-object v0, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    iput-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->cacheKey:Ljava/lang/String;

    .line 449
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdSize()Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->toInt()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    .locals 4

    .line 85
    invoke-static {}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;-><init>()V

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 97
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->requestId:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 100
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 101
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class p4, Lio/bidmachine/models/AuctionResult;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object p7

    const/4 v0, 0x0

    .line 1215
    invoke-virtual {p1, p4, p7, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    .line 101
    check-cast p1, Lio/bidmachine/models/AuctionResult;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->auctionResult:Lio/bidmachine/models/AuctionResult;

    if-nez p1, :cond_b

    .line 104
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    .line 222
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 192
    :cond_3
    new-instance p1, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    invoke-direct {p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;-><init>()V

    sget-object p2, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 193
    invoke-virtual {p1, p2}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$4;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    .line 194
    invoke-virtual {p1, p2}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    cmp-long p2, p5, v2

    if-lez p2, :cond_4

    long-to-int p2, p5

    .line 217
    invoke-virtual {p1, p2}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setLoadingTimeOut(I)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    .line 219
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialRequest;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/interstitial/InterstitialRequest;->request(Landroid/content/Context;)V

    return-void

    .line 134
    :cond_5
    new-instance p1, Lio/bidmachine/banner/BannerRequest$Builder;

    invoke-direct {p1}, Lio/bidmachine/banner/BannerRequest$Builder;-><init>()V

    sget-object p2, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest$Builder;->setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest$Builder;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest$Builder;

    cmp-long p2, p5, v2

    if-lez p2, :cond_6

    long-to-int p2, p5

    .line 157
    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest$Builder;->setLoadingTimeOut(I)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest$Builder;

    .line 159
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/banner/BannerRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest;->request(Landroid/content/Context;)V

    return-void

    .line 106
    :cond_7
    new-instance p1, Lio/bidmachine/banner/BannerRequest$Builder;

    invoke-direct {p1}, Lio/bidmachine/banner/BannerRequest$Builder;-><init>()V

    sget-object p2, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest$Builder;->setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$1;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest$Builder;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest$Builder;

    cmp-long p2, p5, v2

    if-lez p2, :cond_8

    long-to-int p2, p5

    .line 129
    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest$Builder;->setLoadingTimeOut(I)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest$Builder;

    .line 131
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/banner/BannerRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerRequest;->request(Landroid/content/Context;)V

    return-void

    .line 162
    :cond_9
    new-instance p1, Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-direct {p1}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>()V

    new-instance p2, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$3;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    .line 164
    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/NativeRequest$Builder;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/NativeRequest$Builder;

    cmp-long p2, p5, v2

    if-lez p2, :cond_a

    long-to-int p2, p5

    .line 187
    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/NativeRequest$Builder;->setLoadingTimeOut(I)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 189
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/NativeRequest;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/NativeRequest;->request(Landroid/content/Context;)V

    return-void

    .line 226
    :cond_b
    invoke-interface {p1}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->price:D

    .line 227
    invoke-interface {p3, p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 244
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lio/bidmachine/models/AuctionResult;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    :goto_0
    return-void

    .line 251
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 248
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 254
    :cond_4
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public notifyLoss()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->bannerRequest:Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->notifyMediationLoss()V

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->interstitialRequest:Lio/bidmachine/interstitial/InterstitialRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->isExpired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->interstitialRequest:Lio/bidmachine/interstitial/InterstitialRequest;

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->notifyMediationLoss()V

    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeRequest:Lio/bidmachine/nativead/NativeRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->isExpired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeRequest:Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->notifyMediationLoss()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BidMachineBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 508
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 509
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
