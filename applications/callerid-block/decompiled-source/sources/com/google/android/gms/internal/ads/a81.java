package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/a81.class */
final /* synthetic */ class a81 implements Runnable {

    /* renamed from: b */
    private final b81 f5948b;

    /* renamed from: c */
    private final zzym f5949c;

    a81(b81 b81Var, zzym zzymVar) {
        this.f5948b = b81Var;
        this.f5949c = zzymVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b81 b81Var = this.f5948b;
        c81.e(b81Var.c).m5784e().m5306f0(this.f5949c);
    }
}
