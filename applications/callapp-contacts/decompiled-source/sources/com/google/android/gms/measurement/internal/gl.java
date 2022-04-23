package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gl.class */
public final class gl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29701a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29702b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gl(gv gvVar, AtomicReference atomicReference) {
        this.f29702b = gvVar;
        this.f29701a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29701a) {
            AtomicReference atomicReference = this.f29701a;
            e eVar = this.f29702b.t.g;
            String ad_ = this.f29702b.t.o().ad_();
            da<String> daVar = dc.K;
            atomicReference.set(ad_ == null ? daVar.a(null) : daVar.a(eVar.f29535a.a(ad_, daVar.f29477a)));
            this.f29701a.notify();
        }
    }
}
