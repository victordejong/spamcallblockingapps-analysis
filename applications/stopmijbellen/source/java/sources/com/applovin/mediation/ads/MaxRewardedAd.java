package com.applovin.mediation.ads;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxRewardedAd.class */
public class MaxRewardedAd implements MaxFullscreenAdImpl.AbstractC1068a {

    /* renamed from: a */
    private static final Map<String, MaxRewardedAd> f5791a = new HashMap();

    /* renamed from: b */
    private static final Object f5792b = new Object();

    /* renamed from: c */
    private static WeakReference<Activity> f5793c = new WeakReference<>(null);

    /* renamed from: d */
    private final MaxFullscreenAdImpl f5794d;

    private MaxRewardedAd(String str, AppLovinSdk appLovinSdk) {
        this.f5794d = new MaxFullscreenAdImpl(str.trim(), MaxAdFormat.REWARDED, this, "MaxRewardedAd", appLovinSdk.coreSdk);
    }

    public static MaxRewardedAd getInstance(String str, Activity activity) {
        return getInstance(str, AppLovinSdk.getInstance(activity), activity);
    }

    public static MaxRewardedAd getInstance(String str, AppLovinSdk appLovinSdk, Activity activity) {
        AbstractC1078a.logApiCall("MaxRewardedAd", "getInstance(adUnitId=" + str + ", sdk=" + appLovinSdk + ", activity=" + activity + ")");
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
            updateActivity(activity);
            synchronized (f5792b) {
                Map<String, MaxRewardedAd> map = f5791a;
                MaxRewardedAd maxRewardedAd = map.get(str);
                if (maxRewardedAd != null) {
                    return maxRewardedAd;
                }
                MaxRewardedAd maxRewardedAd2 = new MaxRewardedAd(str, appLovinSdk);
                map.put(str, maxRewardedAd2);
                return maxRewardedAd2;
            }
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public static void updateActivity(Activity activity) {
        AbstractC1078a.logApiCall("MaxRewardedAd", "updateActivity(activity=" + activity + ")");
        if (activity != null) {
            f5793c = new WeakReference<>(activity);
        }
    }

    public void destroy() {
        this.f5794d.logApiCall("destroy()");
        synchronized (f5792b) {
            f5791a.remove(this.f5794d.getAdUnitId());
        }
        this.f5794d.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.AbstractC1068a
    public Activity getActivity() {
        this.f5794d.logApiCall("getActivity()");
        return f5793c.get();
    }

    public String getAdUnitId() {
        return this.f5794d.getAdUnitId();
    }

    public boolean isReady() {
        boolean isReady = this.f5794d.isReady();
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("isReady() " + isReady + " for ad unit id " + this.f5794d.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f5794d.logApiCall("loadAd()");
        this.f5794d.loadAd(getActivity());
    }

    public void setCustomPostbackData(String str) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("setCustomPostbackData(value=" + str + ")");
        this.f5794d.setCustomPostbackData(str);
    }

    public void setExtraParameter(String str, String str2) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f5794d.setExtraParameter(str, str2);
    }

    public void setListener(MaxRewardedAdListener maxRewardedAdListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("setListener(listener=" + maxRewardedAdListener + ")");
        this.f5794d.setListener(maxRewardedAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f5794d.setLocalExtraParameter(str, obj);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f5794d.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(ViewGroup viewGroup, AbstractC0516f abstractC0516f) {
        showAd(null, viewGroup, abstractC0516f);
    }

    public void showAd(String str) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ")");
        this.f5794d.showAd(str, getActivity());
    }

    public void showAd(String str, ViewGroup viewGroup, AbstractC0516f abstractC0516f) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5794d;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ", containerView=" + viewGroup + ", lifecycle=" + abstractC0516f + ")");
        this.f5794d.showAd(str, viewGroup, abstractC0516f, getActivity());
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("");
        m8752j.append(this.f5794d);
        return m8752j.toString();
    }
}
