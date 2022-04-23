package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.h6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h6.class */
final class RunnableC2269h6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10222b;

    /* renamed from: c */
    final /* synthetic */ v6 f10223c;

    RunnableC2269h6(v6 v6Var, AtomicReference atomicReference) {
        this.f10223c = v6Var;
        this.f10222b = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10222b) {
            this.f10222b.set(Boolean.valueOf(((m5) this.f10223c).a.z().w(((m5) this.f10223c).a.d().n(), C2232c3.f10022K)));
            this.f10222b.notify();
        }
    }
}
