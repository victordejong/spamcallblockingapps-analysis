package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.ib */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ib.class */
public final class RunnableC4375ib implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4362hp f19125a;

    /* renamed from: b */
    private final /* synthetic */ C4367hu f19126b;

    public RunnableC4375ib(C4367hu c4367hu, C4362hp c4362hp) {
        this.f19126b = c4367hu;
        this.f19125a = c4362hp;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19126b.f19103b;
        if (abstractC4255dq == null) {
            this.f19126b.mo4030v().m4655x_().m4654a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f19125a == null) {
                abstractC4255dq.mo4466a(0L, (String) null, (String) null, this.f19126b.mo4034r().getPackageName());
            } else {
                abstractC4255dq.mo4466a(this.f19125a.f19089c, this.f19125a.f19087a, this.f19125a.f19088b, this.f19126b.mo4034r().getPackageName());
            }
            this.f19126b.m4338K();
        } catch (RemoteException e) {
            this.f19126b.mo4030v().m4655x_().m4653a("Failed to send current screen to the service", e);
        }
    }
}
