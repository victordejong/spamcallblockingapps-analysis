package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jk1.class */
final /* synthetic */ class jk1 implements Runnable {

    /* renamed from: b */
    private final kk1 f6899b;

    /* renamed from: c */
    private final zzym f6900c;

    jk1(kk1 kk1Var, zzym zzymVar) {
        this.f6899b = kk1Var;
        this.f6900c = zzymVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        kk1 kk1Var = this.f6899b;
        nk1.d(kk1Var.c).f0(this.f6900c);
    }
}
