package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.ih */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ih.class */
public final class RunnableC4381ih implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f19144a;

    /* renamed from: b */
    private final /* synthetic */ C4367hu f19145b;

    public RunnableC4381ih(C4367hu c4367hu, C4430kb c4430kb) {
        this.f19145b = c4367hu;
        this.f19144a = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19145b.f19103b;
        if (abstractC4255dq == null) {
            this.f19145b.mo4030v().m4655x_().m4654a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            abstractC4255dq.mo4450b(this.f19144a);
            this.f19145b.m4338K();
        } catch (RemoteException e) {
            this.f19145b.mo4030v().m4655x_().m4653a("Failed to send measurementEnabled to the service", e);
        }
    }
}
