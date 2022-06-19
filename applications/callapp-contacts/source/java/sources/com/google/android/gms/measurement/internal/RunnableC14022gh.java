package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gh.class */
public final class RunnableC14022gh implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51694a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51695b;

    public RunnableC14022gh(C14036gv c14036gv, AtomicReference atomicReference) {
        this.f51695b = c14036gv;
        this.f51694a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51694a) {
            this.f51694a.set(Boolean.valueOf(this.f51695b.f51637t.f51529g.m12061d(this.f51695b.f51637t.m11982o().ad_(), C13935dc.f51287J)));
            this.f51694a.notify();
        }
    }
}
