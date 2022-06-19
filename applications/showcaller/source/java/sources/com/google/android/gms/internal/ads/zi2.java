package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zi2.class */
final class zi2 implements p42<fk1> {

    /* renamed from: a */
    final /* synthetic */ bj2 f32961a;

    public zi2(bj2 bj2Var) {
        this.f32961a = bj2Var;
    }

    @Override // com.google.android.gms.internal.ads.p42
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8353b(fk1 fk1Var) {
        fk1 fk1Var2;
        fk1 fk1Var3 = fk1Var;
        synchronized (this.f32961a) {
            this.f32961a.f20492g = fk1Var3;
            fk1Var2 = this.f32961a.f20492g;
            fk1Var2.mo9021a();
        }
    }

    @Override // com.google.android.gms.internal.ads.p42
    public final void zza() {
        synchronized (this.f32961a) {
            this.f32961a.f20492g = null;
        }
    }
}
