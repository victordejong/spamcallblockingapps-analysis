package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bj1.class */
final /* synthetic */ class bj1 implements Runnable {

    /* renamed from: b */
    private final dj1 f6154b;

    /* renamed from: c */
    private final zzym f6155c;

    bj1(dj1 dj1Var, zzym zzymVar) {
        this.f6154b = dj1Var;
        this.f6155c = zzymVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dj1 dj1Var = this.f6154b;
        ej1.g(dj1Var.c).f0(this.f6155c);
    }
}
