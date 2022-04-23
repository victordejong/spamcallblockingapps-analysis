package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC1610f;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zk1.class */
public final class zk1 {

    /* renamed from: a */
    private final AbstractC1610f f9362a;

    /* renamed from: b */
    private final Object f9363b = new Object();
    @GuardedBy("lock")

    /* renamed from: d */
    private volatile int f9365d = 1;

    /* renamed from: c */
    private volatile long f9364c = 0;

    public zk1(AbstractC1610f fVar) {
        this.f9362a = fVar;
    }

    /* renamed from: e */
    private final void m4609e() {
        long a = this.f9362a.m8247a();
        synchronized (this.f9363b) {
            if (this.f9365d == 3) {
                if (this.f9364c + ((Long) C1674c.m7906c().m6878b(C1842m3.f7220B3)).longValue() <= a) {
                    this.f9365d = 1;
                }
            }
        }
    }

    /* renamed from: f */
    private final void m4608f(int i, int i2) {
        m4609e();
        long a = this.f9362a.m8247a();
        synchronized (this.f9363b) {
            if (this.f9365d == i) {
                this.f9365d = i2;
                if (this.f9365d == 3) {
                    this.f9364c = a;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4613a(boolean z) {
        if (z) {
            m4608f(1, 2);
        } else {
            m4608f(2, 1);
        }
    }

    /* renamed from: b */
    public final boolean m4612b() {
        boolean z;
        synchronized (this.f9363b) {
            m4609e();
            z = this.f9365d == 2;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m4611c() {
        boolean z;
        synchronized (this.f9363b) {
            m4609e();
            z = this.f9365d == 3;
        }
        return z;
    }

    /* renamed from: d */
    public final void m4610d() {
        m4608f(2, 3);
    }
}
