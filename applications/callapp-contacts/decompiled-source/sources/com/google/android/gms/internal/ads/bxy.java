package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxy.class */
public final class bxy<AdT> implements bsk<AdT> {

    /* renamed from: a  reason: collision with root package name */
    final bn f25376a;

    /* renamed from: b  reason: collision with root package name */
    final bxz<AdT> f25377b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f25378c;

    /* renamed from: d  reason: collision with root package name */
    private final cti f25379d;

    public bxy(cti ctiVar, dbs dbsVar, bn bnVar, bxz<AdT> bxzVar) {
        this.f25379d = ctiVar;
        this.f25378c = dbsVar;
        this.f25376a = bnVar;
        this.f25377b = bxzVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (this.f25376a == null || covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<AdT> b(cpk cpkVar, cov covVar) {
        zp zpVar = new zp();
        byg bygVar = new byg();
        bygVar.a(new bya(this, zpVar, cpkVar, covVar, bygVar));
        final bk bkVar = new bk(bygVar, covVar.r.f26205b, covVar.r.f26204a);
        return this.f25379d.a((cti) ctj.CUSTOM_RENDER_SYN).a(new csr(this, bkVar) { // from class: com.google.android.gms.internal.ads.bxx

            /* renamed from: a  reason: collision with root package name */
            private final bxy f25374a;

            /* renamed from: b  reason: collision with root package name */
            private final bk f25375b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25374a = this;
                this.f25375b = bkVar;
            }

            @Override // com.google.android.gms.internal.ads.csr
            public final void a() {
                bxy bxyVar = this.f25374a;
                bxyVar.f25376a.a(this.f25375b);
            }
        }, this.f25378c).a((csz<?>) ctj.CUSTOM_RENDER_ACK).a((dbt) zpVar).a();
    }
}
