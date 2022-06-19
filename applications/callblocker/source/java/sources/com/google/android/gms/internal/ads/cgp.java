package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgp.class */
public final class cgp {

    /* renamed from: a */
    private final AbstractC2708e f12948a;

    /* renamed from: b */
    private final Object f12949b = new Object();
    @GuardedBy("lock")

    /* renamed from: c */
    private volatile int f12950c = cgo.f12944a;

    /* renamed from: d */
    private volatile long f12951d = 0;

    public cgp(AbstractC2708e abstractC2708e) {
        this.f12948a = abstractC2708e;
    }

    /* renamed from: a */
    private final void m11370a(int i, int i2) {
        m11366d();
        long mo13862a = this.f12948a.mo13862a();
        synchronized (this.f12949b) {
            if (this.f12950c != i) {
                return;
            }
            this.f12950c = i2;
            if (this.f12950c == cgo.f12946c) {
                this.f12951d = mo13862a;
            }
        }
    }

    /* renamed from: d */
    private final void m11366d() {
        long mo13862a = this.f12948a.mo13862a();
        synchronized (this.f12949b) {
            if (this.f12950c == cgo.f12946c) {
                if (this.f12951d + ((Long) dyx.m8158e().m7876a(edi.f16462cO)).longValue() <= mo13862a) {
                    this.f12950c = cgo.f12944a;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m11369a(boolean z) {
        if (z) {
            m11370a(cgo.f12944a, cgo.f12945b);
        } else {
            m11370a(cgo.f12945b, cgo.f12944a);
        }
    }

    /* renamed from: a */
    public final boolean m11371a() {
        boolean z;
        synchronized (this.f12949b) {
            m11366d();
            z = this.f12950c == cgo.f12945b;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m11368b() {
        boolean z;
        synchronized (this.f12949b) {
            m11366d();
            z = this.f12950c == cgo.f12946c;
        }
        return z;
    }

    /* renamed from: c */
    public final void m11367c() {
        m11370a(cgo.f12945b, cgo.f12946c);
    }
}
