package com.applovin.mediation.ads;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxInterstitialAd.class */
public class MaxInterstitialAd implements MaxFullscreenAdImpl.AbstractC1068a {

    /* renamed from: a */
    private static WeakReference<Activity> f5789a = new WeakReference<>(null);

    /* renamed from: b */
    private final MaxFullscreenAdImpl f5790b;

    public MaxInterstitialAd(String str, Activity activity) {
        this(str, AppLovinSdk.getInstance(activity), activity);
    }

    public MaxInterstitialAd(String str, AppLovinSdk appLovinSdk, Activity activity) {
        AbstractC1078a.logApiCall("MaxInterstitialAd", "MaxInterstitialAd(adUnitId=" + str + ", sdk=" + appLovinSdk + ", activity=" + activity + ")");
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
            f5789a = new WeakReference<>(activity);
            this.f5790b = new MaxFullscreenAdImpl(str.trim(), MaxAdFormat.INTERSTITIAL, this, "MaxInterstitialAd", appLovinSdk.coreSdk);
            return;
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public void destroy() {
        this.f5790b.logApiCall("destroy()");
        this.f5790b.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.AbstractC1068a
    public Activity getActivity() {
        this.f5790b.logApiCall("getActivity()");
        return f5789a.get();
    }

    public String getAdUnitId() {
        return this.f5790b.getAdUnitId();
    }

    public boolean isReady() {
        boolean isReady = this.f5790b.isReady();
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("isReady() " + isReady + " for ad unit id " + this.f5790b.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f5790b.logApiCall("loadAd()");
        this.f5790b.loadAd(getActivity());
    }

    public void setCustomPostbackData(String str) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("setCustomPostbackData(value=" + str + ")");
        this.f5790b.setCustomPostbackData(str);
    }

    public void setExtraParameter(String str, String str2) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f5790b.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdListener maxAdListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("setListener(listener=" + maxAdListener + ")");
        this.f5790b.setListener(maxAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f5790b.setLocalExtraParameter(str, obj);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f5790b.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(ViewGroup viewGroup, AbstractC0516f abstractC0516f) {
        showAd(null, viewGroup, abstractC0516f);
    }

    public void showAd(String str) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ")");
        this.f5790b.showAd(str, getActivity());
    }

    public void showAd(String str, ViewGroup viewGroup, AbstractC0516f abstractC0516f) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f5790b;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ", containerView=" + viewGroup + ", lifecycle=" + abstractC0516f + ")");
        this.f5790b.showAd(str, viewGroup, abstractC0516f, getActivity());
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("");
        m8752j.append(this.f5790b);
        return m8752j.toString();
    }
}
