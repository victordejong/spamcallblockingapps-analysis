package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.mopub.common.Constants;
/* renamed from: com.google.android.gms.internal.ads.yk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yk.class */
public final class C13071yk {

    /* renamed from: g */
    final zzf f50079g;

    /* renamed from: j */
    private final String f50082j;

    /* renamed from: a */
    long f50073a = -1;

    /* renamed from: b */
    long f50074b = -1;

    /* renamed from: c */
    int f50075c = -1;

    /* renamed from: d */
    int f50076d = -1;

    /* renamed from: e */
    long f50077e = 0;

    /* renamed from: f */
    final Object f50078f = new Object();

    /* renamed from: h */
    int f50080h = 0;

    /* renamed from: i */
    int f50081i = 0;

    public C13071yk(String str, zzf zzfVar) {
        this.f50082j = str;
        this.f50079g = zzfVar;
    }

    /* renamed from: a */
    private static boolean m13972a(Context context) {
        Context m14155a = C12936tm.m14155a(context);
        int identifier = m14155a.getResources().getIdentifier("Theme.Translucent", "style", Constants.ANDROID_PLATFORM);
        if (identifier == 0) {
            zzd.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == m14155a.getPackageManager().getActivityInfo(new ComponentName(m14155a.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzd.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            zzd.zzez("Fail to fetch AdActivity theme");
            zzd.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    /* renamed from: a */
    public final Bundle m13971a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f50078f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.f50079g.zzzn() ? "" : this.f50082j);
            bundle.putLong("basets", this.f50074b);
            bundle.putLong("currts", this.f50073a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f50075c);
            bundle.putInt("preqs_in_session", this.f50076d);
            bundle.putLong("time_in_session", this.f50077e);
            bundle.putInt("pclick", this.f50080h);
            bundle.putInt("pimp", this.f50081i);
            bundle.putBoolean("support_transparent_background", m13972a(context));
        }
        return bundle;
    }
}
