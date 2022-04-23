package com.applovin.mediation.ads;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxRewardedAd.class */
public class MaxRewardedAd implements MaxFullscreenAdImpl.AbstractC7004f {

    /* renamed from: b */
    public static final Map<String, MaxRewardedAd> f21830b = new HashMap();

    /* renamed from: c */
    public static final Object f21831c = new Object();

    /* renamed from: d */
    public static WeakReference<Activity> f21832d = new WeakReference<>(null);

    /* renamed from: a */
    public final MaxFullscreenAdImpl f21833a;

    public MaxRewardedAd(String str, AppLovinSdk appLovinSdk) {
        this.f21833a = new MaxFullscreenAdImpl(str, MaxAdFormat.REWARDED, this, "MaxRewardedAd", AbstractC2426r.m29811a(appLovinSdk));
    }

    public static MaxRewardedAd getInstance(String str, Activity activity) {
        return getInstance(str, AppLovinSdk.getInstance(activity), activity);
    }

    public static MaxRewardedAd getInstance(String str, AppLovinSdk appLovinSdk, Activity activity) {
        C2374t.m30037g("MaxRewardedAd", "getInstance(adUnitId=" + str + ", sdk=" + appLovinSdk + ", activity=" + activity + ")");
        if (str == null) {
            throw new IllegalArgumentException("No ad unit ID specified");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Empty ad unit ID specified");
        } else if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        } else if (appLovinSdk != null) {
            updateActivity(activity);
            synchronized (f21831c) {
                MaxRewardedAd maxRewardedAd = f21830b.get(str);
                if (maxRewardedAd != null) {
                    return maxRewardedAd;
                }
                MaxRewardedAd maxRewardedAd2 = new MaxRewardedAd(str, appLovinSdk);
                f21830b.put(str, maxRewardedAd2);
                return maxRewardedAd2;
            }
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    public static void updateActivity(Activity activity) {
        C2374t.m30037g("MaxRewardedAd", "updateActivity(activity=" + activity + ")");
        if (activity != null) {
            f21832d = new WeakReference<>(activity);
        }
    }

    public void destroy() {
        C2374t.m30037g("MaxRewardedAd", "destroy()");
        synchronized (f21831c) {
            f21830b.remove(this.f21833a.getAdUnitId());
        }
        this.f21833a.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.AbstractC7004f
    public Activity getActivity() {
        C2374t.m30037g("MaxRewardedAd", "getActivity()");
        return f21832d.get();
    }

    public boolean isReady() {
        C2374t.m30037g("MaxRewardedAd", "isReady()");
        return this.f21833a.isReady();
    }

    public void loadAd() {
        C2374t.m30037g("MaxRewardedAd", "loadAd()");
        this.f21833a.loadAd(getActivity());
    }

    public void setExtraParameter(String str, String str2) {
        C2374t.m30037g("MaxRewardedAd", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f21833a.setExtraParameter(str, str2);
    }

    public void setListener(MaxRewardedAdListener maxRewardedAdListener) {
        C2374t.m30037g("MaxRewardedAd", "setListener(listener=" + maxRewardedAdListener + ")");
        this.f21833a.setListener(maxRewardedAdListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(String str) {
        C2374t.m30037g("MaxRewardedAd", "showAd(placement=" + str + ")");
        this.f21833a.showAd(str, getActivity());
    }

    public String toString() {
        return "" + this.f21833a;
    }
}
