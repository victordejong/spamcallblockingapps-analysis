.class public Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# instance fields
.field private final clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private context:Landroid/content/Context;

.field private facebookBanner:Lcom/facebook/ads/AdView;

.field private facebookBidResponse:Lcom/facebook/biddingkit/c/b;

.field private fbAdBidFormat:Lcom/facebook/biddingkit/c/d;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isDestroyed:Z

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/biddingkit/c/b;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    return-object p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/facebook/biddingkit/c/b;)Lcom/facebook/biddingkit/c/b;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/util/Map;
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBanner:Lcom/facebook/ads/AdView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdView;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBanner:Lcom/facebook/ads/AdView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private getAdBidFormat(I)Lcom/facebook/biddingkit/c/d;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 366
    :cond_0
    sget-object p1, Lcom/facebook/biddingkit/c/d;->INTERSTITIAL:Lcom/facebook/biddingkit/c/d;

    goto :goto_0

    .line 363
    :cond_1
    sget-object p1, Lcom/facebook/biddingkit/c/d;->NATIVE_BANNER:Lcom/facebook/biddingkit/c/d;

    goto :goto_0

    .line 359
    :cond_2
    sget-object p1, Lcom/facebook/biddingkit/c/d;->BANNER_HEIGHT_250:Lcom/facebook/biddingkit/c/d;

    .line 360
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    goto :goto_0

    .line 355
    :cond_3
    sget-object p1, Lcom/facebook/biddingkit/c/d;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/c/d;

    .line 356
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    goto :goto_0

    .line 352
    :cond_4
    sget-object p1, Lcom/facebook/biddingkit/c/d;->NATIVE:Lcom/facebook/biddingkit/c/d;

    :goto_0
    return-object p1
.end method

.method private getServerExtras()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    invoke-interface {v1}, Lcom/facebook/biddingkit/c/b;->getPayload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    invoke-interface {v1}, Lcom/facebook/biddingkit/c/b;->getPrice()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->fbAdBidFormat:Lcom/facebook/biddingkit/c/d;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/c/d;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/mopub/mobileads/FacebookBanner;->calculateAdSize(I)Lcom/facebook/ads/AdSize;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/facebook/ads/AdView;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBanner:Lcom/facebook/ads/AdView;

    .line 228
    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    .line 229
    invoke-interface {v0, v1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBanner:Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    invoke-interface {v1}, Lcom/facebook/biddingkit/c/b;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void
.end method

.method private loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 293
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 294
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 295
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 296
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->handler:Landroid/os/Handler;

    .line 298
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 4

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v1

    if-nez v1, :cond_0

    .line 197
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "has_main_image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    new-instance v1, Lcom/mopub/nativeads/FacebookNative;

    invoke-direct {v1}, Lcom/mopub/nativeads/FacebookNative;-><init>()V

    .line 202
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->context:Landroid/content/Context;

    new-instance v3, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$3;

    invoke-direct {v3, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    .line 220
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p1

    .line 202
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/mopub/nativeads/FacebookNative;->loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->isDestroyed:Z

    .line 391
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 392
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 396
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;-><init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->fbAdBidFormat:Lcom/facebook/biddingkit/c/d;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/c/d;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_0

    .line 100
    new-instance p5, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {p5}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    .line 101
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p5, p1, p6}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 104
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_1

    .line 105
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->context:Landroid/content/Context;

    .line 110
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->requestId:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 112
    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 115
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p4

    invoke-direct {p0, p4}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->getAdBidFormat(I)Lcom/facebook/biddingkit/c/d;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->fbAdBidFormat:Lcom/facebook/biddingkit/c/d;

    .line 117
    new-instance p4, Lcom/facebook/biddingkit/facebook/bidder/b$a;

    const p5, 0x7f12032b

    .line 119
    invoke-static {p5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 120
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->fbAdBidFormat:Lcom/facebook/biddingkit/c/d;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p5, p6, p7, p1}, Lcom/facebook/biddingkit/facebook/bidder/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/c/d;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1326
    iput-boolean p1, p4, Lcom/facebook/biddingkit/facebook/bidder/b$a;->j:Z

    .line 1327
    new-instance p1, Lcom/facebook/biddingkit/facebook/bidder/b;

    const/4 p5, 0x0

    invoke-direct {p1, p4, p5}, Lcom/facebook/biddingkit/facebook/bidder/b;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/b$1;)V

    .line 123
    check-cast p1, Lcom/facebook/biddingkit/facebook/bidder/b;

    .line 125
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide p4

    const-wide/16 p6, 0x0

    cmp-long v0, p4, p6

    if-lez v0, :cond_2

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p4

    const-class p5, Lcom/facebook/biddingkit/c/b;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object p6

    const/4 p7, 0x0

    .line 2215
    invoke-virtual {p4, p5, p6, p7}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p4

    .line 126
    check-cast p4, Lcom/facebook/biddingkit/c/b;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    .line 128
    :cond_2
    iget-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    if-nez p4, :cond_3

    .line 129
    new-instance p4, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    .line 3160
    sget-object p2, Lcom/facebook/biddingkit/e/a;->a:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/facebook/biddingkit/facebook/bidder/b$1;

    invoke-direct {p3, p1, p4}, Lcom/facebook/biddingkit/facebook/bidder/b$1;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b;Lcom/facebook/biddingkit/a/a;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 155
    :cond_3
    invoke-interface {p4}, Lcom/facebook/biddingkit/c/b;->getPrice()D

    move-result-wide p1

    const-wide/high16 p4, 0x4059000000000000L    # 100.0

    div-double/2addr p1, p4

    .line 156
    invoke-interface {p3, p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 162
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "facebookAudienceNetworkBiddingKitWaitForNotifyWin"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    invoke-interface {v0}, Lcom/facebook/biddingkit/c/b;->notifyWin()V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)V

    .line 171
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 175
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/facebook/biddingkit/c/b;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    :goto_1
    return-void

    .line 185
    :cond_3
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void

    .line 181
    :cond_4
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public notifyLoss()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->facebookBidResponse:Lcom/facebook/biddingkit/c/b;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/facebook/biddingkit/c/b;->notifyLoss()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 428
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
