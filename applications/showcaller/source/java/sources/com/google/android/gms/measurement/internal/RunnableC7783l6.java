package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.l6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l6.class */
public final class RunnableC7783l6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35426d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35427e;

    public RunnableC7783l6(C7893v6 c7893v6, AtomicReference atomicReference) {
        this.f35427e = c7893v6;
        this.f35426d = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35426d) {
            this.f35426d.set(this.f35427e.f35460a.m6006y().m6476p(this.f35427e.f35460a.m6027d().m6430n(), C7672c3.f35048M));
            this.f35426d.notify();
        }
    }
}
