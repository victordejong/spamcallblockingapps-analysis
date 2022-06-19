package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cae.class */
public final class cae implements cal<anp> {

    /* renamed from: a */
    private final /* synthetic */ caf f45194a;

    public cae(caf cafVar) {
        this.f45194a = cafVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final void mo17373a() {
        synchronized (this.f45194a) {
            this.f45194a.f45196b = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final /* synthetic */ void mo17372a(anp anpVar) {
        anp anpVar2 = anpVar;
        synchronized (this.f45194a) {
            this.f45194a.f45196b = false;
            this.f45194a.f45195a = anpVar2.f42490l;
            anpVar2.mo18208h();
        }
    }
}
