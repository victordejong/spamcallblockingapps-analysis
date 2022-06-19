package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahc.class */
final class ahc implements bdx {

    /* renamed from: a */
    private atf f9510a;

    /* renamed from: b */
    private apb f9511b;

    /* renamed from: c */
    private chd f9512c;

    /* renamed from: d */
    private cfc f9513d;

    /* renamed from: e */
    private cef f9514e;

    /* renamed from: f */
    private final /* synthetic */ agf f9515f;

    /* JADX INFO: Access modifiers changed from: private */
    public ahc(agf agfVar) {
        this.f9515f = agfVar;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<bdu> mo12853a(cef cefVar) {
        this.f9514e = cefVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<bdu> mo12852a(cfc cfcVar) {
        this.f9513d = cfcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aoy
    /* renamed from: a */
    public final /* synthetic */ aoy<bdu> mo12851a(chd chdVar) {
        this.f9512c = chdVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bdx
    /* renamed from: a */
    public final bdu mo12850b() {
        dhz.m9439a(this.f9510a, atf.class);
        dhz.m9439a(this.f9511b, apb.class);
        return new ahb(this.f9515f, new ann(), new chy(), new aoo(), new bhx(), this.f9510a, this.f9511b, new cih(), this.f9512c, this.f9513d, this.f9514e);
    }

    @Override // com.google.android.gms.internal.ads.bdx
    /* renamed from: a */
    public final /* synthetic */ bdx mo12048a(apb apbVar) {
        this.f9511b = (apb) dhz.m9440a(apbVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bdx
    /* renamed from: a */
    public final /* synthetic */ bdx mo12047a(atf atfVar) {
        this.f9510a = (atf) dhz.m9440a(atfVar);
        return this;
    }
}
