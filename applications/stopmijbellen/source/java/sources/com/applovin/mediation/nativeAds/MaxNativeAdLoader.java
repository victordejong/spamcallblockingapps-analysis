package com.applovin.mediation.nativeAds;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAdLoader.class */
public class MaxNativeAdLoader {

    /* renamed from: a */
    private final MaxNativeAdLoaderImpl f5808a;

    public MaxNativeAdLoader(String str, Context context) {
        this(str, AppLovinSdk.getInstance(context), context);
    }

    public MaxNativeAdLoader(String str, AppLovinSdk appLovinSdk, Context context) {
        AbstractC1078a.logApiCall("MaxNativeAdLoader", "MaxNativeAdLoader(adUnitId=" + str + ", sdk=" + appLovinSdk + ")");
        if (str != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Empty ad unit ID specified");
            }
            if (appLovinSdk == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            this.f5808a = new MaxNativeAdLoaderImpl(str, appLovinSdk.coreSdk, context);
            return;
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public void destroy() {
        this.f5808a.logApiCall("destroy()");
        this.f5808a.destroy();
    }

    public void destroy(MaxAd maxAd) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("destroy(nativeAd=" + maxAd + ")");
        this.f5808a.destroy(maxAd);
    }

    public String getAdUnitId() {
        return this.f5808a.getAdUnitId();
    }

    public String getPlacement() {
        this.f5808a.logApiCall("getPlacement()");
        return this.f5808a.getPlacement();
    }

    public void loadAd() {
        loadAd(null);
    }

    public void loadAd(MaxNativeAdView maxNativeAdView) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("loadAd(adView=" + maxNativeAdView + ")");
        this.f5808a.loadAd(maxNativeAdView);
    }

    public void setCustomPostbackData(String str) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("setCustomPostbackData(value=" + str + ")");
        this.f5808a.setCustomPostbackData(str);
    }

    public void setExtraParameter(String str, String str2) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f5808a.setExtraParameter(str, str2);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f5808a.setLocalExtraParameter(str, obj);
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("setNativeAdListener(listener=" + maxNativeAdListener + ")");
        this.f5808a.setNativeAdListener(maxNativeAdListener);
    }

    public void setPlacement(String str) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("setPlacement(placement=" + str + ")");
        this.f5808a.setPlacement(str);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = this.f5808a;
        maxNativeAdLoaderImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f5808a.setRevenueListener(maxAdRevenueListener);
    }
}
