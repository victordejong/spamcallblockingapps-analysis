package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.hi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hi.class */
public final class RunnableC14050hi implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14044hc f51786a;

    /* renamed from: b */
    final /* synthetic */ long f51787b;

    /* renamed from: c */
    final /* synthetic */ C14052hk f51788c;

    public RunnableC14050hi(C14052hk c14052hk, C14044hc c14044hc, long j) {
        this.f51788c = c14052hk;
        this.f51786a = c14044hc;
        this.f51787b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51788c.m11823a(this.f51786a, false, this.f51787b);
        C14052hk c14052hk = this.f51788c;
        c14052hk.f51791b = null;
        c14052hk.f51637t.m11984m().m11751a((C14044hc) null);
    }
}
