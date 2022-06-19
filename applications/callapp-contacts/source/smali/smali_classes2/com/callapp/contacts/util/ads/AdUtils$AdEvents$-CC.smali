.class public final synthetic Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    return-void
.end method

.method public static $default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    return-void
.end method

.method public static $default$onBannerAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 0

    return-void
.end method

.method public static $default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    return-void
.end method

.method public static $default$onInterstitialDismissed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    return-void
.end method

.method public static $default$onInterstitialFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p0, "_this"    # Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    :cond_0
    return-void
.end method

.method public static $default$onInterstitialLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    return-void
.end method

.method public static $default$onInterstitialShown(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    return-void
.end method

.method public static $default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    return-void
.end method

.method public static $default$onNativeAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 0

    return-void
.end method
