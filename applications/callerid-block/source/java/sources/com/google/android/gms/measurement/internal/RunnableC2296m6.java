package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.m6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m6.class */
final class RunnableC2296m6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10291b;

    /* renamed from: c */
    final /* synthetic */ v6 f10292c;

    RunnableC2296m6(v6 v6Var, AtomicReference atomicReference) {
        this.f10292c = v6Var;
        this.f10291b = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10291b) {
            this.f10291b.set(Long.valueOf(((m5) this.f10292c).a.z().q(((m5) this.f10292c).a.d().n(), C2232c3.f10024M)));
            this.f10291b.notify();
        }
    }
}
