package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxq.class */
public final class bxq implements bsk<alq> {

    /* renamed from: a */
    final AbstractC12246bn f45043a;

    /* renamed from: b */
    private final Context f45044b;

    /* renamed from: c */
    private final amn f45045c;

    /* renamed from: d */
    private final dbs f45046d;

    /* renamed from: e */
    private final cti f45047e;

    public bxq(Context context, amn amnVar, cti ctiVar, dbs dbsVar, AbstractC12246bn abstractC12246bn) {
        this.f45044b = context;
        this.f45045c = amnVar;
        this.f45047e = ctiVar;
        this.f45046d = dbsVar;
        this.f45043a = abstractC12246bn;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (this.f45043a == null || covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<alq> mo17574b(cpk cpkVar, cov covVar) {
        alt mo18560a = this.f45045c.mo18560a(new aof(cpkVar, covVar, null), new bxv(this, new View(this.f45044b), null, bxt.f45059a, covVar.f46273t.get(0)));
        return this.f45047e.m17260a((cti) ctj.CUSTOM_RENDER_SYN).m17254a(new csr(this, new BinderC12243bk(mo18560a.mo18575k(), covVar.f46271r.f46302b, covVar.f46271r.f46301a)) { // from class: com.google.android.gms.internal.ads.bxs

            /* renamed from: a */
            private final bxq f45057a;

            /* renamed from: b */
            private final BinderC12243bk f45058b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45057a = this;
                this.f45058b = binderC12243bk;
            }

            @Override // com.google.android.gms.internal.ads.csr
            /* renamed from: a */
            public final void mo17264a() {
                bxq bxqVar = this.f45057a;
                bxqVar.f45043a.mo17625a(this.f45058b);
            }
        }, this.f45046d).m17244a((csz<?>) ctj.CUSTOM_RENDER_ACK).m17246a((dbt) dbh.m16899a(mo18560a.mo18578h())).m17251a();
    }
}
