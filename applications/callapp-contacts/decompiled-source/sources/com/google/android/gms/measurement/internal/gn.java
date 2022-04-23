package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gn.class */
public final class gn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29705a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29706b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gn(gv gvVar, AtomicReference atomicReference) {
        this.f29706b = gvVar;
        this.f29705a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29705a) {
            this.f29705a.set(Integer.valueOf(this.f29706b.t.g.b(this.f29706b.t.o().ad_(), dc.M)));
            this.f29705a.notify();
        }
    }
}
