package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crr.class */
public final class crr<AdT extends anp> {

    /* renamed from: a  reason: collision with root package name */
    crx f26312a;

    /* renamed from: b  reason: collision with root package name */
    dcc<crj<AdT>> f26313b;

    /* renamed from: d  reason: collision with root package name */
    final cqz f26315d;
    final cru<AdT> e;
    private final cqs f;
    private dbt<crj<AdT>> g;

    /* renamed from: c  reason: collision with root package name */
    int f26314c = crw.f26320a;
    private final dbi<crj<AdT>> i = new crs(this);
    private final LinkedList<crx> h = new LinkedList<>();

    public crr(cqz cqzVar, cqs cqsVar, cru<AdT> cruVar) {
        this.f26315d = cqzVar;
        this.f = cqsVar;
        this.e = cruVar;
        cqsVar.f26271a = new cqv(this) { // from class: com.google.android.gms.internal.ads.crt

            /* renamed from: a  reason: collision with root package name */
            private final crr f26317a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26317a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqv
            public final void a() {
                crr crrVar = this.f26317a;
                synchronized (crrVar) {
                    crrVar.c(crrVar.f26312a);
                }
            }
        };
    }

    private final boolean a() {
        dbt<crj<AdT>> dbtVar = this.g;
        return dbtVar == null || dbtVar.isDone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ dbt a(crj crjVar) throws Exception {
        dbt a2;
        synchronized (this) {
            a2 = dbh.a(new crv(crjVar, this.f26312a));
        }
        return a2;
    }

    public final void a(crx crxVar) {
        this.h.add(crxVar);
    }

    public final dbt<crv<AdT>> b(crx crxVar) {
        synchronized (this) {
            if (a()) {
                return null;
            }
            this.f26314c = crw.f26322c;
            if (!(this.f26312a.b() == null || crxVar.b() == null || !this.f26312a.b().equals(crxVar.b()))) {
                this.f26314c = crw.f26321b;
                return daj.a(this.f26313b, new daq(this) { // from class: com.google.android.gms.internal.ads.crq

                    /* renamed from: a  reason: collision with root package name */
                    private final crr f26311a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26311a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        return this.f26311a.a((crj) obj);
                    }
                }, crxVar.a());
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(crx crxVar) {
        while (a()) {
            if (crxVar != null || !this.h.isEmpty()) {
                crx crxVar2 = crxVar;
                if (crxVar == null) {
                    crxVar2 = this.h.remove();
                }
                if (crxVar2.b() == null || !this.f26315d.b(crxVar2.b())) {
                    crxVar = null;
                } else {
                    this.f26312a = crxVar2.c();
                    this.f26313b = dcc.h();
                    dbt<crj<AdT>> a2 = this.e.a(this.f26312a);
                    this.g = a2;
                    dbh.a(a2, this.i, crxVar2.a());
                    return;
                }
            } else {
                return;
            }
        }
        if (crxVar != null) {
            this.h.add(crxVar);
        }
    }
}
