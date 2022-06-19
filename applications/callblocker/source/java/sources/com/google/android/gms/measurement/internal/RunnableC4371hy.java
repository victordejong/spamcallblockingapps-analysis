package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.hy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hy.class */
public final class RunnableC4371hy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f19115a;

    /* renamed from: b */
    private final /* synthetic */ C4367hu f19116b;

    public RunnableC4371hy(C4367hu c4367hu, C4430kb c4430kb) {
        this.f19116b = c4367hu;
        this.f19115a = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19116b.f19103b;
        if (abstractC4255dq == null) {
            this.f19116b.mo4030v().m4655x_().m4654a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            abstractC4255dq.mo4446d(this.f19115a);
        } catch (RemoteException e) {
            this.f19116b.mo4030v().m4655x_().m4653a("Failed to reset data on the service: remote exception", e);
        }
        this.f19116b.m4338K();
    }
}
