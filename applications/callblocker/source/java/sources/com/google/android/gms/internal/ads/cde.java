package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cde.class */
public final class cde implements crh<ake> {

    /* renamed from: a */
    private final /* synthetic */ bto f12754a;

    /* renamed from: b */
    private final /* synthetic */ cdd f12755b;

    /* renamed from: c */
    private final /* synthetic */ ccy f12756c;

    public cde(ccy ccyVar, bto btoVar, cdd cddVar) {
        this.f12756c = ccyVar;
        this.f12754a = btoVar;
        this.f12755b = cddVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(ake akeVar) {
        ake akeVar2 = akeVar;
        synchronized (this.f12756c) {
            this.f12756c.f12748h = null;
            this.f12754a.mo11376a(akeVar2);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        cev cevVar;
        cdn cdnVar;
        ajx m11475a;
        synchronized (this.f12756c) {
            this.f12756c.f12748h = null;
            cevVar = this.f12756c.f12745e;
            ajy ajyVar = (ajy) cevVar.mo11430a();
            if (ajyVar != null) {
                ajyVar.mo13043b().mo11258a(zzcjk.m6639a(th));
            } else {
                cdnVar = this.f12756c.f12744d;
                cdnVar.mo11258a(zzcjk.m6639a(th));
                m11475a = this.f12756c.m11475a(this.f12755b);
                m11475a.mo13048a().mo12051c().m12888c().mo11974i_();
            }
            chp.m11298a(th, "AppOpenAdLoader.onFailure");
            this.f12754a.mo11377a();
        }
    }
}
