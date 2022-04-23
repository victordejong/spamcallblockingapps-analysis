package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import p131c.p161d.p170b.p224d.p252g.p253a.C3488dy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnt.class */
public final class zzdnt {

    /* renamed from: a */
    public final Clock f27547a;

    /* renamed from: b */
    public final Object f27548b = new Object();

    /* renamed from: c */
    public volatile int f27549c = C3488dy.f12782a;

    /* renamed from: d */
    public volatile long f27550d = 0;

    public zzdnt(Clock clock) {
        this.f27547a = clock;
    }

    /* renamed from: a */
    public final void m13457a() {
        long b = this.f27547a.mo17091b();
        synchronized (this.f27548b) {
            if (this.f27549c == C3488dy.f12784c) {
                if (this.f27550d + ((Long) zzwm.m11166e().m16921a(zzabb.f23761W2)).longValue() <= b) {
                    this.f27549c = C3488dy.f12782a;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m13456a(int i, int i2) {
        m13457a();
        long b = this.f27547a.mo17091b();
        synchronized (this.f27548b) {
            if (this.f27549c == i) {
                this.f27549c = i2;
                if (this.f27549c == C3488dy.f12784c) {
                    this.f27550d = b;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m13455a(boolean z) {
        if (z) {
            m13456a(C3488dy.f12782a, C3488dy.f12783b);
        } else {
            m13456a(C3488dy.f12783b, C3488dy.f12782a);
        }
    }

    /* renamed from: b */
    public final boolean m13454b() {
        boolean z;
        synchronized (this.f27548b) {
            m13457a();
            z = this.f27549c == C3488dy.f12783b;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m13453c() {
        boolean z;
        synchronized (this.f27548b) {
            m13457a();
            z = this.f27549c == C3488dy.f12784c;
        }
        return z;
    }

    /* renamed from: d */
    public final void m13452d() {
        m13456a(C3488dy.f12783b, C3488dy.f12784c);
    }
}
