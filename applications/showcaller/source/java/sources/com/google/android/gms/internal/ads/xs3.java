package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xs3.class */
final class xs3 implements ur3 {

    /* renamed from: a */
    final /* synthetic */ ur3 f32286a;

    /* renamed from: b */
    final /* synthetic */ ys3 f32287b;

    public xs3(ys3 ys3Var, ur3 ur3Var) {
        this.f32287b = ys3Var;
        this.f32286a = ur3Var;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return this.f32286a.mo9064a();
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        long j2;
        long j3;
        sr3 mo9063b = this.f32286a.mo9063b(j);
        vr3 vr3Var = mo9063b.f29638a;
        long j4 = vr3Var.f31337b;
        long j5 = vr3Var.f31338c;
        j2 = this.f32287b.f32641d;
        vr3 vr3Var2 = new vr3(j4, j5 + j2);
        vr3 vr3Var3 = mo9063b.f29639b;
        long j6 = vr3Var3.f31337b;
        long j7 = vr3Var3.f31338c;
        j3 = this.f32287b.f32641d;
        return new sr3(vr3Var2, new vr3(j6, j7 + j3));
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f32286a.zzg();
    }
}
