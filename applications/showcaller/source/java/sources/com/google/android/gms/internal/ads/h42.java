package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h42.class */
public final class h42 implements p42<lb1> {

    /* renamed from: a */
    final /* synthetic */ i42 f23801a;

    public h42(i42 i42Var) {
        this.f23801a = i42Var;
    }

    @Override // com.google.android.gms.internal.ads.p42
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8353b(lb1 lb1Var) {
        lb1 lb1Var2;
        lb1 lb1Var3 = lb1Var;
        synchronized (this.f23801a) {
            this.f23801a.f24139j = lb1Var3;
            lb1Var2 = this.f23801a.f24139j;
            lb1Var2.mo9021a();
        }
    }

    @Override // com.google.android.gms.internal.ads.p42
    public final void zza() {
        synchronized (this.f23801a) {
            this.f23801a.f24139j = null;
        }
    }
}
