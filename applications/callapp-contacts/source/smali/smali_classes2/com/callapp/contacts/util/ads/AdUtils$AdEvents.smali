.class public interface abstract Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdEvents"
.end annotation


# virtual methods
.method public abstract onAdClick()V
.end method

.method public abstract onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
.end method

.method public abstract onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
.end method

.method public abstract onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
.end method

.method public abstract onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
.end method

.method public abstract onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
.end method

.method public abstract onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
.end method

.method public abstract onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
.end method
