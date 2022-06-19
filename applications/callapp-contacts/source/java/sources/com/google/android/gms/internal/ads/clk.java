package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
import com.google.android.gms.internal.ads.eht;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clk.class */
public final class clk<R extends aqx<AdT>, AdT extends anp> implements cmh<R, AdT> {

    /* renamed from: a */
    final cmh<R, AdT> f46030a;

    /* renamed from: b */
    final crr<AdT> f46031b;

    /* renamed from: c */
    R f46032c;

    /* renamed from: d */
    final Executor f46033d;

    /* renamed from: e */
    private final cmh<R, clx<AdT>> f46034e;

    public clk(cmh<R, AdT> cmhVar, cmh<R, clx<AdT>> cmhVar2, crr<AdT> crrVar, Executor executor) {
        this.f46030a = cmhVar;
        this.f46034e = cmhVar2;
        this.f46031b = crrVar;
        this.f46033d = executor;
    }

    /* renamed from: b */
    public final R mo17412a() {
        R r;
        synchronized (this) {
            r = this.f46032c;
        }
        return r;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final dbt<AdT> mo17411a(cmm cmmVar, cmj<R> cmjVar) {
        dbc m16910a;
        synchronized (this) {
            cpo mo18452a = cmjVar.mo17386a(cmmVar.f46080b).mo18453b().mo18452a();
            m16910a = dbc.m16907c((dbt) this.f46034e.mo17411a(cmmVar, cmjVar)).m16910a(new daq(this, cmmVar, new clr(cmjVar, cmmVar, mo18452a.f46324d, mo18452a.f46326f, this.f46033d, mo18452a.f46330j, null), cmjVar) { // from class: com.google.android.gms.internal.ads.cln

                /* renamed from: a */
                private final clk f46037a;

                /* renamed from: b */
                private final cmm f46038b;

                /* renamed from: c */
                private final clr f46039c;

                /* renamed from: d */
                private final cmj f46040d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46037a = this;
                    this.f46038b = cmmVar;
                    this.f46039c = clrVar;
                    this.f46040d = cmjVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    final clk clkVar = this.f46037a;
                    cmm cmmVar2 = this.f46038b;
                    clr clrVar2 = this.f46039c;
                    final cmj cmjVar2 = this.f46040d;
                    clx clxVar = (clx) obj;
                    cmm cmmVar3 = cmmVar2;
                    if (clxVar != null) {
                        clr clrVar3 = new clr(clrVar2.f46045a, clrVar2.f46046b, clrVar2.f46047c, clrVar2.f46048d, clrVar2.f46049e, clrVar2.f46050f, clxVar.f46058a);
                        if (clxVar.f46060c != null) {
                            clkVar.f46032c = null;
                            clkVar.f46031b.m17290a(clrVar3);
                            return clkVar.m17418a(clxVar.f46060c, cmmVar2, cmjVar2);
                        }
                        dbt m17289b = clkVar.f46031b.m17289b(clrVar3);
                        if (m17289b != null) {
                            clkVar.f46032c = (R) cmjVar2.mo17386a(cmmVar2.f46080b).mo18453b();
                            return daj.m16941a(m17289b, new daq(clkVar, cmjVar2) { // from class: com.google.android.gms.internal.ads.clp

                                /* renamed from: a */
                                private final clk f46042a;

                                /* renamed from: b */
                                private final cmj f46043b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f46042a = clkVar;
                                    this.f46043b = cmjVar2;
                                }

                                @Override // com.google.android.gms.internal.ads.daq
                                public final dbt zzf(Object obj2) {
                                    clk clkVar2 = this.f46042a;
                                    cmj cmjVar3 = this.f46043b;
                                    crv crvVar = (crv) obj2;
                                    if (crvVar == null || crvVar.f46451a == null || crvVar.f46452b == null) {
                                        throw new zzcnp(cqj.INTERNAL_ERROR, "Empty prefetch");
                                    }
                                    clr clrVar4 = (clr) crvVar.f46452b;
                                    crvVar.f46451a.f46429a.f42537c.mo17791c(eht.C12471g.m15019a().m15008a(eht.C12471g.C12472a.m15016a().m15011a(eht.C12471g.EnumC12475c.IN_MEMORY).m15010a(eht.C12471g.C12476d.m15007a())).mo16259f());
                                    return clkVar2.m17418a(crvVar.f46451a, clrVar4.f46046b, cmjVar3);
                                }
                            }, clkVar.f46033d);
                        }
                        clkVar.f46031b.m17290a(clrVar3);
                        cmmVar3 = new cmm(cmmVar2.f46080b, clxVar.f46059b);
                    }
                    dbt mo17411a = clkVar.f46030a.mo17411a(cmmVar3, cmjVar2);
                    clkVar.f46032c = (R) clkVar.f46030a.mo17412a();
                    return mo17411a;
                }
            }, this.f46033d);
        }
        return m16910a;
    }

    /* renamed from: a */
    public final dbt<AdT> m17418a(crj<AdT> crjVar, cmm cmmVar, cmj<R> cmjVar) {
        aqw<R> mo17386a = cmjVar.mo17386a(cmmVar.f46080b);
        if (crjVar.f46431c != null) {
            R mo18453b = mo17386a.mo18453b();
            if (mo18453b.mo18451d() != null) {
                crjVar.f46431c.f42489k.mo17406a(mo18453b.mo18451d());
            }
            return dbh.m16899a(crjVar.f46431c);
        }
        mo17386a.mo18454a(crjVar.f46430b);
        dbt<AdT> mo17411a = this.f46030a.mo17411a(cmmVar, new cmj(mo17386a) { // from class: com.google.android.gms.internal.ads.clm

            /* renamed from: a */
            private final aqw f46036a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46036a = mo17386a;
            }

            @Override // com.google.android.gms.internal.ads.cmj
            /* renamed from: a */
            public final aqw mo17386a(cmk cmkVar) {
                return this.f46036a;
            }
        });
        this.f46032c = this.f46030a.mo17412a();
        return mo17411a;
    }
}
