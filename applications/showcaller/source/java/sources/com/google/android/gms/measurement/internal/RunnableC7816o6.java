package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.o6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o6.class */
public final class RunnableC7816o6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35529d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35530e;

    public RunnableC7816o6(C7893v6 c7893v6, AtomicReference atomicReference) {
        this.f35530e = c7893v6;
        this.f35529d = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35529d) {
            this.f35529d.set(Double.valueOf(this.f35530e.f35460a.m6006y().m6472t(this.f35530e.f35460a.m6027d().m6430n(), C7672c3.f35051P)));
            this.f35529d.notify();
        }
    }
}
