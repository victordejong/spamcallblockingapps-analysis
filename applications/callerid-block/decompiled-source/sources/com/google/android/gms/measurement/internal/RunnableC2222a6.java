package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a6.class */
final class RunnableC2222a6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ long f9978b;

    /* renamed from: c */
    final /* synthetic */ v6 f9979c;

    RunnableC2222a6(v6 v6Var, long j) {
        this.f9979c = v6Var;
        this.f9978b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((m5) this.f9979c).a.A().k.m4025b(this.f9978b);
        ((m5) this.f9979c).a.t().u().m3875b("Session timeout duration set", Long.valueOf(this.f9978b));
    }
}
