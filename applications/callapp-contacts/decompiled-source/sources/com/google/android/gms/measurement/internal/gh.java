package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gh.class */
public final class gh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29690a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29691b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gh(gv gvVar, AtomicReference atomicReference) {
        this.f29691b = gvVar;
        this.f29690a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29690a) {
            this.f29690a.set(Boolean.valueOf(this.f29691b.t.g.d(this.f29691b.t.o().ad_(), dc.J)));
            this.f29690a.notify();
        }
    }
}
