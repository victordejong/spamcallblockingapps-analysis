package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gm.class */
public final class RunnableC14027gm implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51708a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51709b;

    public RunnableC14027gm(C14036gv c14036gv, AtomicReference atomicReference) {
        this.f51709b = c14036gv;
        this.f51708a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51708a) {
            this.f51708a.set(Long.valueOf(this.f51709b.f51637t.f51529g.m12069a(this.f51709b.f51637t.m11982o().ad_(), C13935dc.f51289L)));
            this.f51708a.notify();
        }
    }
}
