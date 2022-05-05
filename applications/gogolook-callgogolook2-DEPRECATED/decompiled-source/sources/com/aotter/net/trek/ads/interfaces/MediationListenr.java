package com.aotter.net.trek.ads.interfaces;

import com.aotter.net.trek.model.NativeAd;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/interfaces/MediationListenr.class */
public interface MediationListenr {
    void recordTrekClick(NativeAd nativeAd);

    void recordTrekImp(NativeAd nativeAd);

    String urlClick(NativeAd nativeAd);

    String urlImpression(NativeAd nativeAd);

    String urlTrek(NativeAd nativeAd);
}
