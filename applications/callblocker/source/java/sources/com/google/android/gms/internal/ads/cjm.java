package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cjm.class */
public final class cjm implements crh<ciy<AdT>> {

    /* renamed from: a */
    private final /* synthetic */ cjh f13181a;

    public cjm(cjh cjhVar) {
        this.f13181a = cjhVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(Object obj) {
        cjo cjoVar;
        int i;
        int i2;
        csa csaVar;
        cjn cjnVar;
        cir cirVar;
        cjn cjnVar2;
        ciy<?> ciyVar = (ciy) obj;
        synchronized (this.f13181a) {
            cjoVar = this.f13181a.f13173g;
            cjoVar.mo11195a(ciyVar);
            i = this.f13181a.f13171e;
            if (i != ciw.f13149f) {
                cirVar = this.f13181a.f13172f;
                cjnVar2 = this.f13181a.f13168b;
                cirVar.mo11231a(cjnVar2.mo11197b(), ciyVar);
            }
            i2 = this.f13181a.f13171e;
            if (i2 == ciw.f13148e) {
                cjh cjhVar = this.f13181a;
                cjnVar = this.f13181a.f13168b;
                cjhVar.m11203c(cjnVar);
            }
            this.f13181a.f13171e = ciw.f13148e;
            csaVar = this.f13181a.f13169c;
            csaVar.mo10753b((csa) ciyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        cjo cjoVar;
        csa csaVar;
        synchronized (this.f13181a) {
            cjoVar = this.f13181a.f13173g;
            cjoVar.mo11193a(th);
            csaVar = this.f13181a.f13169c;
            csaVar.mo10754a(th);
        }
    }
}
