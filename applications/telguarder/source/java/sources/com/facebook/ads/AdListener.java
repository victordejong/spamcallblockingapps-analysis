package com.facebook.ads;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    void onAdClicked(AbstractC0845Ad abstractC0845Ad);

    void onAdLoaded(AbstractC0845Ad abstractC0845Ad);

    void onError(AbstractC0845Ad abstractC0845Ad, AdError adError);

    void onLoggingImpression(AbstractC0845Ad abstractC0845Ad);
}
