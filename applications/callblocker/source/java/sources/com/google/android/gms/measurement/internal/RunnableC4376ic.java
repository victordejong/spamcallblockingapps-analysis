package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
/* renamed from: com.google.android.gms.measurement.internal.ic */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ic.class */
public final class RunnableC4376ic implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f19127a;

    /* renamed from: b */
    private final /* synthetic */ C4367hu f19128b;

    public RunnableC4376ic(C4367hu c4367hu, C4430kb c4430kb) {
        this.f19128b = c4367hu;
        this.f19127a = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19128b.f19103b;
        if (abstractC4255dq == null) {
            this.f19128b.mo4030v().m4655x_().m4654a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            abstractC4255dq.mo4463a(this.f19127a);
            this.f19128b.mo4277f().m4703D();
            this.f19128b.m4328a(abstractC4255dq, (AbstractC2663a) null, this.f19127a);
            this.f19128b.m4338K();
        } catch (RemoteException e) {
            this.f19128b.mo4030v().m4655x_().m4653a("Failed to send app launch to the service", e);
        }
    }
}
