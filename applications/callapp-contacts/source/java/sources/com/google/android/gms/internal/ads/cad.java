package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cad.class */
public final class cad implements cal<azi> {

    /* renamed from: a */
    private final /* synthetic */ caa f45193a;

    public cad(caa caaVar) {
        this.f45193a = caaVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final void mo17373a() {
        synchronized (this.f45193a) {
            this.f45193a.f45184g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final /* synthetic */ void mo17372a(azi aziVar) {
        azi aziVar2;
        azi aziVar3 = aziVar;
        synchronized (this.f45193a) {
            this.f45193a.f45184g = aziVar3;
            aziVar2 = this.f45193a.f45184g;
            aziVar2.mo18208h();
        }
    }
}
