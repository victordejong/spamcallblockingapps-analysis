package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzht.class */
public final class zzht implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9449f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9450g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzht(zzgy zzgyVar, AtomicReference atomicReference) {
        this.f9450g = zzgyVar;
        this.f9449f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9449f) {
            this.f9449f.set(Integer.valueOf(this.f9450g.m11311l().m10878t(this.f9450g.m11599p().m11590B(), zzat.f8913N)));
            this.f9449f.notify();
        }
    }
}
