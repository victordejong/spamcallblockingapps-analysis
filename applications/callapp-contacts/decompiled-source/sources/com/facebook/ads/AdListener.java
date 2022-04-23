package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    void onAdClicked(Ad ad);

    void onAdLoaded(Ad ad);

    void onError(Ad ad, AdError adError);

    void onLoggingImpression(Ad ad);
}
