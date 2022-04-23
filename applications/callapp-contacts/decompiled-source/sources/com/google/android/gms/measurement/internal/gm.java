package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gm.class */
public final class gm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29703a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29704b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gm(gv gvVar, AtomicReference atomicReference) {
        this.f29704b = gvVar;
        this.f29703a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29703a) {
            this.f29703a.set(Long.valueOf(this.f29704b.t.g.a(this.f29704b.t.o().ad_(), dc.L)));
            this.f29703a.notify();
        }
    }
}
