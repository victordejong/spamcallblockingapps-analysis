package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.y5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y5.class */
final class RunnableC2374y5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ boolean f10497b;

    /* renamed from: c */
    final /* synthetic */ v6 f10498c;

    RunnableC2374y5(v6 v6Var, boolean z) {
        this.f10498c = v6Var;
        this.f10497b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean i = ((m5) this.f10498c).a.i();
        boolean h = ((m5) this.f10498c).a.h();
        ((m5) this.f10498c).a.g(this.f10497b);
        if (h == this.f10497b) {
            ((m5) this.f10498c).a.t().w().m3875b("Default data collection state already set to", Boolean.valueOf(this.f10497b));
        }
        if (((m5) this.f10498c).a.i() == i || ((m5) this.f10498c).a.i() != ((m5) this.f10498c).a.h()) {
            ((m5) this.f10498c).a.t().r().m3874c("Default data collection is different than actual status", Boolean.valueOf(this.f10497b), Boolean.valueOf(i));
        }
        v6.K(this.f10498c);
    }
}
