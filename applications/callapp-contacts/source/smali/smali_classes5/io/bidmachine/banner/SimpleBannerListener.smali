.class public Lio/bidmachine/banner/SimpleBannerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/banner/BannerListener;


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
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/SimpleBannerListener;->onAdClicked(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/banner/BannerView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/SimpleBannerListener;->onAdExpired(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/banner/BannerView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/SimpleBannerListener;->onAdImpression(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/banner/BannerView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/banner/SimpleBannerListener;->onAdLoadFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/SimpleBannerListener;->onAdLoaded(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/banner/BannerView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/SimpleBannerListener;->onAdShown(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/banner/BannerView;)V
    .locals 0

    return-void
.end method
