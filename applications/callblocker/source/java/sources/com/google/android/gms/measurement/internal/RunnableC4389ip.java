package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ip */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ip.class */
final class RunnableC4389ip implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4255dq f19181a;

    /* renamed from: b */
    private final /* synthetic */ ServiceConnectionC4386im f19182b;

    public RunnableC4389ip(ServiceConnectionC4386im serviceConnectionC4386im, AbstractC4255dq abstractC4255dq) {
        this.f19182b = serviceConnectionC4386im;
        this.f19181a = abstractC4255dq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19182b) {
            this.f19182b.f19171b = false;
            if (!this.f19182b.f19170a.m4347B()) {
                this.f19182b.f19170a.mo4030v().m4657j().m4654a("Connected to service");
                this.f19182b.f19170a.m4329a(this.f19181a);
            }
        }
    }
}
