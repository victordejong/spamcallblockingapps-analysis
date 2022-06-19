package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahd.class */
final class ahd implements btu {

    /* renamed from: a */
    private apb f9516a;

    /* renamed from: b */
    private buk f9517b;

    /* renamed from: c */
    private final /* synthetic */ agf f9518c;

    /* JADX INFO: Access modifiers changed from: private */
    public ahd(agf agfVar) {
        this.f9518c = agfVar;
    }

    @Override // com.google.android.gms.internal.ads.btu
    /* renamed from: a */
    public final /* synthetic */ btu mo11631a(apb apbVar) {
        this.f9516a = (apb) dhz.m9440a(apbVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.btu
    @Deprecated
    /* renamed from: a */
    public final /* synthetic */ btu mo11630a(atf atfVar) {
        dhz.m9440a(atfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.btu
    /* renamed from: a */
    public final /* synthetic */ btu mo11629a(buk bukVar) {
        this.f9517b = (buk) dhz.m9440a(bukVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.btu
    /* renamed from: a */
    public final btv mo11632a() {
        dhz.m9439a(this.f9516a, apb.class);
        dhz.m9439a(this.f9517b, buk.class);
        return new ahg(this.f9518c, this.f9517b, new ann(), new bhx(), this.f9516a, new cih());
    }
}
