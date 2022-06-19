package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gy.class */
public final class RunnableC4344gy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19044a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19045b;

    public RunnableC4344gy(C4330gk c4330gk, AtomicReference atomicReference) {
        this.f19045b = c4330gk;
        this.f19044a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19044a) {
            this.f19044a.set(Long.valueOf(this.f19045b.mo4027x().m4801a(this.f19045b.mo4280c().m4693B(), C4452t.f19402L)));
            this.f19044a.notify();
        }
    }
}
