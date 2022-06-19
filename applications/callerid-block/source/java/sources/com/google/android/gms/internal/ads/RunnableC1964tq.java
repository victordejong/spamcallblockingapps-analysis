package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C1433l1;
/* renamed from: com.google.android.gms.internal.ads.tq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tq.class */
final class RunnableC1964tq implements Runnable {

    /* renamed from: b */
    private final zzbdf f8708b;

    /* renamed from: c */
    private boolean f8709c = false;

    RunnableC1964tq(zzbdf zzbdfVar) {
        this.f8708b = zzbdfVar;
    }

    /* renamed from: c */
    private final void m5498c() {
        tv1 tv1Var = C1433l1.f5594i;
        tv1Var.removeCallbacks(this);
        tv1Var.postDelayed(this, 250L);
    }

    /* renamed from: a */
    public final void m5500a() {
        this.f8709c = true;
        this.f8708b.m();
    }

    /* renamed from: b */
    public final void m5499b() {
        this.f8709c = false;
        m5498c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f8709c) {
            this.f8708b.m();
            m5498c();
        }
    }
}
