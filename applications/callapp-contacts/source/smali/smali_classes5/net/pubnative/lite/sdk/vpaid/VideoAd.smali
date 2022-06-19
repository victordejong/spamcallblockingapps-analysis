.class public Lnet/pubnative/lite/sdk/vpaid/VideoAd;
.super Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VideoAd"


# instance fields
.field private volatile mBannerView:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->mBannerView:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    return-object p0
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->onBannerShow()V

    return-void
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->onBannerHide()V

    return-void
.end method

.method private onBannerHide()V
    .locals 2

    .line 112
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad disappeared from screen"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setReady()V

    const/16 v0, 0xc8

    .line 114
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setAdState(I)V

    .line 115
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method private onBannerShow()V
    .locals 2

    .line 102
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad appeared on screen"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bind view (visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->mBannerView:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    return-void

    .line 42
    :cond_0
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Bind view is null"

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic clearCache()V
    .locals 0

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->clearCache()V

    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->destroy()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 133
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method getAdFormat()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method getAdSpotDimensions()Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;
    .locals 3

    .line 31
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->mBannerView:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->mBannerView:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->mBannerView:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic isLoading()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->isLoading()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReady()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->isReady()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRewarded()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->isRewarded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->isShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic load()V
    .locals 0

    .line 14
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->load()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 154
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->resume()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V

    return-void
.end method

.method public bridge synthetic setDebugMode(Z)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setDebugMode(Z)V

    return-void
.end method

.method public bridge synthetic setRewarded(Z)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setRewarded(Z)V

    return-void
.end method

.method public bridge synthetic setVideoCacheItem(Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setVideoCacheItem(Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 47
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic useMobileNetworkForCaching(Z)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->useMobileNetworkForCaching(Z)V

    return-void
.end method
