package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gg1.class */
final /* synthetic */ class gg1 implements Runnable {

    /* renamed from: b */
    private final hg1 f6651b;

    /* renamed from: c */
    private final zzym f6652c;

    gg1(hg1 hg1Var, zzym zzymVar) {
        this.f6651b = hg1Var;
        this.f6652c = zzymVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        hg1 hg1Var = this.f6651b;
        jg1.g(hg1Var.c).f0(this.f6652c);
    }
}
