package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.v8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v8.class */
public final class C2354v8 {

    /* renamed from: a */
    private RunnableC2350u8 f10450a;

    /* renamed from: b */
    final /* synthetic */ z8 f10451b;

    C2354v8(z8 z8Var) {
        this.f10451b = z8Var;
    }

    /* renamed from: a */
    final void m3829a() {
        this.f10451b.f();
        if (this.f10450a != null) {
            z8.p(this.f10451b).removeCallbacks(this.f10450a);
        }
        if (((m5) this.f10451b).a.z().w((String) null, C2232c3.f10075s0)) {
            ((m5) this.f10451b).a.A().q.m3806b(false);
        }
    }

    /* renamed from: b */
    final void m3828b(long j) {
        this.f10450a = new RunnableC2350u8(this, ((m5) this.f10451b).a.v().m8247a(), j);
        z8.p(this.f10451b).postDelayed(this.f10450a, 2000L);
    }
}
