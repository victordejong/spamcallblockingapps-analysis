.class public Lio/bidmachine/nativead/SimpleNativeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/NativeListener;


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
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/SimpleNativeListener;->onAdClicked(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/nativead/NativeAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/SimpleNativeListener;->onAdExpired(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/nativead/NativeAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/SimpleNativeListener;->onAdImpression(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/nativead/NativeAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/SimpleNativeListener;->onAdLoadFailed(Lio/bidmachine/nativead/NativeAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/nativead/NativeAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/SimpleNativeListener;->onAdLoaded(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/nativead/NativeAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 7
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/SimpleNativeListener;->onAdShown(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/nativead/NativeAd;)V
    .locals 0

    return-void
.end method
