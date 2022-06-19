package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ms2.class */
final class ms2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f7639b;

    /* renamed from: c */
    final /* synthetic */ long f7640c;

    /* renamed from: d */
    final /* synthetic */ rs2 f7641d;

    public ms2(rs2 rs2Var, int i, long j) {
        this.f7641d = rs2Var;
        this.f7639b = i;
        this.f7640c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ss2 ss2Var;
        ss2Var = this.f7641d.f8406b;
        ss2Var.m5589l(this.f7639b, this.f7640c);
    }
}
