package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhn.class */
public final class zzhn implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9431f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9432g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhn(zzgy zzgyVar, AtomicReference atomicReference) {
        this.f9432g = zzgyVar;
        this.f9431f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9431f) {
            this.f9431f.set(this.f9432g.m11311l().m10890M(this.f9432g.m11599p().m11590B()));
            this.f9431f.notify();
        }
    }
}
