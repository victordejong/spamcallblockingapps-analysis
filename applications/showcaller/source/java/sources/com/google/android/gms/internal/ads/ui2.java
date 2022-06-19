package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ui2.class */
public final class ui2 implements p42<fk1> {

    /* renamed from: a */
    final /* synthetic */ vi2 f30630a;

    public ui2(vi2 vi2Var) {
        this.f30630a = vi2Var;
    }

    @Override // com.google.android.gms.internal.ads.p42
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8353b(fk1 fk1Var) {
        fk1 fk1Var2;
        fk1 fk1Var3 = fk1Var;
        synchronized (this.f30630a) {
            this.f30630a.f31199i = fk1Var3;
            fk1Var2 = this.f30630a.f31199i;
            fk1Var2.mo9021a();
        }
    }

    @Override // com.google.android.gms.internal.ads.p42
    public final void zza() {
        synchronized (this.f30630a) {
            this.f30630a.f31199i = null;
        }
    }
}
