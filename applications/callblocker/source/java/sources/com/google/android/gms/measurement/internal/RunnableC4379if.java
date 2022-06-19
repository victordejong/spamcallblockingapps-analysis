package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.if */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/if.class */
public final class RunnableC4379if implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f19134a;

    /* renamed from: b */
    private final /* synthetic */ boolean f19135b;

    /* renamed from: c */
    private final /* synthetic */ C4450r f19136c;

    /* renamed from: d */
    private final /* synthetic */ C4430kb f19137d;

    /* renamed from: e */
    private final /* synthetic */ String f19138e;

    /* renamed from: f */
    private final /* synthetic */ C4367hu f19139f;

    public RunnableC4379if(C4367hu c4367hu, boolean z, boolean z2, C4450r c4450r, C4430kb c4430kb, String str) {
        this.f19139f = c4367hu;
        this.f19134a = z;
        this.f19135b = z2;
        this.f19136c = c4450r;
        this.f19137d = c4430kb;
        this.f19138e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19139f.f19103b;
        if (abstractC4255dq == null) {
            this.f19139f.mo4030v().m4655x_().m4654a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f19134a) {
            this.f19139f.m4328a(abstractC4255dq, this.f19135b ? null : this.f19136c, this.f19137d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f19138e)) {
                    abstractC4255dq.mo4459a(this.f19136c, this.f19137d);
                } else {
                    abstractC4255dq.mo4457a(this.f19136c, this.f19138e, this.f19139f.mo4030v().m4656k());
                }
            } catch (RemoteException e) {
                this.f19139f.mo4030v().m4655x_().m4653a("Failed to send event to the service", e);
            }
        }
        this.f19139f.m4338K();
    }
}
