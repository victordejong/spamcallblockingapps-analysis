.class public Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;
.super Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;
.source "SourceFile"


# instance fields
.field private mFinished:Z

.field private mReady:Z

.field private mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

.field private final mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

.field private mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mReady:Z

    .line 38
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mFinished:Z

    .line 110
    new-instance v0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity$2;-><init>(Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;)Lnet/pubnative/lite/sdk/vpaid/VideoAd;
    .locals 0

    .line 36
    iget-object p0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    return-object p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mReady:Z

    return p0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mReady:Z

    return p1
.end method

.method static synthetic access$202(Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mFinished:Z

    return p1
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mFinished:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/Ad;->getVast()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setRewarded(Z)V

    .line 50
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->bindView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V

    .line 51
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAdListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V

    .line 52
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->setProgressBarVisible()V

    .line 54
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    move-result-object p1

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->getZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;->remove(Ljava/lang/String;)Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setVideoCacheItem(Lnet/pubnative/lite/sdk/vpaid/VideoAdCacheItem;)V

    .line 59
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoPlayer:Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    new-instance v0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity$1;-><init>(Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 80
    invoke-super {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->destroy()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mReady:Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 97
    invoke-super {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->onPause()V

    .line 98
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mReady:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Lnet/pubnative/lite/sdk/rewarded/activity/HyBidRewardedActivity;->onResume()V

    .line 90
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mReady:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/activity/VastRewardedActivity;->mVideoAd:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->resume()V

    :cond_0
    return-void
.end method
