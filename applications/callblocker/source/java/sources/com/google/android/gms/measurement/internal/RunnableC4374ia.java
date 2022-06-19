package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ia */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ia.class */
public final class RunnableC4374ia implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19122a;

    /* renamed from: b */
    private final /* synthetic */ C4430kb f19123b;

    /* renamed from: c */
    private final /* synthetic */ C4367hu f19124c;

    public RunnableC4374ia(C4367hu c4367hu, AtomicReference atomicReference, C4430kb c4430kb) {
        this.f19124c = c4367hu;
        this.f19122a = atomicReference;
        this.f19123b = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        synchronized (this.f19122a) {
            try {
                abstractC4255dq = this.f19124c.f19103b;
            } catch (RemoteException e) {
                this.f19124c.mo4030v().m4655x_().m4653a("Failed to get app instance id", e);
                this.f19122a.notify();
            }
            if (abstractC4255dq == null) {
                this.f19124c.mo4030v().m4655x_().m4654a("Failed to get app instance id");
                this.f19122a.notify();
                return;
            }
            this.f19122a.set(abstractC4255dq.mo4447c(this.f19123b));
            String str = (String) this.f19122a.get();
            if (str != null) {
                this.f19124c.mo4284b().m4410a(str);
                this.f19124c.mo4029w().f18768j.m4618a(str);
            }
            this.f19124c.m4338K();
            this.f19122a.notify();
        }
    }
}
