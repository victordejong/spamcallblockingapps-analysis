package com.applovin.mediation.ads;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxRewardedInterstitialAd.class */
public class MaxRewardedInterstitialAd implements MaxFullscreenAdImpl.AbstractC1068a {

    /* renamed from: a */
    private static WeakReference<Activity> f5795a = new WeakReference<>(null);

    /* renamed from: b */
    private final MaxFullscreenAdImpl f5796b;

    public MaxRewardedInterstitialAd(String str, Activity activity) {
        this(str, AppLovinSdk.getInstance(activity), activity);
    }

    public MaxRewardedInterstitialAd(String str, AppLovinSdk appLovinSdk, Activity activity) {
        AbstractC1078a.logApiCall("MaxRewardedInterstitialAd", "MaxRewardedInterstitialAd(adUnitId=" + str + ", sdk=" + appLovinSdk + ", activity=" + activity + ")");
        if (str != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Empty ad unit ID specified");
            }
            if (activity == null) {
                throw new IllegalArgumentException("No activity specified");
            }
            if (appLovinSdk == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            f5795a = new WeakReference<>(activity);
            this.f5796b = new MaxFullscreenAdImpl(str, MaxAdFormat.REWARDED_INTERSTITIAL, this, "MaxRewardedInterstitialAd", appLovinSdk.coreSdk);
            return;
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public void destroy() {
        this.f5796b.logApiCall("destroy()");
        this.f5796b.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.AbstractC1068a
    public Activity getActivity() {
        this.f5796b.logApiCall("getActivity()");
        return f5795a.get();
    }

    public boolean isReady() {
        boolean isReady = this.f5796b.isReady();
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("isReady() " + isReady + " for ad unit id " + this.f5796b.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f5796b.logApiCall("loadAd()");
        this.f5796b.loadAd(getActivity());
    }

    public void setCustomPostbackData(String str) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("setCustomPostbackData(value=" + str + ")");
        this.f5796b.setCustomPostbackData(str);
    }

    public void setExtraParameter(String str, String str2) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f5796b.setExtraParameter(str, str2);
    }

    public void setListener(MaxRewardedAdListener maxRewardedAdListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("setListener(listener=" + maxRewardedAdListener + ")");
        this.f5796b.setListener(maxRewardedAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f5796b.setLocalExtraParameter(str, obj);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f5796b.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(String str) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5796b;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ")");
        this.f5796b.showAd(str, getActivity());
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("");
        m8752j.append(this.f5796b);
        return m8752j.toString();
    }
}
