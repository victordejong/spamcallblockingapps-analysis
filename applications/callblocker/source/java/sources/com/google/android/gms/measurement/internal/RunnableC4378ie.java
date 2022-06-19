package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.ie */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ie.class */
public final class RunnableC4378ie implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4450r f19130a;

    /* renamed from: b */
    private final /* synthetic */ String f19131b;

    /* renamed from: c */
    private final /* synthetic */ AbstractC4132mj f19132c;

    /* renamed from: d */
    private final /* synthetic */ C4367hu f19133d;

    public RunnableC4378ie(C4367hu c4367hu, C4450r c4450r, String str, AbstractC4132mj abstractC4132mj) {
        this.f19133d = c4367hu;
        this.f19130a = c4450r;
        this.f19131b = str;
        this.f19132c = abstractC4132mj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        byte[] bArr = null;
        byte[] bArr2 = null;
        try {
            try {
                abstractC4255dq = this.f19133d.f19103b;
                if (abstractC4255dq == null) {
                    bArr = null;
                    bArr2 = null;
                    this.f19133d.mo4030v().m4655x_().m4654a("Discarding data. Failed to send event to service to bundle");
                    this.f19133d.mo4032t().m4126a(this.f19132c, (byte[]) null);
                } else {
                    byte[] mo4458a = abstractC4255dq.mo4458a(this.f19130a, this.f19131b);
                    bArr = mo4458a;
                    bArr2 = mo4458a;
                    this.f19133d.m4338K();
                    this.f19133d.mo4032t().m4126a(this.f19132c, mo4458a);
                }
            } catch (RemoteException e) {
                this.f19133d.mo4030v().m4655x_().m4653a("Failed to send event to the service to bundle", e);
                this.f19133d.mo4032t().m4126a(this.f19132c, bArr);
            }
        } catch (Throwable th) {
            this.f19133d.mo4032t().m4126a(this.f19132c, bArr2);
            throw th;
        }
    }
}
