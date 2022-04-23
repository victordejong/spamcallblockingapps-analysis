package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.ao */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ao.class */
public final class C1652ao {

    /* renamed from: g */
    final String f6055g;

    /* renamed from: h */
    private final AbstractC1409a1 f6056h;

    /* renamed from: a */
    long f6049a = -1;

    /* renamed from: b */
    long f6050b = -1;
    @GuardedBy("lock")

    /* renamed from: c */
    int f6051c = -1;

    /* renamed from: d */
    int f6052d = -1;

    /* renamed from: e */
    long f6053e = 0;

    /* renamed from: f */
    private final Object f6054f = new Object();
    @GuardedBy("lock")

    /* renamed from: i */
    int f6057i = 0;
    @GuardedBy("lock")

    /* renamed from: j */
    int f6058j = 0;

    public C1652ao(String str, AbstractC1409a1 a1Var) {
        this.f6055g = str;
        this.f6056h = a1Var;
    }

    /* renamed from: a */
    public final void m8123a() {
        synchronized (this.f6054f) {
            this.f6057i++;
        }
    }

    /* renamed from: b */
    public final void m8122b() {
        synchronized (this.f6054f) {
            this.f6058j++;
        }
    }

    /* renamed from: c */
    public final void m8121c(zzys zzysVar, long j) {
        synchronized (this.f6054f) {
            long l = this.f6056h.m8870l();
            long a = C1407r.m8913k().m8247a();
            if (this.f6050b == -1) {
                if (a - l > ((Long) C1674c.m7906c().m6878b(C1842m3.f7546z0)).longValue()) {
                    this.f6052d = -1;
                } else {
                    this.f6052d = this.f6056h.m8869o();
                }
                this.f6050b = j;
            }
            this.f6049a = j;
            Bundle bundle = zzysVar.d;
            if (bundle != null && bundle.getInt("gw", 2) == 1) {
                return;
            }
            this.f6051c++;
            int i = this.f6052d + 1;
            this.f6052d = i;
            if (i == 0) {
                this.f6053e = 0L;
                this.f6056h.m8883R0(a);
            } else {
                this.f6053e = a - this.f6056h.m8867t();
            }
        }
    }

    /* renamed from: d */
    public final void m8120d() {
        if (C1729f5.f6477a.m6222e().booleanValue()) {
            synchronized (this.f6054f) {
                this.f6051c--;
                this.f6052d--;
            }
        }
    }

    /* renamed from: e */
    public final Bundle m8119e(Context context, String str) {
        Bundle bundle;
        synchronized (this.f6054f) {
            try {
                bundle = new Bundle();
                bundle.putString("session_id", this.f6056h.m8893K() ? "" : this.f6055g);
                bundle.putLong("basets", this.f6050b);
                bundle.putLong("currts", this.f6049a);
                bundle.putString("seq_num", str);
                bundle.putInt("preqs", this.f6051c);
                bundle.putInt("preqs_in_session", this.f6052d);
                bundle.putLong("time_in_session", this.f6053e);
                bundle.putInt("pclick", this.f6057i);
                bundle.putInt("pimp", this.f6058j);
                Context a = C2036xj.m4900a(context);
                int identifier = a.getResources().getIdentifier("Theme.Translucent", "style", "android");
                boolean z = false;
                if (identifier != 0) {
                    try {
                        if (identifier == a.getPackageManager().getActivityInfo(new ComponentName(a.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                            z = true;
                        } else {
                            C1894po.m6181e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        C1894po.m6180f("Fail to fetch AdActivity theme");
                    }
                    bundle.putBoolean("support_transparent_background", z);
                }
                C1894po.m6181e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                bundle.putBoolean("support_transparent_background", z);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }
}
