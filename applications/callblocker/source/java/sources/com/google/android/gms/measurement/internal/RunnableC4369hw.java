package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.hw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hw.class */
public final class RunnableC4369hw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f19110a;

    /* renamed from: b */
    private final /* synthetic */ C4423jv f19111b;

    /* renamed from: c */
    private final /* synthetic */ C4430kb f19112c;

    /* renamed from: d */
    private final /* synthetic */ C4367hu f19113d;

    public RunnableC4369hw(C4367hu c4367hu, boolean z, C4423jv c4423jv, C4430kb c4430kb) {
        this.f19113d = c4367hu;
        this.f19110a = z;
        this.f19111b = c4423jv;
        this.f19112c = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19113d.f19103b;
        if (abstractC4255dq == null) {
            this.f19113d.mo4030v().m4655x_().m4654a("Discarding data. Failed to set user property");
            return;
        }
        this.f19113d.m4328a(abstractC4255dq, this.f19110a ? null : this.f19111b, this.f19112c);
        this.f19113d.m4338K();
    }
}
