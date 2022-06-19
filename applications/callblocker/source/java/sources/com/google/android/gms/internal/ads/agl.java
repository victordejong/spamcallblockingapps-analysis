package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agl.class */
final class agl implements ajx {

    /* renamed from: a */
    private atf f8516a;

    /* renamed from: b */
    private apb f8517b;

    /* renamed from: c */
    private chd f8518c;

    /* renamed from: d */
    private cfc f8519d;

    /* renamed from: e */
    private cef f8520e;

    /* renamed from: f */
    private final /* synthetic */ agf f8521f;

    /* JADX INFO: Access modifiers changed from: private */
    public agl(agf agfVar) {
        this.f8521f = agfVar;
    }

    @Override // com.google.android.gms.internal.ads.ajx
    @Deprecated
    /* renamed from: a */
    public final /* synthetic */ ajx mo13047a(akf akfVar) {
        dhz.m9440a(akfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ajx
    /* renamed from: a */
    public final /* synthetic */ ajx mo13046a(apb apbVar) {
        this.f8517b = (apb) dhz.m9440a(apbVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ajx
    /* renamed from: a */
    public final /* synthetic */ ajx mo13045a(atf atfVar) {
        this.f8516a = (atf) dhz.m9440a(atfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ajx
    /* renamed from: a */
    public final ajy mo12850b() {
        dhz.m9439a(this.f8516a, atf.class);
        dhz.m9439a(this.f8517b, apb.class);
        return new ago(this.f8521f, new ann(), new chy(), new aoo(), new bhx(), this.f8516a, this.f8517b, new cih(), this.f8518c, this.f8519d, this.f8520e);
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<ajy> mo12853a(cef cefVar) {
        this.f8520e = cefVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<ajy> mo12852a(cfc cfcVar) {
        this.f8519d = cfcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<ajy> mo12851a(chd chdVar) {
        this.f8518c = chdVar;
        return this;
    }
}
