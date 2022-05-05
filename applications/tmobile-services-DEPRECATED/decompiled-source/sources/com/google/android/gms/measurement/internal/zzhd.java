package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhd.class */
public final class zzhd implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9400f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9401g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhd(zzgy zzgyVar, AtomicReference atomicReference) {
        this.f9401g = zzgyVar;
        this.f9400f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9400f) {
            this.f9400f.set(Boolean.valueOf(this.f9401g.m11311l().m10891L(this.f9401g.m11599p().m11590B())));
            this.f9400f.notify();
        }
    }
}
