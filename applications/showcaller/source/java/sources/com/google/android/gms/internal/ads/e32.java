package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e32.class */
public final class e32 implements p42<xw0> {

    /* renamed from: a */
    final /* synthetic */ f32 f21993a;

    public e32(f32 f32Var) {
        this.f21993a = f32Var;
    }

    @Override // com.google.android.gms.internal.ads.p42
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8353b(xw0 xw0Var) {
        xw0 xw0Var2;
        xw0 xw0Var3;
        xw0 xw0Var4;
        xw0 xw0Var5 = xw0Var;
        synchronized (this.f21993a) {
            xw0Var2 = this.f21993a.f22722j;
            if (xw0Var2 != null) {
                xw0Var4 = this.f21993a.f22722j;
                xw0Var4.mo9020b();
            }
            this.f21993a.f22722j = xw0Var5;
            xw0Var3 = this.f21993a.f22722j;
            xw0Var3.mo9021a();
        }
    }

    @Override // com.google.android.gms.internal.ads.p42
    public final void zza() {
        synchronized (this.f21993a) {
            this.f21993a.f22722j = null;
        }
    }
}
