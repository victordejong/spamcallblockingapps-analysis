package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.amh;
import com.google.android.gms.internal.ads.aoz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ced.class */
final class ced<R extends aoz<AdT>, AdT extends amh> implements cjo<AdT> {

    /* renamed from: a */
    private final cev<R, ciy<AdT>> f12819a;

    public ced(cev<R, ciy<AdT>> cevVar) {
        this.f12819a = cevVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cjo
    /* renamed from: a */
    public final crt<ciy<AdT>> mo11194a(cjn cjnVar) {
        cec cecVar = (cec) cjnVar;
        return this.f12819a.mo11429a(cecVar.f12813b, cecVar.f12812a);
    }

    @Override // com.google.android.gms.internal.ads.cjo
    /* renamed from: a */
    public final void mo11195a(ciy<AdT> ciyVar) {
        ciyVar.f13158a = this.f12819a.mo11430a().mo12051c();
    }

    @Override // com.google.android.gms.internal.ads.cjo
    /* renamed from: a */
    public final void mo11193a(Throwable th) {
    }
}
