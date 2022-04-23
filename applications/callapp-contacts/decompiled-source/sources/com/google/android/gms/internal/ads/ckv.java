package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ckv.class */
final class ckv implements cal<all> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ckr f25997a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ckv(ckr ckrVar) {
        this.f25997a = ckrVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final void a() {
        synchronized (this.f25997a) {
            this.f25997a.f25988b = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final /* synthetic */ void a(all allVar) {
        ckb ckbVar;
        ckb ckbVar2;
        all allVar2 = allVar;
        synchronized (this.f25997a) {
            if (this.f25997a.f25988b != null) {
                this.f25997a.f25988b.a();
            }
            this.f25997a.f25988b = allVar2;
            ckr.a(this.f25997a, allVar2);
            ckbVar = this.f25997a.g;
            ckr ckrVar = this.f25997a;
            ckbVar2 = ckrVar.g;
            ckbVar.a(new alk(allVar2, ckrVar, ckbVar2));
            allVar2.h();
        }
    }
}
