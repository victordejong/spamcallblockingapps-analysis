package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.m6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m6.class */
public final class RunnableC7794m6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35461d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35462e;

    public RunnableC7794m6(C7893v6 c7893v6, AtomicReference atomicReference) {
        this.f35462e = c7893v6;
        this.f35461d = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35461d) {
            this.f35461d.set(Long.valueOf(this.f35462e.f35460a.m6006y().m6475q(this.f35462e.f35460a.m6027d().m6430n(), C7672c3.f35049N)));
            this.f35461d.notify();
        }
    }
}
