package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaye.class */
public final class zzaye {
    @VisibleForTesting

    /* renamed from: g */
    public final String f24628g;

    /* renamed from: h */
    public final zzayr f24629h;
    @VisibleForTesting

    /* renamed from: a */
    public long f24622a = -1;
    @VisibleForTesting

    /* renamed from: b */
    public long f24623b = -1;
    @VisibleForTesting

    /* renamed from: c */
    public int f24624c = -1;
    @VisibleForTesting

    /* renamed from: d */
    public int f24625d = -1;
    @VisibleForTesting

    /* renamed from: e */
    public long f24626e = 0;

    /* renamed from: f */
    public final Object f24627f = new Object();
    @VisibleForTesting

    /* renamed from: i */
    public int f24630i = 0;
    @VisibleForTesting

    /* renamed from: j */
    public int f24631j = 0;

    public zzaye(String str, zzayr zzayrVar) {
        this.f24628g = str;
        this.f24629h = zzayrVar;
    }

    /* renamed from: a */
    public static boolean m16171a(Context context) {
        Context b = zzatx.m16348b(context);
        int identifier = b.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            zzbbq.m15854c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == b.getPackageManager().getActivityInfo(new ComponentName(b.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                return true;
            }
            zzbbq.m15854c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            zzbbq.m15852d("Fail to fetch AdActivity theme");
            zzbbq.m15854c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    /* renamed from: a */
    public final Bundle m16170a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f24627f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.f24628g);
            bundle.putLong("basets", this.f24623b);
            bundle.putLong("currts", this.f24622a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f24624c);
            bundle.putInt("preqs_in_session", this.f24625d);
            bundle.putLong("time_in_session", this.f24626e);
            bundle.putInt("pclick", this.f24630i);
            bundle.putInt("pimp", this.f24631j);
            bundle.putBoolean("support_transparent_background", m16171a(context));
        }
        return bundle;
    }

    /* renamed from: a */
    public final void m16172a() {
        synchronized (this.f24627f) {
            this.f24631j++;
        }
    }

    /* renamed from: a */
    public final void m16169a(zzvg zzvgVar, long j) {
        synchronized (this.f24627f) {
            long b = this.f24629h.mo16068b();
            long b2 = zzp.m17962j().mo17091b();
            if (this.f24623b == -1) {
                if (b2 - b > ((Long) zzwm.m11166e().m16921a(zzabb.f23880r0)).longValue()) {
                    this.f24625d = -1;
                } else {
                    this.f24625d = this.f24629h.mo16049n();
                }
                this.f24623b = j;
                this.f24622a = j;
            } else {
                this.f24622a = j;
            }
            if (zzvgVar == null || zzvgVar.f29003c == null || zzvgVar.f29003c.getInt("gw", 2) != 1) {
                this.f24624c++;
                int i = this.f24625d + 1;
                this.f24625d = i;
                if (i == 0) {
                    this.f24626e = 0L;
                    this.f24629h.mo16066b(b2);
                } else {
                    this.f24626e = b2 - this.f24629h.mo16051l();
                }
            }
        }
    }

    /* renamed from: b */
    public final void m16168b() {
        synchronized (this.f24627f) {
            this.f24630i++;
        }
    }
}
