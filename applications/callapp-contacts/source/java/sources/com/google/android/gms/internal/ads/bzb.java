package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzb.class */
public final class bzb implements cal<alq> {

    /* renamed from: a */
    private final /* synthetic */ byy f45149a;

    public bzb(byy byyVar) {
        this.f45149a = byyVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final void mo17373a() {
        synchronized (this.f45149a) {
            this.f45149a.f45136g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    /* renamed from: a */
    public final /* synthetic */ void mo17372a(alq alqVar) {
        alq alqVar2;
        alq alqVar3;
        alq alqVar4;
        alq alqVar5 = alqVar;
        synchronized (this.f45149a) {
            alqVar2 = this.f45149a.f45136g;
            if (alqVar2 != null) {
                alqVar4 = this.f45149a.f45136g;
                alqVar4.mo18235a();
            }
            this.f45149a.f45136g = alqVar5;
            alqVar3 = this.f45149a.f45136g;
            alqVar3.mo18208h();
        }
    }
}
