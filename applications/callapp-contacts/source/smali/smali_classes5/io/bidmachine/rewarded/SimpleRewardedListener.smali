.class public Lio/bidmachine/rewarded/SimpleRewardedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rewarded/RewardedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdClicked(Lio/bidmachine/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/rewarded/RewardedAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdClosed(Lio/bidmachine/rewarded/RewardedAd;Z)V

    return-void
.end method

.method public onAdClosed(Lio/bidmachine/rewarded/RewardedAd;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdExpired(Lio/bidmachine/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/rewarded/RewardedAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdImpression(Lio/bidmachine/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/rewarded/RewardedAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdLoadFailed(Lio/bidmachine/rewarded/RewardedAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/rewarded/RewardedAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdLoaded(Lio/bidmachine/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/rewarded/RewardedAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdRewarded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdRewarded(Lio/bidmachine/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdRewarded(Lio/bidmachine/rewarded/RewardedAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdShowFailed(Lio/bidmachine/rewarded/RewardedAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/rewarded/RewardedAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/SimpleRewardedListener;->onAdShown(Lio/bidmachine/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/rewarded/RewardedAd;)V
    .locals 0

    return-void
.end method
