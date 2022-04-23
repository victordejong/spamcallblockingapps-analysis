package com.applovin.mediation.ads;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxInterstitialAd.class */
public class MaxInterstitialAd implements MaxFullscreenAdImpl.AbstractC7004f {

    /* renamed from: b */
    public static WeakReference<Activity> f21828b = new WeakReference<>(null);

    /* renamed from: a */
    public final MaxFullscreenAdImpl f21829a;

    public MaxInterstitialAd(String str, Activity activity) {
        this(str, AppLovinSdk.getInstance(activity), activity);
    }

    public MaxInterstitialAd(String str, AppLovinSdk appLovinSdk, Activity activity) {
        C2374t.m30037g("MaxInterstitialAd", "MaxInterstitialAd(adUnitId=" + str + ", sdk=" + appLovinSdk + ", activity=" + activity + ")");
        if (str == null) {
            throw new IllegalArgumentException("No ad unit ID specified");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Empty ad unit ID specified");
        } else if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        } else if (appLovinSdk != null) {
            f21828b = new WeakReference<>(activity);
            this.f21829a = new MaxFullscreenAdImpl(str, MaxAdFormat.INTERSTITIAL, this, "MaxInterstitialAd", AbstractC2426r.m29811a(appLovinSdk));
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    public void destroy() {
        C2374t.m30037g("MaxInterstitialAd", "destroy()");
        this.f21829a.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.AbstractC7004f
    public Activity getActivity() {
        C2374t.m30037g("MaxInterstitialAd", "getActivity()");
        return f21828b.get();
    }

    public boolean isReady() {
        C2374t.m30037g("MaxInterstitialAd", "isReady()");
        return this.f21829a.isReady();
    }

    public void loadAd() {
        C2374t.m30037g("MaxInterstitialAd", "loadAd()");
        this.f21829a.loadAd(getActivity());
    }

    public void setExtraParameter(String str, String str2) {
        C2374t.m30037g("MaxInterstitialAd", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f21829a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdListener maxAdListener) {
        C2374t.m30037g("MaxInterstitialAd", "setListener(listener=" + maxAdListener + ")");
        this.f21829a.setListener(maxAdListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(String str) {
        C2374t.m30037g("MaxInterstitialAd", "showAd(placement=" + str + ")");
        this.f21829a.showAd(str, getActivity());
    }

    public String toString() {
        return "" + this.f21829a;
    }
}
