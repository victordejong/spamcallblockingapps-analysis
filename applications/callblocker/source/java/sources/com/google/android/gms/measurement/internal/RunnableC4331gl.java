package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gl.class */
public final class RunnableC4331gl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19002a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19003b;

    public RunnableC4331gl(C4330gk c4330gk, AtomicReference atomicReference) {
        this.f19003b = c4330gk;
        this.f19002a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f19002a) {
            this.f19002a.set(Boolean.valueOf(this.f19003b.mo4027x().m4781h(this.f19003b.mo4280c().m4693B())));
            this.f19002a.notify();
        }
    }
}
