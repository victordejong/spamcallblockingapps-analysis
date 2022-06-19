.class public Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# instance fields
.field private externalAdEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isCallappDisableRefresh:Z

.field private isDestroyed:Z

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private requestId:Ljava/lang/String;

.field private resultReported:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->resultReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$102(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->resultReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->externalAdEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-object p0
.end method

.method private loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;

    invoke-direct {v4, p0, p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;)V

    return-void
.end method

.method private loadInterstitial(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 2

    .line 131
    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->isDestroyed:Z

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 224
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 228
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    .locals 0

    .line 45
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 46
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->requestId:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result p5

    iput-boolean p5, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->isCallappDisableRefresh:Z

    .line 49
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p5

    if-eqz p5, :cond_3

    const/4 p6, 0x1

    if-eq p5, p6, :cond_2

    const/4 p6, 0x2

    if-eq p5, p6, :cond_1

    const/4 p6, 0x3

    if-eq p5, p6, :cond_3

    const/4 p2, 0x4

    if-eq p5, p2, :cond_0

    .line 97
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->loadInterstitial(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    return-void

    .line 54
    :cond_1
    sget-object p2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, p1, p3, p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 51
    :cond_2
    sget-object p2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, p1, p3, p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 58
    :cond_3
    new-instance p1, Landroid/os/HandlerThread;

    const-class p5, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-virtual {p5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 61
    new-instance p1, Landroid/os/Handler;

    iget-object p5, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->handler:Landroid/os/Handler;

    .line 63
    new-instance p5, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;

    invoke-direct {p5, p0, p4, p2, p3}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->externalAdEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void

    .line 205
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_3

    .line 187
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->isCallappDisableRefresh:Z

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void

    .line 189
    :cond_3
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_5

    .line 195
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->isCallappDisableRefresh:Z

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void

    .line 197
    :cond_5
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoPubBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 254
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
