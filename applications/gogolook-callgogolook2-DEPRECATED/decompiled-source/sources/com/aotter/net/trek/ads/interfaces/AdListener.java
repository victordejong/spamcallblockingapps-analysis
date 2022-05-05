package com.aotter.net.trek.ads.interfaces;

import com.aotter.net.trek.model.NativeAd;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/interfaces/AdListener.class */
public interface AdListener {
    void onAdClicked(NativeAd nativeAd);

    void onAdFail();

    void onAdImpression(NativeAd nativeAd);

    void onAdLoaded(NativeAd nativeAd);
}
