.class public Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;
.super Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;
.source "SourceFile"


# instance fields
.field private mReady:Z

.field private mSkipOffset:I

.field private mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

.field private final mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

.field private mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mReady:Z

    .line 90
    new-instance v0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$2;-><init>(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)Lnet/pubnative/lite/sdk/vpaid/VideoAd;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    return-object p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mReady:Z

    return p0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mReady:Z

    return p1
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->hideInterstitialCloseButton()V

    .line 27
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "extra_pn_skip_offset"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mSkipOffset:I

    .line 29
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getVast()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->useMobileNetworkForCaching(Z)V

    .line 31
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->bindView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V

    .line 32
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V

    .line 33
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->setProgressBarVisible()V

    .line 35
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object p1

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->getZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;->remove(Ljava/lang/String;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;->getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v0

    iget v1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mSkipOffset:I

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setPublisherSkipSeconds(I)V

    .line 38
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setVideoCacheItem(Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V

    .line 41
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    new-instance v0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity$1;-><init>(Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 62
    invoke-super {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->destroy()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mReady:Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 79
    invoke-super {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->onPause()V

    .line 80
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mReady:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 71
    invoke-super {p0}, Lnet/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity;->onResume()V

    .line 72
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mReady:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/activity/VastInterstitialActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->resume()V

    :cond_0
    return-void
.end method

.method protected shouldShowContentInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
