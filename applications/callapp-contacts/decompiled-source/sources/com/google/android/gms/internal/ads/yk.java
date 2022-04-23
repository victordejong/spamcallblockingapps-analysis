package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.mopub.common.Constants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yk.class */
public final class yk {
    final zzf g;
    private final String j;

    /* renamed from: a  reason: collision with root package name */
    long f28543a = -1;

    /* renamed from: b  reason: collision with root package name */
    long f28544b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f28545c = -1;

    /* renamed from: d  reason: collision with root package name */
    int f28546d = -1;
    long e = 0;
    final Object f = new Object();
    int h = 0;
    int i = 0;

    public yk(String str, zzf zzfVar) {
        this.j = str;
        this.g = zzfVar;
    }

    private static boolean a(Context context) {
        Context a2 = tm.a(context);
        int identifier = a2.getResources().getIdentifier("Theme.Translucent", "style", Constants.ANDROID_PLATFORM);
        if (identifier == 0) {
            zzd.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == a2.getPackageManager().getActivityInfo(new ComponentName(a2.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
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

    public final Bundle a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.g.zzzn() ? "" : this.j);
            bundle.putLong("basets", this.f28544b);
            bundle.putLong("currts", this.f28543a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f28545c);
            bundle.putInt("preqs_in_session", this.f28546d);
            bundle.putLong("time_in_session", this.e);
            bundle.putInt("pclick", this.h);
            bundle.putInt("pimp", this.i);
            bundle.putBoolean("support_transparent_background", a(context));
        }
        return bundle;
    }
}
