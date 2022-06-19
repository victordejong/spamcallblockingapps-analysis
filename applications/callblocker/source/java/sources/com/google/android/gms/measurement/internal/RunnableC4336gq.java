package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C4054jm;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gq.class */
public final class RunnableC4336gq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ long f19021a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19022b;

    public RunnableC4336gq(C4330gk c4330gk, long j) {
        this.f19022b = c4330gk;
        this.f19021a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4330gk c4330gk = this.f19022b;
        long j = this.f19021a;
        c4330gk.mo4037o();
        c4330gk.mo4039m();
        c4330gk.m4711i();
        c4330gk.mo4030v().m4658i().m4654a("Resetting analytics data (FE)");
        C4399iz mo4276g = c4330gk.mo4276g();
        mo4276g.mo4037o();
        mo4276g.f19200b.m4267a();
        boolean m4574B = c4330gk.f18970z.m4574B();
        C4277el mo4029w = c4330gk.mo4029w();
        mo4029w.f18766h.m4623a(j);
        if (!TextUtils.isEmpty(mo4029w.mo4029w().f18780v.m4619a())) {
            mo4029w.f18780v.m4618a(null);
        }
        if (C4054jm.m5040b() && mo4029w.mo4027x().m4804a(C4452t.f19462aw)) {
            mo4029w.f18775q.m4623a(0L);
        }
        if (!mo4029w.mo4027x().m4792d()) {
            mo4029w.m4635c(!m4574B);
        }
        mo4029w.f18781w.m4618a(null);
        mo4029w.f18782x.m4623a(0L);
        mo4029w.f18783y.m4621a(null);
        c4330gk.mo4279d().m4345D();
        if (C4054jm.m5040b() && c4330gk.mo4027x().m4804a(C4452t.f19462aw)) {
            c4330gk.mo4276g().f19199a.m4256a();
        }
        c4330gk.f18997c = !m4574B;
        this.f19022b.mo4279d().m4319a(new AtomicReference<>());
    }
}
