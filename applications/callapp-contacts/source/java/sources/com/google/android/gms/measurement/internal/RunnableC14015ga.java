package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ga */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ga.class */
final class RunnableC14015ga implements Runnable {

    /* renamed from: a */
    final /* synthetic */ long f51670a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51671b;

    public RunnableC14015ga(C14036gv c14036gv, long j) {
        this.f51671b = c14036gv;
        this.f51670a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51671b.f51637t.m11991b().f51461g.m12052a(this.f51670a);
        this.f51671b.f51637t.mo11661c().f51402j.m12091a("Session timeout duration set", Long.valueOf(this.f51670a));
    }
}
