package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdsManager;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/api/NativeAdsManagerApi.class */
public interface NativeAdsManagerApi {
    void disableAutoRefresh();

    int getUniqueNativeAdCount();

    boolean isLoaded();

    void loadAds();

    void loadAds(NativeAdBase.MediaCacheFlag mediaCacheFlag);

    NativeAd nextNativeAd();

    void setExtraHints(String str);

    void setListener(NativeAdsManager.Listener listener);
}
