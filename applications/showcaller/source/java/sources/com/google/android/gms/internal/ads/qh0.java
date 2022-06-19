package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qh0.class */
public final class qh0 {

    /* renamed from: g */
    final String f28488g;

    /* renamed from: h */
    private final AbstractC5728q1 f28489h;

    /* renamed from: a */
    long f28482a = -1;

    /* renamed from: b */
    long f28483b = -1;

    /* renamed from: c */
    int f28484c = -1;

    /* renamed from: d */
    int f28485d = -1;

    /* renamed from: e */
    long f28486e = 0;

    /* renamed from: f */
    private final Object f28487f = new Object();

    /* renamed from: i */
    int f28490i = 0;

    /* renamed from: j */
    int f28491j = 0;

    public qh0(String str, AbstractC5728q1 abstractC5728q1) {
        this.f28488g = str;
        this.f28489h = abstractC5728q1;
    }

    /* renamed from: g */
    private final void m11888g() {
        if (C6458ey.f22611a.m12799e().booleanValue()) {
            synchronized (this.f28487f) {
                this.f28484c--;
                this.f28485d--;
            }
        }
    }

    /* renamed from: a */
    public final void m11894a() {
        synchronized (this.f28487f) {
            this.f28490i++;
        }
    }

    /* renamed from: b */
    public final void m11893b() {
        synchronized (this.f28487f) {
            this.f28491j++;
        }
    }

    /* renamed from: c */
    public final void m11892c(zzbdg zzbdgVar, long j) {
        synchronized (this.f28487f) {
            long mo17949s = this.f28489h.mo17949s();
            long mo16807a = C5667s.m18153k().mo16807a();
            if (this.f28483b == -1) {
                if (mo16807a - mo17949s > ((Long) C7192yr.m8714c().m14263c(C6679kw.f25468E0)).longValue()) {
                    this.f28485d = -1;
                } else {
                    this.f28485d = this.f28489h.zzt();
                }
                this.f28483b = j;
                this.f28482a = j;
            } else {
                this.f28482a = j;
            }
            Bundle bundle = zzbdgVar.f33661f;
            if (bundle != null && bundle.getInt("gw", 2) == 1) {
                return;
            }
            this.f28484c++;
            int i = this.f28485d + 1;
            this.f28485d = i;
            if (i == 0) {
                this.f28486e = 0L;
                this.f28489h.mo17973O0(mo16807a);
            } else {
                this.f28486e = mo16807a - this.f28489h.mo17946w();
            }
        }
    }

    /* renamed from: d */
    public final void m11891d() {
        m11888g();
    }

    /* renamed from: e */
    public final void m11890e() {
        m11888g();
    }

    /* renamed from: f */
    public final Bundle m11889f(Context context, String str) {
        Bundle bundle;
        synchronized (this.f28487f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.f28489h.mo17948t() ? "" : this.f28488g);
            bundle.putLong("basets", this.f28483b);
            bundle.putLong("currts", this.f28482a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f28484c);
            bundle.putInt("preqs_in_session", this.f28485d);
            bundle.putLong("time_in_session", this.f28486e);
            bundle.putInt("pclick", this.f28490i);
            bundle.putInt("pimp", this.f28491j);
            Context m13583a = ld0.m13583a(context);
            int identifier = m13583a.getResources().getIdentifier("Theme.Translucent", "style", "android");
            boolean z = false;
            if (identifier == 0) {
                ei0.m15465e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            } else {
                try {
                    if (identifier == m13583a.getPackageManager().getActivityInfo(new ComponentName(m13583a.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                        z = true;
                    } else {
                        ei0.m15465e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    ei0.m15464f("Fail to fetch AdActivity theme");
                    ei0.m15465e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                }
            }
            bundle.putBoolean("support_transparent_background", z);
        }
        return bundle;
    }
}
