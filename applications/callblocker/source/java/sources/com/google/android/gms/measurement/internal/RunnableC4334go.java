package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.go */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/go.class */
public final class RunnableC4334go implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ long f19014a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19015b;

    public RunnableC4334go(C4330gk c4330gk, long j) {
        this.f19015b = c4330gk;
        this.f19014a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19015b.mo4029w().f18770l.m4623a(this.f19014a);
        this.f19015b.mo4030v().m4658i().m4653a("Session timeout duration set", Long.valueOf(this.f19014a));
    }
}
