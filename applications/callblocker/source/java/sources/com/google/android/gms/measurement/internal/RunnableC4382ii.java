package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ii */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ii.class */
public final class RunnableC4382ii implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19146a;

    /* renamed from: b */
    private final /* synthetic */ String f19147b;

    /* renamed from: c */
    private final /* synthetic */ String f19148c;

    /* renamed from: d */
    private final /* synthetic */ String f19149d;

    /* renamed from: e */
    private final /* synthetic */ C4430kb f19150e;

    /* renamed from: f */
    private final /* synthetic */ C4367hu f19151f;

    public RunnableC4382ii(C4367hu c4367hu, AtomicReference atomicReference, String str, String str2, String str3, C4430kb c4430kb) {
        this.f19151f = c4367hu;
        this.f19146a = atomicReference;
        this.f19147b = str;
        this.f19148c = str2;
        this.f19149d = str3;
        this.f19150e = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        synchronized (this.f19146a) {
            try {
                abstractC4255dq = this.f19151f.f19103b;
            } catch (RemoteException e) {
                this.f19151f.mo4030v().m4655x_().m4651a("(legacy) Failed to get conditional properties; remote exception", C4263dy.m4669a(this.f19147b), this.f19148c, e);
                this.f19146a.set(Collections.emptyList());
                this.f19146a.notify();
            }
            if (abstractC4255dq == null) {
                this.f19151f.mo4030v().m4655x_().m4651a("(legacy) Failed to get conditional properties; not connected to service", C4263dy.m4669a(this.f19147b), this.f19148c, this.f19149d);
                this.f19146a.set(Collections.emptyList());
                this.f19146a.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f19147b)) {
                this.f19146a.set(abstractC4255dq.mo4455a(this.f19148c, this.f19149d, this.f19150e));
            } else {
                this.f19146a.set(abstractC4255dq.mo4454a(this.f19147b, this.f19148c, this.f19149d));
            }
            this.f19151f.m4338K();
            this.f19146a.notify();
        }
    }
}
