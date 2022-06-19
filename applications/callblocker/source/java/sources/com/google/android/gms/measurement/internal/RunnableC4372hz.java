package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.hz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hz.class */
public final class RunnableC4372hz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f19117a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC4132mj f19118b;

    /* renamed from: c */
    private final /* synthetic */ C4367hu f19119c;

    public RunnableC4372hz(C4367hu c4367hu, C4430kb c4430kb, AbstractC4132mj abstractC4132mj) {
        this.f19119c = c4367hu;
        this.f19117a = c4430kb;
        this.f19118b = abstractC4132mj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        String str = null;
        str = null;
        try {
            abstractC4255dq = this.f19119c.f19103b;
            if (abstractC4255dq == null) {
                this.f19119c.mo4030v().m4655x_().m4654a("Failed to get app instance id");
                this.f19119c.mo4032t().m4129a(this.f19118b, (String) null);
                return;
            }
            str = abstractC4255dq.mo4447c(this.f19117a);
            if (str != null) {
                this.f19119c.mo4284b().m4410a(str);
                this.f19119c.mo4029w().f18768j.m4618a(str);
            }
            this.f19119c.m4338K();
        } catch (RemoteException e) {
            this.f19119c.mo4030v().m4655x_().m4653a("Failed to get app instance id", e);
        } finally {
            this.f19119c.mo4032t().m4129a(this.f19118b, str);
        }
    }
}
