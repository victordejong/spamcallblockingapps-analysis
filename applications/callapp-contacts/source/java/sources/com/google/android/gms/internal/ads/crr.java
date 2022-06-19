package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crr.class */
public final class crr<AdT extends anp> {

    /* renamed from: a */
    crx f46440a;

    /* renamed from: b */
    dcc<crj<AdT>> f46441b;

    /* renamed from: d */
    final cqz f46443d;

    /* renamed from: e */
    final cru<AdT> f46444e;

    /* renamed from: f */
    private final cqs f46445f;

    /* renamed from: g */
    private dbt<crj<AdT>> f46446g;

    /* renamed from: c */
    int f46442c = crw.f46453a;

    /* renamed from: i */
    private final dbi<crj<AdT>> f46448i = new crs(this);

    /* renamed from: h */
    private final LinkedList<crx> f46447h = new LinkedList<>();

    public crr(cqz cqzVar, cqs cqsVar, cru<AdT> cruVar) {
        this.f46443d = cqzVar;
        this.f46445f = cqsVar;
        this.f46444e = cruVar;
        cqsVar.f46393a = new cqv(this) { // from class: com.google.android.gms.internal.ads.crt

            /* renamed from: a */
            private final crr f46450a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46450a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqv
            /* renamed from: a */
            public final void mo17287a() {
                crr crrVar = this.f46450a;
                synchronized (crrVar) {
                    crrVar.m17288c(crrVar.f46440a);
                }
            }
        };
    }

    /* renamed from: a */
    private final boolean m17292a() {
        dbt<crj<AdT>> dbtVar = this.f46446g;
        return dbtVar == null || dbtVar.isDone();
    }

    /* renamed from: a */
    public final /* synthetic */ dbt m17291a(crj crjVar) throws Exception {
        dbt m16899a;
        synchronized (this) {
            m16899a = dbh.m16899a(new crv(crjVar, this.f46440a));
        }
        return m16899a;
    }

    /* renamed from: a */
    public final void m17290a(crx crxVar) {
        this.f46447h.add(crxVar);
    }

    /* renamed from: b */
    public final dbt<crv<AdT>> m17289b(crx crxVar) {
        synchronized (this) {
            if (m17292a()) {
                return null;
            }
            this.f46442c = crw.f46455c;
            if (this.f46440a.mo17283b() != null && crxVar.mo17283b() != null && this.f46440a.mo17283b().equals(crxVar.mo17283b())) {
                this.f46442c = crw.f46454b;
                return daj.m16941a(this.f46441b, new daq(this) { // from class: com.google.android.gms.internal.ads.crq

                    /* renamed from: a */
                    private final crr f46439a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46439a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        return this.f46439a.m17291a((crj) obj);
                    }
                }, crxVar.mo17284a());
            }
            return null;
        }
    }

    /* renamed from: c */
    public final void m17288c(crx crxVar) {
        while (m17292a()) {
            if (crxVar == null && this.f46447h.isEmpty()) {
                return;
            }
            crx crxVar2 = crxVar;
            if (crxVar == null) {
                crxVar2 = this.f46447h.remove();
            }
            if (crxVar2.mo17283b() != null && this.f46443d.mo17300b(crxVar2.mo17283b())) {
                this.f46440a = crxVar2.mo17282c();
                this.f46441b = dcc.m16880h();
                dbt<crj<AdT>> mo17285a = this.f46444e.mo17285a(this.f46440a);
                this.f46446g = mo17285a;
                dbh.m16901a(mo17285a, this.f46448i, crxVar2.mo17284a());
                return;
            }
            crxVar = null;
        }
        if (crxVar != null) {
            this.f46447h.add(crxVar);
        }
    }
}
