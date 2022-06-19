package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/en1.class */
public final class en1 implements u51, n41, b31, z51 {

    /* renamed from: d */
    private final nn1 f22292d;

    /* renamed from: e */
    private final wn1 f22293e;

    public en1(nn1 nn1Var, wn1 wn1Var) {
        this.f22292d = nn1Var;
        this.f22293e = wn1Var;
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        this.f22292d.m12841c().put("action", "ftl");
        this.f22292d.m12841c().put("ftl", String.valueOf(zzbczVar.f33653d));
        this.f22292d.m12841c().put("ed", zzbczVar.f33655f);
        this.f22293e.m8768a(this.f22292d.m12841c());
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: S */
    public final void mo10409S(rj2 rj2Var) {
        this.f22292d.m12843a(rj2Var);
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        this.f22292d.m12841c().put("action", "loaded");
        this.f22293e.m8768a(this.f22292d.m12841c());
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: u */
    public final void mo10408u(zzcbj zzcbjVar) {
        this.f22292d.m12842b(zzcbjVar.f33826d);
    }

    @Override // com.google.android.gms.internal.ads.z51
    /* renamed from: y */
    public final void mo8520y(boolean z) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            this.f22292d.m12841c().put("scar", "true");
        }
    }
}
