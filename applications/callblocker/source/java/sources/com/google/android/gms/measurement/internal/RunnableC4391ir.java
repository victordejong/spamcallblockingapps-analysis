package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ir */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ir.class */
final class RunnableC4391ir implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4255dq f19184a;

    /* renamed from: b */
    private final /* synthetic */ ServiceConnectionC4386im f19185b;

    public RunnableC4391ir(ServiceConnectionC4386im serviceConnectionC4386im, AbstractC4255dq abstractC4255dq) {
        this.f19185b = serviceConnectionC4386im;
        this.f19184a = abstractC4255dq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19185b) {
            this.f19185b.f19171b = false;
            if (!this.f19185b.f19170a.m4347B()) {
                this.f19185b.f19170a.mo4030v().m4658i().m4654a("Connected to remote service");
                this.f19185b.f19170a.m4329a(this.f19184a);
            }
        }
    }
}
