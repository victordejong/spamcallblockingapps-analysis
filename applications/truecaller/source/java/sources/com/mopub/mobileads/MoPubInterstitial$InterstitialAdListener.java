package com.mopub.mobileads;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$InterstitialAdListener.class */
public interface MoPubInterstitial$InterstitialAdListener {
    void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

    void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

    void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

    void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

    void onInterstitialShown(MoPubInterstitial moPubInterstitial);
}
