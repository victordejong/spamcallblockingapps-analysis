package com.applovin.nativeAds;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/applovin/nativeAds/AppLovinNativeAdLoadListener.class */
public interface AppLovinNativeAdLoadListener {
    void onNativeAdsFailedToLoad(int i);

    void onNativeAdsLoaded(List<AppLovinNativeAd> list);
}
