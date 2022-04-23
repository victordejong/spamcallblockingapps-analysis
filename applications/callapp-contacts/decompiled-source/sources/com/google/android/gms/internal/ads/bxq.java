package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxq.class */
public final class bxq implements bsk<alq> {

    /* renamed from: a  reason: collision with root package name */
    final bn f25355a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25356b;

    /* renamed from: c  reason: collision with root package name */
    private final amn f25357c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25358d;
    private final cti e;

    public bxq(Context context, amn amnVar, cti ctiVar, dbs dbsVar, bn bnVar) {
        this.f25356b = context;
        this.f25357c = amnVar;
        this.e = ctiVar;
        this.f25358d = dbsVar;
        this.f25355a = bnVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (this.f25355a == null || covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<alq> b(cpk cpkVar, cov covVar) {
        alt a2 = this.f25357c.a(new aof(cpkVar, covVar, null), new bxv(this, new View(this.f25356b), null, bxt.f25365a, covVar.t.get(0)));
        final bk bkVar = new bk(a2.k(), covVar.r.f26205b, covVar.r.f26204a);
        return this.e.a((cti) ctj.CUSTOM_RENDER_SYN).a(new csr(this, bkVar) { // from class: com.google.android.gms.internal.ads.bxs

            /* renamed from: a  reason: collision with root package name */
            private final bxq f25363a;

            /* renamed from: b  reason: collision with root package name */
            private final bk f25364b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25363a = this;
                this.f25364b = bkVar;
            }

            @Override // com.google.android.gms.internal.ads.csr
            public final void a() {
                bxq bxqVar = this.f25363a;
                bxqVar.f25355a.a(this.f25364b);
            }
        }, this.f25358d).a((csz<?>) ctj.CUSTOM_RENDER_ACK).a((dbt) dbh.a(a2.h())).a();
    }
}
