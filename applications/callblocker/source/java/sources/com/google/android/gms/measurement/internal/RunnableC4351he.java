package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.he */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/he.class */
public final class RunnableC4351he implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ long f19055a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19056b;

    public RunnableC4351he(C4330gk c4330gk, long j) {
        this.f19056b = c4330gk;
        this.f19055a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19056b.mo4029w().f18769k.m4623a(this.f19055a);
        this.f19056b.mo4030v().m4658i().m4653a("Minimum session duration set", Long.valueOf(this.f19055a));
    }
}
