package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/go.class */
public final class go implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29707a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29708b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public go(gv gvVar, AtomicReference atomicReference) {
        this.f29708b = gvVar;
        this.f29707a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29707a) {
            this.f29707a.set(Double.valueOf(this.f29708b.t.g.c(this.f29708b.t.o().ad_(), dc.N)));
            this.f29707a.notify();
        }
    }
}
