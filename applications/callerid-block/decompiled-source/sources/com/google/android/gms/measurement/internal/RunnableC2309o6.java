package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.o6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o6.class */
final class RunnableC2309o6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10339b;

    /* renamed from: c */
    final /* synthetic */ v6 f10340c;

    RunnableC2309o6(v6 v6Var, AtomicReference atomicReference) {
        this.f10340c = v6Var;
        this.f10339b = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10339b) {
            this.f10339b.set(Double.valueOf(((m5) this.f10340c).a.z().u(((m5) this.f10340c).a.d().n(), C2232c3.f10026O)));
            this.f10339b.notify();
        }
    }
}
