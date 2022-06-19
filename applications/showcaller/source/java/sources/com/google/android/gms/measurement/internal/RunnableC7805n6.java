package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.n6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n6.class */
public final class RunnableC7805n6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35487d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35488e;

    public RunnableC7805n6(C7893v6 c7893v6, AtomicReference atomicReference) {
        this.f35488e = c7893v6;
        this.f35487d = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35487d) {
            this.f35487d.set(Integer.valueOf(this.f35488e.f35460a.m6006y().m6474r(this.f35488e.f35460a.m6027d().m6430n(), C7672c3.f35050O)));
            this.f35487d.notify();
        }
    }
}
