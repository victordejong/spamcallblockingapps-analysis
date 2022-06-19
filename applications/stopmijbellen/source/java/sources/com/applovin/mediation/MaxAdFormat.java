package com.applovin.mediation;

import android.app.Activity;
import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1479t;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxAdFormat.class */
public class MaxAdFormat {

    /* renamed from: a */
    private final String f5763a;

    /* renamed from: b */
    private final String f5764b;
    public static final MaxAdFormat BANNER = new MaxAdFormat("BANNER", "Banner");
    public static final MaxAdFormat MREC = new MaxAdFormat("MREC", "MREC");
    public static final MaxAdFormat LEADER = new MaxAdFormat("LEADER", "Leader");
    public static final MaxAdFormat INTERSTITIAL = new MaxAdFormat("INTER", "Interstitial");
    public static final MaxAdFormat REWARDED = new MaxAdFormat("REWARDED", "Rewarded");
    public static final MaxAdFormat REWARDED_INTERSTITIAL = new MaxAdFormat("REWARDED_INTER", "Rewarded Interstitial");
    public static final MaxAdFormat NATIVE = new MaxAdFormat("NATIVE", "Native");
    public static final MaxAdFormat CROSS_PROMO = new MaxAdFormat("XPROMO", "Cross Promo");

    private MaxAdFormat(String str, String str2) {
        this.f5763a = str;
        this.f5764b = str2;
    }

    public static MaxAdFormat formatFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equalsIgnoreCase("banner")) {
            return BANNER;
        }
        if (str.equalsIgnoreCase("mrec")) {
            return MREC;
        }
        if (str.equalsIgnoreCase("xpromo")) {
            return CROSS_PROMO;
        }
        if (str.equalsIgnoreCase("native")) {
            return NATIVE;
        }
        if (str.equalsIgnoreCase("leaderboard") || str.equalsIgnoreCase("leader")) {
            return LEADER;
        }
        if (str.equalsIgnoreCase("interstitial") || str.equalsIgnoreCase("inter")) {
            return INTERSTITIAL;
        }
        if (str.equalsIgnoreCase("rewarded") || str.equalsIgnoreCase("reward")) {
            return REWARDED;
        }
        if (str.equalsIgnoreCase("rewarded_inter") || str.equalsIgnoreCase("rewarded_interstitial")) {
            return REWARDED_INTERSTITIAL;
        }
        C1479t.m5107i("AppLovinSdk", "Unknown ad format: " + str);
        return null;
    }

    public AppLovinSdkUtils.Size getAdaptiveSize(int i, Context context) {
        return (this == BANNER || this == LEADER) ? C1107c.m6458a(i, this, context) : getSize();
    }

    public AppLovinSdkUtils.Size getAdaptiveSize(Activity activity) {
        return getAdaptiveSize(-1, activity);
    }

    public String getDisplayName() {
        return this.f5764b;
    }

    public String getLabel() {
        return this.f5763a;
    }

    public AppLovinSdkUtils.Size getSize() {
        return this == BANNER ? new AppLovinSdkUtils.Size(320, 50) : this == LEADER ? new AppLovinSdkUtils.Size(728, 90) : this == MREC ? new AppLovinSdkUtils.Size(300, 250) : this == CROSS_PROMO ? new AppLovinSdkUtils.Size(-1, -1) : new AppLovinSdkUtils.Size(0, 0);
    }

    public boolean isAdViewAd() {
        return this == BANNER || this == MREC || this == LEADER || this == CROSS_PROMO;
    }

    public boolean isFullscreenAd() {
        return this == INTERSTITIAL || this == REWARDED || this == REWARDED_INTERSTITIAL;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MaxAdFormat{label='");
        m8752j.append(this.f5763a);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
