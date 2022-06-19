package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amc.class */
public final class amc implements arg, dtr {

    /* renamed from: a */
    private final cgr f9988a;

    /* renamed from: b */
    private final aqh f9989b;

    /* renamed from: c */
    private final ark f9990c;

    /* renamed from: d */
    private final AtomicBoolean f9991d = new AtomicBoolean();

    /* renamed from: e */
    private final AtomicBoolean f9992e = new AtomicBoolean();

    public amc(cgr cgrVar, aqh aqhVar, ark arkVar) {
        this.f9988a = cgrVar;
        this.f9989b = aqhVar;
        this.f9990c = arkVar;
    }

    /* renamed from: b */
    private final void m12949b() {
        if (this.f9991d.compareAndSet(false, true)) {
            this.f9989b.m12811a();
        }
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        synchronized (this) {
            if (this.f9988a.f12983e != 1) {
                m12949b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        if (this.f9988a.f12983e == 1 && dttVar.f15739j) {
            m12949b();
        }
        if (!dttVar.f15739j || !this.f9992e.compareAndSet(false, true)) {
            return;
        }
        this.f9990c.m12794a();
    }
}
