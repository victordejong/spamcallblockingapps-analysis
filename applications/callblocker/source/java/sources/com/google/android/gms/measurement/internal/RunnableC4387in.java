package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.in */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/in.class */
public final class RunnableC4387in implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f19173a;

    /* renamed from: b */
    private final /* synthetic */ String f19174b;

    /* renamed from: c */
    private final /* synthetic */ boolean f19175c;

    /* renamed from: d */
    private final /* synthetic */ C4430kb f19176d;

    /* renamed from: e */
    private final /* synthetic */ AbstractC4132mj f19177e;

    /* renamed from: f */
    private final /* synthetic */ C4367hu f19178f;

    public RunnableC4387in(C4367hu c4367hu, String str, String str2, boolean z, C4430kb c4430kb, AbstractC4132mj abstractC4132mj) {
        this.f19178f = c4367hu;
        this.f19173a = str;
        this.f19174b = str2;
        this.f19175c = z;
        this.f19176d = c4430kb;
        this.f19177e = abstractC4132mj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        Bundle bundle = new Bundle();
        Bundle bundle2 = bundle;
        Bundle bundle3 = bundle;
        try {
            try {
                abstractC4255dq = this.f19178f.f19103b;
                if (abstractC4255dq == null) {
                    bundle2 = bundle;
                    bundle3 = bundle;
                    this.f19178f.mo4030v().m4655x_().m4652a("Failed to get user properties; not connected to service", this.f19173a, this.f19174b);
                    this.f19178f.mo4032t().m4130a(this.f19177e, bundle);
                } else {
                    Bundle m4106a = C4424jw.m4106a(abstractC4255dq.mo4452a(this.f19173a, this.f19174b, this.f19175c, this.f19176d));
                    bundle2 = m4106a;
                    bundle3 = m4106a;
                    this.f19178f.m4338K();
                    this.f19178f.mo4032t().m4130a(this.f19177e, m4106a);
                }
            } catch (RemoteException e) {
                bundle3 = bundle2;
                this.f19178f.mo4030v().m4655x_().m4652a("Failed to get user properties; remote exception", this.f19173a, e);
                this.f19178f.mo4032t().m4130a(this.f19177e, bundle2);
            }
        } catch (Throwable th) {
            this.f19178f.mo4032t().m4130a(this.f19177e, bundle3);
            throw th;
        }
    }
}
