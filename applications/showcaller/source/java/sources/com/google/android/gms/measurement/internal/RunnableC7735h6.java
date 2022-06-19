package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.h6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h6.class */
public final class RunnableC7735h6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35306d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35307e;

    public RunnableC7735h6(C7893v6 c7893v6, AtomicReference atomicReference) {
        this.f35307e = c7893v6;
        this.f35306d = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35306d) {
            this.f35306d.set(Boolean.valueOf(this.f35307e.f35460a.m6006y().m6471u(this.f35307e.f35460a.m6027d().m6430n(), C7672c3.f35047L)));
            this.f35306d.notify();
        }
    }
}
