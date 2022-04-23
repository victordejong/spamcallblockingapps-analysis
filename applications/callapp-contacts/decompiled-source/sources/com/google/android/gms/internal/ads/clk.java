package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
import com.google.android.gms.internal.ads.eht;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clk.class */
public final class clk<R extends aqx<AdT>, AdT extends anp> implements cmh<R, AdT> {

    /* renamed from: a  reason: collision with root package name */
    final cmh<R, AdT> f26027a;

    /* renamed from: b  reason: collision with root package name */
    final crr<AdT> f26028b;

    /* renamed from: c  reason: collision with root package name */
    R f26029c;

    /* renamed from: d  reason: collision with root package name */
    final Executor f26030d;
    private final cmh<R, clx<AdT>> e;

    public clk(cmh<R, AdT> cmhVar, cmh<R, clx<AdT>> cmhVar2, crr<AdT> crrVar, Executor executor) {
        this.f26027a = cmhVar;
        this.e = cmhVar2;
        this.f26028b = crrVar;
        this.f26030d = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final R a() {
        R r;
        synchronized (this) {
            r = this.f26029c;
        }
        return r;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    public final dbt<AdT> a(final cmm cmmVar, final cmj<R> cmjVar) {
        dbc a2;
        synchronized (this) {
            cpo a3 = cmjVar.a(cmmVar.f26072b).b().a();
            final clr clrVar = new clr(cmjVar, cmmVar, a3.f26227d, a3.f, this.f26030d, a3.j, null);
            a2 = dbc.c((dbt) this.e.a(cmmVar, cmjVar)).a(new daq(this, cmmVar, clrVar, cmjVar) { // from class: com.google.android.gms.internal.ads.cln

                /* renamed from: a  reason: collision with root package name */
                private final clk f26033a;

                /* renamed from: b  reason: collision with root package name */
                private final cmm f26034b;

                /* renamed from: c  reason: collision with root package name */
                private final clr f26035c;

                /* renamed from: d  reason: collision with root package name */
                private final cmj f26036d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26033a = this;
                    this.f26034b = cmmVar;
                    this.f26035c = clrVar;
                    this.f26036d = cmjVar;
                }

                /* JADX WARN: Type inference failed for: r1v12, types: [R extends com.google.android.gms.internal.ads.aqx<AdT>, com.google.android.gms.internal.ads.aqx] */
                /* JADX WARN: Type inference failed for: r1v4, types: [R extends com.google.android.gms.internal.ads.aqx<AdT>, com.google.android.gms.internal.ads.aqx] */
                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    final clk clkVar = this.f26033a;
                    cmm cmmVar2 = this.f26034b;
                    clr clrVar2 = this.f26035c;
                    final cmj cmjVar2 = this.f26036d;
                    clx clxVar = (clx) obj;
                    cmm cmmVar3 = cmmVar2;
                    if (clxVar != null) {
                        clr clrVar3 = new clr(clrVar2.f26041a, clrVar2.f26042b, clrVar2.f26043c, clrVar2.f26044d, clrVar2.e, clrVar2.f, clxVar.f26051a);
                        if (clxVar.f26053c != null) {
                            clkVar.f26029c = null;
                            clkVar.f26028b.a(clrVar3);
                            return clkVar.a(clxVar.f26053c, cmmVar2, cmjVar2);
                        }
                        dbt b2 = clkVar.f26028b.b(clrVar3);
                        if (b2 != null) {
                            clkVar.f26029c = (aqx) cmjVar2.a(cmmVar2.f26072b).b();
                            return daj.a(b2, new daq(clkVar, cmjVar2) { // from class: com.google.android.gms.internal.ads.clp

                                /* renamed from: a  reason: collision with root package name */
                                private final clk f26038a;

                                /* renamed from: b  reason: collision with root package name */
                                private final cmj f26039b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f26038a = clkVar;
                                    this.f26039b = cmjVar2;
                                }

                                @Override // com.google.android.gms.internal.ads.daq
                                public final dbt zzf(Object obj2) {
                                    clk clkVar2 = this.f26038a;
                                    cmj cmjVar3 = this.f26039b;
                                    crv crvVar = (crv) obj2;
                                    if (crvVar == null || crvVar.f26318a == null || crvVar.f26319b == null) {
                                        throw new zzcnp(cqj.INTERNAL_ERROR, "Empty prefetch");
                                    }
                                    clr clrVar4 = (clr) crvVar.f26319b;
                                    crvVar.f26318a.f26301a.f23677c.c(eht.g.a().a(eht.g.a.a().a(eht.g.c.IN_MEMORY).a(eht.g.d.a())).f());
                                    return clkVar2.a(crvVar.f26318a, clrVar4.f26042b, cmjVar3);
                                }
                            }, clkVar.f26030d);
                        }
                        clkVar.f26028b.a(clrVar3);
                        cmmVar3 = new cmm(cmmVar2.f26072b, clxVar.f26052b);
                    }
                    dbt a4 = clkVar.f26027a.a(cmmVar3, cmjVar2);
                    clkVar.f26029c = (aqx) clkVar.f26027a.a();
                    return a4;
                }
            }, this.f26030d);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final dbt<AdT> a(crj<AdT> crjVar, cmm cmmVar, cmj<R> cmjVar) {
        final aqw<R> a2 = cmjVar.a(cmmVar.f26072b);
        if (crjVar.f26303c != null) {
            R b2 = a2.b();
            if (b2.d() != null) {
                crjVar.f26303c.k.a(b2.d());
            }
            return dbh.a(crjVar.f26303c);
        }
        a2.a(crjVar.f26302b);
        dbt<AdT> a3 = this.f26027a.a(cmmVar, new cmj(a2) { // from class: com.google.android.gms.internal.ads.clm

            /* renamed from: a  reason: collision with root package name */
            private final aqw f26032a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26032a = a2;
            }

            @Override // com.google.android.gms.internal.ads.cmj
            public final aqw a(cmk cmkVar) {
                return this.f26032a;
            }
        });
        this.f26029c = this.f26027a.a();
        return a3;
    }
}
