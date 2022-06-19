package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cfz.class */
public final class cfz implements crh<bdr> {

    /* renamed from: a */
    private final /* synthetic */ bto f12905a;

    /* renamed from: b */
    private final /* synthetic */ cgd f12906b;

    /* renamed from: c */
    private final /* synthetic */ cfy f12907c;

    public cfz(cfy cfyVar, bto btoVar, cgd cgdVar) {
        this.f12907c = cfyVar;
        this.f12905a = btoVar;
        this.f12906b = cgdVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(bdr bdrVar) {
        cfa cfaVar;
        bdr bdrVar2 = bdrVar;
        synchronized (this.f12907c) {
            this.f12905a.mo11376a(bdrVar2);
            cfaVar = this.f12907c.f12900d;
            cfaVar.mo11372k_();
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        cev cevVar;
        cfa cfaVar;
        bdx m11394a;
        synchronized (this.f12907c) {
            cevVar = this.f12907c.f12901e;
            bdu bduVar = (bdu) cevVar.mo11430a();
            if (bduVar != null) {
                bduVar.mo12052b().mo11258a(zzcjk.m6639a(th));
            } else {
                cfaVar = this.f12907c.f12900d;
                cfaVar.mo11258a(zzcjk.m6639a(th));
                m11394a = this.f12907c.m11394a(this.f12906b);
                m11394a.mo12049a().mo12051c().m12888c().mo11974i_();
            }
            chp.m11298a(th, "RewardedAdLoader.onFailure");
            this.f12905a.mo11377a();
        }
    }
}
