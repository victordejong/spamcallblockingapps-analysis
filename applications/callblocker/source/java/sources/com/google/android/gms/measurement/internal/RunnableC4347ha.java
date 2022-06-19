package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ha */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ha.class */
public final class RunnableC4347ha implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19049a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19050b;

    public RunnableC4347ha(C4330gk c4330gk, AtomicReference atomicReference) {
        this.f19050b = c4330gk;
        this.f19049a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19049a) {
            this.f19049a.set(Double.valueOf(this.f19050b.mo4027x().m4793c(this.f19050b.mo4280c().m4693B(), C4452t.f19404N)));
            this.f19049a.notify();
        }
    }
}
