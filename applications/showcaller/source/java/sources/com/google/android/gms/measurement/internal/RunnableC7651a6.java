package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a6.class */
final class RunnableC7651a6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ long f34988d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f34989e;

    public RunnableC7651a6(C7893v6 c7893v6, long j) {
        this.f34989e = c7893v6;
        this.f34988d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34989e.f35460a.m6005z().f35202l.m6587b(this.f34988d);
        this.f34989e.f35460a.mo6047C().m6188t().m6215b("Session timeout duration set", Long.valueOf(this.f34988d));
    }
}
