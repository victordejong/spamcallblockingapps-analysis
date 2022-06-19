package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gn.class */
public final class RunnableC14028gn implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51710a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51711b;

    public RunnableC14028gn(C14036gv c14036gv, AtomicReference atomicReference) {
        this.f51711b = c14036gv;
        this.f51710a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51710a) {
            this.f51710a.set(Integer.valueOf(this.f51711b.f51637t.f51529g.m12065b(this.f51711b.f51637t.m11982o().ad_(), C13935dc.f51290M)));
            this.f51710a.notify();
        }
    }
}
