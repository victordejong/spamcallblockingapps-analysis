package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gx.class */
public final class RunnableC4343gx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19042a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19043b;

    public RunnableC4343gx(C4330gk c4330gk, AtomicReference atomicReference) {
        this.f19043b = c4330gk;
        this.f19042a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19042a) {
            this.f19042a.set(Integer.valueOf(this.f19043b.mo4027x().m4796b(this.f19043b.mo4280c().m4693B(), C4452t.f19403M)));
            this.f19042a.notify();
        }
    }
}
