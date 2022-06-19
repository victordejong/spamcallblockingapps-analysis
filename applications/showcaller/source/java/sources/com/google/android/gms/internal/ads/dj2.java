package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dj2.class */
public final class dj2 {

    /* renamed from: a */
    private final AbstractC6227e f21648a;

    /* renamed from: b */
    private final Object f21649b = new Object();

    /* renamed from: d */
    private volatile int f21651d = 1;

    /* renamed from: c */
    private volatile long f21650c = 0;

    public dj2(AbstractC6227e abstractC6227e) {
        this.f21648a = abstractC6227e;
    }

    /* renamed from: e */
    private final void m15783e() {
        long mo16807a = this.f21648a.mo16807a();
        synchronized (this.f21649b) {
            if (this.f21651d == 3) {
                if (this.f21650c + ((Long) C7192yr.m8714c().m14263c(C6679kw.f25739l4)).longValue() <= mo16807a) {
                    this.f21651d = 1;
                }
            }
        }
    }

    /* renamed from: f */
    private final void m15782f(int i, int i2) {
        m15783e();
        long mo16807a = this.f21648a.mo16807a();
        synchronized (this.f21649b) {
            if (this.f21651d != i) {
                return;
            }
            this.f21651d = i2;
            if (this.f21651d == 3) {
                this.f21650c = mo16807a;
            }
        }
    }

    /* renamed from: a */
    public final void m15787a(boolean z) {
        if (z) {
            m15782f(1, 2);
        } else {
            m15782f(2, 1);
        }
    }

    /* renamed from: b */
    public final boolean m15786b() {
        boolean z;
        synchronized (this.f21649b) {
            m15783e();
            z = this.f21651d == 2;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m15785c() {
        boolean z;
        synchronized (this.f21649b) {
            m15783e();
            z = this.f21651d == 3;
        }
        return z;
    }

    /* renamed from: d */
    public final void m15784d() {
        m15782f(2, 3);
    }
}
