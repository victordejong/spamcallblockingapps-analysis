package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ns2.class */
final class ns2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f7790b;

    /* renamed from: c */
    final /* synthetic */ int f7791c;

    /* renamed from: d */
    final /* synthetic */ int f7792d;

    /* renamed from: e */
    final /* synthetic */ float f7793e;

    /* renamed from: f */
    final /* synthetic */ rs2 f7794f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ns2(rs2 rs2Var, int i, int i2, int i3, float f) {
        this.f7794f = rs2Var;
        this.f7790b = i;
        this.f7791c = i2;
        this.f7792d = i3;
        this.f7793e = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ss2 ss2Var;
        ss2Var = this.f7794f.f8406b;
        ss2Var.m5591g(this.f7790b, this.f7791c, this.f7792d, this.f7793e);
    }
}
