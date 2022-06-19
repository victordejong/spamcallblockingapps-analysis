package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gt.class */
public final class RunnableC4339gt implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19027a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19028b;

    public RunnableC4339gt(C4330gk c4330gk, AtomicReference atomicReference) {
        this.f19028b = c4330gk;
        this.f19027a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19027a) {
            this.f19027a.set(this.f19028b.mo4027x().m4779i(this.f19028b.mo4280c().m4693B()));
            this.f19027a.notify();
        }
    }
}
