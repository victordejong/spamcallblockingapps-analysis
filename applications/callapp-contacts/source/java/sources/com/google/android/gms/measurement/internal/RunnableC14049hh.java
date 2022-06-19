package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.hh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hh.class */
public final class RunnableC14049hh implements Runnable {

    /* renamed from: a */
    final /* synthetic */ long f51784a;

    /* renamed from: b */
    final /* synthetic */ C14052hk f51785b;

    public RunnableC14049hh(C14052hk c14052hk, long j) {
        this.f51785b = c14052hk;
        this.f51784a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51785b.f51637t.m11981p().m12125a(this.f51784a);
        this.f51785b.f51791b = null;
    }
}
