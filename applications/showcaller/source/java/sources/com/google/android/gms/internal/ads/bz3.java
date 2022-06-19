package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bz3.class */
public final class bz3 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f21040d;

    /* renamed from: e */
    final /* synthetic */ long f21041e;

    /* renamed from: f */
    final /* synthetic */ dz3 f21042f;

    public bz3(dz3 dz3Var, String str, long j) {
        this.f21042f = dz3Var;
        this.f21040d = str;
        this.f21041e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lz3 lz3Var;
        lz3 lz3Var2;
        lz3Var = this.f21042f.f21943d;
        lz3Var.m13381a(this.f21040d, this.f21041e);
        lz3Var2 = this.f21042f.f21943d;
        lz3Var2.m13380b(this.f21042f.toString());
    }
}
