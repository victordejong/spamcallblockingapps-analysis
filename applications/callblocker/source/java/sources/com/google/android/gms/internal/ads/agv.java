package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agv.class */
final class agv implements awp {

    /* renamed from: a */
    private atf f9068a;

    /* renamed from: b */
    private apb f9069b;

    /* renamed from: c */
    private bsa f9070c;

    /* renamed from: d */
    private chd f9071d;

    /* renamed from: e */
    private cfc f9072e;

    /* renamed from: f */
    private cef f9073f;

    /* renamed from: g */
    private final /* synthetic */ agf f9074g;

    /* JADX INFO: Access modifiers changed from: private */
    public agv(agf agfVar) {
        this.f9074g = agfVar;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<awq> mo12853a(cef cefVar) {
        this.f9073f = cefVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<awq> mo12852a(cfc cfcVar) {
        this.f9072e = cfcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<awq> mo12851a(chd chdVar) {
        this.f9071d = chdVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.awp
    /* renamed from: a */
    public final /* synthetic */ awp mo12376a(apb apbVar) {
        this.f9069b = (apb) dhz.m9440a(apbVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.awp
    /* renamed from: a */
    public final /* synthetic */ awp mo12375a(atf atfVar) {
        this.f9068a = (atf) dhz.m9440a(atfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.awp
    /* renamed from: a */
    public final /* synthetic */ awp mo12374a(bsa bsaVar) {
        this.f9070c = (bsa) dhz.m9440a(bsaVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.awp
    /* renamed from: a */
    public final awq mo12850b() {
        dhz.m9439a(this.f9068a, atf.class);
        dhz.m9439a(this.f9069b, apb.class);
        dhz.m9439a(this.f9070c, bsa.class);
        return new agy(this.f9074g, new ann(), new chy(), new aoo(), new bhx(), this.f9068a, this.f9069b, new cih(), this.f9070c, this.f9071d, this.f9072e, this.f9073f);
    }
}
