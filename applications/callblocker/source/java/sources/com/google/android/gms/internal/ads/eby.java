package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eby.class */
public final class eby extends dze {

    /* renamed from: a */
    final /* synthetic */ ebw f16271a;

    /* JADX INFO: Access modifiers changed from: private */
    public eby(ebw ebwVar) {
        this.f16271a = ebwVar;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final void mo7972a(dya dyaVar) {
        mo7971a(dyaVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final void mo7971a(dya dyaVar, int i) {
        C3645yb.m6749c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        C3634xr.f17613a.post(new ecb(this));
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final boolean mo7973a() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: b */
    public final String mo7970b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: c */
    public final String mo7969c() {
        return null;
    }
}
