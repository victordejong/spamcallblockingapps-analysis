package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxy.class */
public final class bxy<AdT> implements bsk<AdT> {

    /* renamed from: a */
    final AbstractC12246bn f45073a;

    /* renamed from: b */
    final bxz<AdT> f45074b;

    /* renamed from: c */
    private final dbs f45075c;

    /* renamed from: d */
    private final cti f45076d;

    public bxy(cti ctiVar, dbs dbsVar, AbstractC12246bn abstractC12246bn, bxz<AdT> bxzVar) {
        this.f45076d = ctiVar;
        this.f45075c = dbsVar;
        this.f45073a = abstractC12246bn;
        this.f45074b = bxzVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (this.f45073a == null || covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<AdT> mo17574b(cpk cpkVar, cov covVar) {
        C13103zp c13103zp = new C13103zp();
        byg bygVar = new byg();
        bygVar.m17569a(new bya(this, c13103zp, cpkVar, covVar, bygVar));
        return this.f45076d.m17260a((cti) ctj.CUSTOM_RENDER_SYN).m17254a(new csr(this, new BinderC12243bk(bygVar, covVar.f46271r.f46302b, covVar.f46271r.f46301a)) { // from class: com.google.android.gms.internal.ads.bxx

            /* renamed from: a */
            private final bxy f45071a;

            /* renamed from: b */
            private final BinderC12243bk f45072b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45071a = this;
                this.f45072b = binderC12243bk;
            }

            @Override // com.google.android.gms.internal.ads.csr
            /* renamed from: a */
            public final void mo17264a() {
                bxy bxyVar = this.f45071a;
                bxyVar.f45073a.mo17625a(this.f45072b);
            }
        }, this.f45075c).m17244a((csz<?>) ctj.CUSTOM_RENDER_ACK).m17246a((dbt) c13103zp).m17251a();
    }
}
