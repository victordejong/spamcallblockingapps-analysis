package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.ij */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ij.class */
public final class RunnableC4383ij implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f19152a;

    /* renamed from: b */
    private final /* synthetic */ boolean f19153b;

    /* renamed from: c */
    private final /* synthetic */ C4442kn f19154c;

    /* renamed from: d */
    private final /* synthetic */ C4430kb f19155d;

    /* renamed from: e */
    private final /* synthetic */ C4442kn f19156e;

    /* renamed from: f */
    private final /* synthetic */ C4367hu f19157f;

    public RunnableC4383ij(C4367hu c4367hu, boolean z, boolean z2, C4442kn c4442kn, C4430kb c4430kb, C4442kn c4442kn2) {
        this.f19157f = c4367hu;
        this.f19152a = z;
        this.f19153b = z2;
        this.f19154c = c4442kn;
        this.f19155d = c4430kb;
        this.f19156e = c4442kn2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        abstractC4255dq = this.f19157f.f19103b;
        if (abstractC4255dq == null) {
            this.f19157f.mo4030v().m4655x_().m4654a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f19152a) {
            this.f19157f.m4328a(abstractC4255dq, this.f19153b ? null : this.f19154c, this.f19155d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f19156e.f19354a)) {
                    abstractC4255dq.mo4460a(this.f19154c, this.f19155d);
                } else {
                    abstractC4255dq.mo4461a(this.f19154c);
                }
            } catch (RemoteException e) {
                this.f19157f.mo4030v().m4655x_().m4653a("Failed to send conditional user property to the service", e);
            }
        }
        this.f19157f.m4338K();
    }
}
