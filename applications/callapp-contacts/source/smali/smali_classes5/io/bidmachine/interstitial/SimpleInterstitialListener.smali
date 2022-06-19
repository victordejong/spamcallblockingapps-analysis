.class public Lio/bidmachine/interstitial/SimpleInterstitialListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/interstitial/InterstitialListener;


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
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdClicked(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdClosed(Lio/bidmachine/interstitial/InterstitialAd;Z)V

    return-void
.end method

.method public onAdClosed(Lio/bidmachine/interstitial/InterstitialAd;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdExpired(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdImpression(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdLoadFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdLoaded(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdShowFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/SimpleInterstitialListener;->onAdShown(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 0

    return-void
.end method
