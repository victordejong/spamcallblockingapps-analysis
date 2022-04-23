package com.google.android.gms.ads;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7320m2;
import p081h.p203i.p204a.p224e.p259j.p260a.C7183b6;
import p081h.p203i.p204a.p224e.p259j.p260a.C7209d6;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/MobileAds.class */
public class MobileAds {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/MobileAds$Settings.class */
    public static final class Settings {
        public final C7209d6 zzvh = new C7209d6();

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }

        public final C7209d6 zzba() {
            return this.zzvh;
        }
    }

    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return C7183b6.m20979d().m20986a(context);
    }

    public static void getVersionString() {
        C7183b6.m20979d().m20980c();
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @RequiresPermission("android.permission.INTERNET")
    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        C7183b6.m20979d().m20984a(context, str, settings == null ? null : settings.zzba());
    }

    public static void openDebugMenu(Context context, String str) {
        C7183b6.m20979d().m20985a(context, str);
    }

    public static void registerRtbAdapter(Class<? extends AbstractC7320m2> cls) {
        C7183b6.m20979d().m20983a(cls);
    }

    public static void setAppMuted(boolean z) {
        C7183b6.m20979d().m20982a(z);
    }

    public static void setAppVolume(float f) {
        C7183b6.m20979d().m20987a(f);
    }
}
