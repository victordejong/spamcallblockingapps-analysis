.class public Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# instance fields
.field private ad:Lnet/pubnative/lite/sdk/models/Ad;

.field private adPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

.field private cacheKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isDestroyed:Z

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field private price:D

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lnet/pubnative/lite/sdk/models/Ad;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    return-object p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/models/Ad;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/models/Ad;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->extractAndSetPriceAndNotifyListener(Lnet/pubnative/lite/sdk/models/Ad;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Ljava/util/Map;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->price:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->adPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/presenter/AdPresenter;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->adPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->cacheKey:Ljava/lang/String;

    return-object p1
.end method

.method private extractAndSetPriceAndNotifyListener(Lnet/pubnative/lite/sdk/models/Ad;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 155
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode;->TWO_DECIMALS:Lnet/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/PrebidUtils;->getPrebidKeywords(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 156
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->price:D

    .line 159
    invoke-interface {p2, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method private getRequestManager(I)Lnet/pubnative/lite/sdk/api/RequestManager;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 183
    :cond_0
    new-instance p1, Lnet/pubnative/lite/sdk/api/InterstitialRequestManager;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/api/InterstitialRequestManager;-><init>()V

    return-object p1

    .line 179
    :cond_1
    new-instance p1, Lnet/pubnative/lite/sdk/api/MRectRequestManager;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/api/MRectRequestManager;-><init>()V

    return-object p1

    .line 177
    :cond_2
    new-instance p1, Lnet/pubnative/lite/sdk/api/BannerRequestManager;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/api/BannerRequestManager;-><init>()V

    return-object p1

    .line 181
    :cond_3
    new-instance p1, Lnet/pubnative/lite/sdk/request/NativeRequestManager;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/request/NativeRequestManager;-><init>()V

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

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pn_zone_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->price:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initHandlerIfNeeded()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 168
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 170
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private loadBannerAd(Lnet/pubnative/lite/sdk/presenter/PresenterFactory;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    invoke-direct {v1, p0, p3, p2}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {p1, v0, v1}, Lnet/pubnative/lite/sdk/presenter/PresenterFactory;->createPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->adPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    if-eqz p1, :cond_0

    .line 246
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1, p3}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 258
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 259
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 261
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handler:Landroid/os/Handler;

    .line 263
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$5;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 4

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    new-instance v1, Lcom/mopub/nativeads/PubNativeNative;

    invoke-direct {v1}, Lcom/mopub/nativeads/PubNativeNative;-><init>()V

    .line 312
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->initHandlerIfNeeded()V

    .line 313
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$6;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/nativeads/PubNativeNative;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->isDestroyed:Z

    .line 365
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iput-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->cacheKey:Ljava/lang/String;

    .line 375
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 356
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
    .locals 0

    .line 82
    invoke-static {}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_0

    .line 83
    new-instance p5, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-direct {p5}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;-><init>()V

    .line 84
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p5, p1, p6}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 87
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_1

    .line 88
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->context:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 94
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->requestId:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 99
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide p4

    const-wide/16 p6, 0x0

    cmp-long p1, p4, p6

    if-lez p1, :cond_2

    .line 100
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class p4, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    .line 1215
    invoke-virtual {p1, p4, p5, p6}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    .line 100
    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->ad:Lnet/pubnative/lite/sdk/models/Ad;

    if-nez p1, :cond_4

    .line 103
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->getRequestManager(I)Lnet/pubnative/lite/sdk/api/RequestManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/pubnative/lite/sdk/api/RequestManager;->setZoneId(Ljava/lang/String;)V

    .line 106
    new-instance p4, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    .line 126
    invoke-virtual {p1, p4}, Lnet/pubnative/lite/sdk/api/RequestManager;->setRequestListener(Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V

    .line 128
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->initHandlerIfNeeded()V

    .line 130
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;

    invoke-direct {p3, p0, p1, p4}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/api/RequestManager;Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 147
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->extractAndSetPriceAndNotifyListener(Lnet/pubnative/lite/sdk/models/Ad;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 192
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lnet/pubnative/lite/sdk/models/Ad;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

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

    .line 206
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    :goto_0
    return-void

    .line 200
    :cond_2
    new-instance v0, Lnet/pubnative/lite/sdk/mrect/presenter/MRectPresenterFactory;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/mrect/presenter/MRectPresenterFactory;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, v0, p1, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadBannerAd(Lnet/pubnative/lite/sdk/presenter/PresenterFactory;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 197
    :cond_3
    new-instance v0, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, v0, p1, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadBannerAd(Lnet/pubnative/lite/sdk/presenter/PresenterFactory;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 203
    :cond_4
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadNativeAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PunNativeBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 406
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
