package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gl.class */
public final class RunnableC14026gl implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51706a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51707b;

    public RunnableC14026gl(C14036gv c14036gv, AtomicReference atomicReference) {
        this.f51707b = c14036gv;
        this.f51706a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51706a) {
            AtomicReference atomicReference = this.f51706a;
            C13959e c13959e = this.f51707b.f51637t.f51529g;
            String ad_ = this.f51707b.f51637t.m11982o().ad_();
            C13933da<String> c13933da = C13935dc.f51288K;
            atomicReference.set(ad_ == null ? c13933da.m12117a(null) : c13933da.m12117a(c13959e.f51437a.mo12029a(ad_, c13933da.f51271a)));
            this.f51706a.notify();
        }
    }
}
