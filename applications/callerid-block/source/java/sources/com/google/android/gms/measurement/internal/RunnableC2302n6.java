package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.n6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n6.class */
final class RunnableC2302n6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10312b;

    /* renamed from: c */
    final /* synthetic */ v6 f10313c;

    RunnableC2302n6(v6 v6Var, AtomicReference atomicReference) {
        this.f10313c = v6Var;
        this.f10312b = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10312b) {
            this.f10312b.set(Integer.valueOf(((m5) this.f10313c).a.z().r(((m5) this.f10313c).a.d().n(), C2232c3.f10025N)));
            this.f10312b.notify();
        }
    }
}
