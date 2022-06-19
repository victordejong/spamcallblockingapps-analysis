package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.un */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/un.class */
public final class C3549un {

    /* renamed from: g */
    private final String f17447g;

    /* renamed from: h */
    private final AbstractC3558uw f17448h;

    /* renamed from: b */
    private long f17442b = -1;

    /* renamed from: c */
    private long f17443c = -1;
    @GuardedBy("lock")

    /* renamed from: d */
    private int f17444d = -1;

    /* renamed from: a */
    int f17441a = -1;

    /* renamed from: e */
    private long f17445e = 0;

    /* renamed from: f */
    private final Object f17446f = new Object();
    @GuardedBy("lock")

    /* renamed from: i */
    private int f17449i = 0;
    @GuardedBy("lock")

    /* renamed from: j */
    private int f17450j = 0;

    public C3549un(String str, AbstractC3558uw abstractC3558uw) {
        this.f17447g = str;
        this.f17448h = abstractC3558uw;
    }

    /* renamed from: a */
    private static boolean m7070a(Context context) {
        boolean z = false;
        Context m7295b = C3446qs.m7295b(context);
        int identifier = m7295b.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            C3556uu.m6747d("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
        } else {
            try {
                if (identifier == m7295b.getPackageManager().getActivityInfo(new ComponentName(m7295b.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                    z = true;
                } else {
                    C3556uu.m6747d("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                }
            } catch (PackageManager.NameNotFoundException e) {
                C3556uu.m6745e("Fail to fetch AdActivity theme");
                C3556uu.m6747d("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            }
        }
        return z;
    }

    /* renamed from: a */
    public final Bundle m7069a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f17446f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.f17447g);
            bundle.putLong("basets", this.f17443c);
            bundle.putLong("currts", this.f17442b);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f17444d);
            bundle.putInt("preqs_in_session", this.f17441a);
            bundle.putLong("time_in_session", this.f17445e);
            bundle.putInt("pclick", this.f17449i);
            bundle.putInt("pimp", this.f17450j);
            bundle.putBoolean("support_transparent_background", m7070a(context));
        }
        return bundle;
    }

    /* renamed from: a */
    public final void m7071a() {
        synchronized (this.f17446f) {
            this.f17449i++;
        }
    }

    /* renamed from: a */
    public final void m7068a(dya dyaVar, long j) {
        synchronized (this.f17446f) {
            long mo7018i = this.f17448h.mo7018i();
            long mo13862a = C2341q.m14737j().mo13862a();
            if (this.f17443c == -1) {
                if (mo13862a - mo7018i > ((Long) dyx.m8158e().m7876a(edi.f16383ap)).longValue()) {
                    this.f17441a = -1;
                } else {
                    this.f17441a = this.f17448h.mo7017j();
                }
                this.f17443c = j;
                this.f17442b = this.f17443c;
            } else {
                this.f17442b = j;
            }
            if (dyaVar == null || dyaVar.f16069c == null || dyaVar.f16069c.getInt("gw", 2) != 1) {
                this.f17444d++;
                this.f17441a++;
                if (this.f17441a == 0) {
                    this.f17445e = 0L;
                    this.f17448h.mo7030b(mo13862a);
                } else {
                    this.f17445e = mo13862a - this.f17448h.mo7016k();
                }
            }
        }
    }

    /* renamed from: b */
    public final void m7067b() {
        synchronized (this.f17446f) {
            this.f17450j++;
        }
    }
}
