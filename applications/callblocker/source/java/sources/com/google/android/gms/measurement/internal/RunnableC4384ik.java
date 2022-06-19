package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ik */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ik.class */
public final class RunnableC4384ik implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19158a;

    /* renamed from: b */
    private final /* synthetic */ String f19159b;

    /* renamed from: c */
    private final /* synthetic */ String f19160c;

    /* renamed from: d */
    private final /* synthetic */ String f19161d;

    /* renamed from: e */
    private final /* synthetic */ boolean f19162e;

    /* renamed from: f */
    private final /* synthetic */ C4430kb f19163f;

    /* renamed from: g */
    private final /* synthetic */ C4367hu f19164g;

    public RunnableC4384ik(C4367hu c4367hu, AtomicReference atomicReference, String str, String str2, String str3, boolean z, C4430kb c4430kb) {
        this.f19164g = c4367hu;
        this.f19158a = atomicReference;
        this.f19159b = str;
        this.f19160c = str2;
        this.f19161d = str3;
        this.f19162e = z;
        this.f19163f = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        synchronized (this.f19158a) {
            try {
                abstractC4255dq = this.f19164g.f19103b;
            } catch (RemoteException e) {
                this.f19164g.mo4030v().m4655x_().m4651a("(legacy) Failed to get user properties; remote exception", C4263dy.m4669a(this.f19159b), this.f19160c, e);
                this.f19158a.set(Collections.emptyList());
                this.f19158a.notify();
            }
            if (abstractC4255dq == null) {
                this.f19164g.mo4030v().m4655x_().m4651a("(legacy) Failed to get user properties; not connected to service", C4263dy.m4669a(this.f19159b), this.f19160c, this.f19161d);
                this.f19158a.set(Collections.emptyList());
                this.f19158a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f19159b)) {
                this.f19158a.set(abstractC4255dq.mo4452a(this.f19160c, this.f19161d, this.f19162e, this.f19163f));
            } else {
                this.f19158a.set(abstractC4255dq.mo4453a(this.f19159b, this.f19160c, this.f19161d, this.f19162e));
            }
            this.f19164g.m4338K();
            this.f19158a.notify();
        }
    }
}
