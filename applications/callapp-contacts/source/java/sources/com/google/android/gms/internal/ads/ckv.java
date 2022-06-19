package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ckv.class */
final class ckv implements cal<all> {

    /* renamed from: a */
    private final /* synthetic */ ckr f45990a;

    public ckv(ckr ckrVar) {
        this.f45990a = ckrVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final void mo17373a() {
        synchronized (this.f45990a) {
            this.f45990a.f45974b = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final /* synthetic */ void mo17372a(all allVar) {
        ckb ckbVar;
        ckb ckbVar2;
        all allVar2 = allVar;
        synchronized (this.f45990a) {
            if (this.f45990a.f45974b != null) {
                this.f45990a.f45974b.mo18235a();
            }
            this.f45990a.f45974b = allVar2;
            ckr.m17425a(this.f45990a, allVar2);
            ckbVar = this.f45990a.f45979g;
            ckr ckrVar = this.f45990a;
            ckbVar2 = ckrVar.f45979g;
            ckbVar.m17431a(new alk(allVar2, ckrVar, ckbVar2));
            allVar2.mo18208h();
        }
    }
}
