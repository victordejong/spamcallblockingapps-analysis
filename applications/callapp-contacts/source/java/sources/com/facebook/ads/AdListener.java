package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    void onAdClicked(AbstractC9941Ad abstractC9941Ad);

    void onAdLoaded(AbstractC9941Ad abstractC9941Ad);

    void onError(AbstractC9941Ad abstractC9941Ad, AdError adError);

    void onLoggingImpression(AbstractC9941Ad abstractC9941Ad);
}
