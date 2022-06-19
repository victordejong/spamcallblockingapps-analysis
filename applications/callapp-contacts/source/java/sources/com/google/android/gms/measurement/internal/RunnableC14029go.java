package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.go */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/go.class */
public final class RunnableC14029go implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51712a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51713b;

    public RunnableC14029go(C14036gv c14036gv, AtomicReference atomicReference) {
        this.f51713b = c14036gv;
        this.f51712a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51712a) {
            this.f51712a.set(Double.valueOf(this.f51713b.f51637t.f51529g.m12063c(this.f51713b.f51637t.m11982o().ad_(), C13935dc.f51291N)));
            this.f51712a.notify();
        }
    }
}
