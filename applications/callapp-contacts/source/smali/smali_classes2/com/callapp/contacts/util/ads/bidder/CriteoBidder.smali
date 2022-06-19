.class public Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;
    }
.end annotation


# instance fields
.field private adSize:Lcom/criteo/publisher/model/AdSize;

.field private adUnit:Lcom/criteo/publisher/model/AdUnit;

.field private bannerView:Lcom/criteo/publisher/CriteoBannerView;

.field private bidResponse:Lcom/criteo/publisher/Bid;

.field private cacheKey:Ljava/lang/String;

.field private clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private inlineVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private isDestroyed:Z

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field private nativeLoader:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bidResponse:Lcom/criteo/publisher/Bid;

    return-object p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/Bid;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bidResponse:Lcom/criteo/publisher/Bid;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bannerView:Lcom/criteo/publisher/CriteoBannerView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/CriteoBannerView;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bannerView:Lcom/criteo/publisher/CriteoBannerView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->inlineVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->inlineVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoErrorCode;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->getMoPubErrorCode(Lcom/criteo/publisher/CriteoErrorCode;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->cacheKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/Map;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/advancednative/CriteoNativeLoader;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeLoader:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/advancednative/CriteoNativeLoader;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeLoader:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/model/AdUnit;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adUnit:Lcom/criteo/publisher/model/AdUnit;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method private getMoPubErrorCode(Lcom/criteo/publisher/CriteoErrorCode;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1

    .line 367
    sget-object v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$6;->$SwitchMap$com$criteo$publisher$CriteoErrorCode:[I

    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoErrorCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 378
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p1

    .line 375
    :cond_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p1

    .line 373
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p1

    .line 371
    :cond_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p1

    .line 369
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p1
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

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_unit_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bidResponse:Lcom/criteo/publisher/Bid;

    invoke-virtual {v1}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 305
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 306
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 307
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 308
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handler:Landroid/os/Handler;

    .line 310
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAdSize(Lcom/callapp/contacts/util/ads/JSONBidder;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 403
    :cond_0
    new-instance p2, Lcom/criteo/publisher/model/InterstitialAdUnit;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/criteo/publisher/model/InterstitialAdUnit;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adUnit:Lcom/criteo/publisher/model/AdUnit;

    return v0

    .line 395
    :cond_1
    new-instance p2, Lcom/criteo/publisher/model/AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {p2, v1, v2}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adSize:Lcom/criteo/publisher/model/AdSize;

    .line 396
    sget-object p2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 397
    new-instance p2, Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adSize:Lcom/criteo/publisher/model/AdSize;

    invoke-direct {p2, p1, v1}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adUnit:Lcom/criteo/publisher/model/AdUnit;

    return v0

    .line 390
    :cond_2
    new-instance p2, Lcom/criteo/publisher/model/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {p2, v1, v2}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adSize:Lcom/criteo/publisher/model/AdSize;

    .line 391
    sget-object p2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 392
    new-instance p2, Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adSize:Lcom/criteo/publisher/model/AdSize;

    invoke-direct {p2, p1, v1}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adUnit:Lcom/criteo/publisher/model/AdUnit;

    return v0

    .line 400
    :cond_3
    new-instance p2, Lcom/criteo/publisher/model/NativeAdUnit;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/criteo/publisher/model/NativeAdUnit;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adUnit:Lcom/criteo/publisher/model/AdUnit;

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->isDestroyed:Z

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    iput-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->cacheKey:Ljava/lang/String;

    .line 430
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adSize:Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    .locals 0

    .line 90
    invoke-static {}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_0

    .line 91
    new-instance p5, Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    invoke-direct {p5}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;-><init>()V

    .line 92
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p5, p1, p6}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_1

    .line 96
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p5

    invoke-direct {p0, p2, p5}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->setAdSize(Lcom/callapp/contacts/util/ads/JSONBidder;I)Z

    move-result p5

    if-nez p5, :cond_2

    .line 102
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_2
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->context:Landroid/content/Context;

    .line 107
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->requestId:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 109
    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 112
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide p4

    const-wide/16 p6, 0x0

    cmp-long p1, p4, p6

    if-lez p1, :cond_3

    .line 113
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class p4, Lcom/criteo/publisher/Bid;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    .line 1215
    invoke-virtual {p1, p4, p5, p6}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    .line 113
    check-cast p1, Lcom/criteo/publisher/Bid;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bidResponse:Lcom/criteo/publisher/Bid;

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->bidResponse:Lcom/criteo/publisher/Bid;

    if-nez p1, :cond_4

    .line 116
    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object p1

    iget-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->adUnit:Lcom/criteo/publisher/model/AdUnit;

    new-instance p5, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;

    invoke-direct {p5, p0, p2, p3}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    invoke-virtual {p1, p4, p5}, Lcom/criteo/publisher/Criteo;->loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V

    return-void

    .line 136
    :cond_4
    invoke-virtual {p1}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 144
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/facebook/biddingkit/c/b;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    :goto_0
    return-void

    .line 149
    :cond_2
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void

    .line 152
    :cond_3
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 174
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 177
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->handler:Landroid/os/Handler;

    .line 179
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CriteoBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 469
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
