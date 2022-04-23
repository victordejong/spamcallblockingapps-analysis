package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhs.class */
public final class zzhs implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9447f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9448g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhs(zzgy zzgyVar, AtomicReference atomicReference) {
        this.f9448g = zzgyVar;
        this.f9447f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9447f) {
            this.f9447f.set(Double.valueOf(this.f9448g.m11311l().m10877u(this.f9448g.m11599p().m11590B(), zzat.f8915O)));
            this.f9447f.notify();
        }
    }
}
