package com.appnext.nativeads.designed_native_ads.interfaces;

import com.appnext.core.AppnextError;
import com.appnext.nativeads.designed_native_ads.AppnextDesignedNativeAdData;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks.class */
public interface AppnextDesignedNativeAdViewCallbacks {
    void onAdClicked(AppnextDesignedNativeAdData appnextDesignedNativeAdData);

    void onAppnextAdsError(AppnextError appnextError);

    void onAppnextAdsLoadedSuccessfully();
}
