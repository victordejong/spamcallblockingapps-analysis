package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ff2.class */
final class ff2 implements p42<qw0> {

    /* renamed from: a */
    final /* synthetic */ gf2 f22879a;

    public ff2(gf2 gf2Var) {
        this.f22879a = gf2Var;
    }

    @Override // com.google.android.gms.internal.ads.p42
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8353b(qw0 qw0Var) {
        xe2 xe2Var;
        xe2 xe2Var2;
        qw0 qw0Var2 = qw0Var;
        synchronized (this.f22879a) {
            qw0 qw0Var3 = this.f22879a.f23330l;
            if (qw0Var3 != null) {
                qw0Var3.mo9020b();
            }
            gf2 gf2Var = this.f22879a;
            gf2Var.f23330l = qw0Var2;
            qw0Var2.m11783g(gf2Var);
            xe2Var = this.f22879a.f23327i;
            gf2 gf2Var2 = this.f22879a;
            xe2Var2 = gf2Var2.f23327i;
            xe2Var.m9230y(new rw0(qw0Var2, gf2Var2, xe2Var2));
            qw0Var2.mo9021a();
        }
    }

    @Override // com.google.android.gms.internal.ads.p42
    public final void zza() {
        synchronized (this.f22879a) {
            this.f22879a.f23330l = null;
        }
    }
}
