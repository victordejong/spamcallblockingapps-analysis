package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.l6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l6.class */
final class RunnableC2291l6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10273b;

    /* renamed from: c */
    final /* synthetic */ v6 f10274c;

    RunnableC2291l6(v6 v6Var, AtomicReference atomicReference) {
        this.f10274c = v6Var;
        this.f10273b = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10273b) {
            this.f10273b.set(((m5) this.f10274c).a.z().p(((m5) this.f10274c).a.d().n(), C2232c3.f10023L));
            this.f10273b.notify();
        }
    }
}
