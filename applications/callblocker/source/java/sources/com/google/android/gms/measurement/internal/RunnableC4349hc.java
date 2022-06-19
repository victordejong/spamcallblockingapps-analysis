package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.hc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hc.class */
public final class RunnableC4349hc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f19052a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19053b;

    public RunnableC4349hc(C4330gk c4330gk, boolean z) {
        this.f19053b = c4330gk;
        this.f19052a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m4574B = this.f19053b.f18970z.m4574B();
        boolean m4575A = this.f19053b.f18970z.m4575A();
        this.f19053b.f18970z.m4557a(this.f19052a);
        if (m4575A == this.f19052a) {
            this.f19053b.f18970z.mo4030v().m4657j().m4653a("Default data collection state already set to", Boolean.valueOf(this.f19052a));
        }
        if (this.f19053b.f18970z.m4574B() == m4574B || this.f19053b.f18970z.m4574B() != this.f19053b.f18970z.m4575A()) {
            this.f19053b.f18970z.mo4030v().m4660g().m4652a("Default data collection is different than actual status", Boolean.valueOf(this.f19052a), Boolean.valueOf(m4574B));
        }
        this.f19053b.m4419M();
    }
}
