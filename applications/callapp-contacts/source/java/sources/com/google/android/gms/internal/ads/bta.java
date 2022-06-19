package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bta.class */
public final class bta implements bsk<alb> {

    /* renamed from: a */
    final akt f44681a;

    /* renamed from: b */
    final Context f44682b;

    /* renamed from: c */
    final bif f44683c;

    /* renamed from: d */
    private final Executor f44684d;

    public bta(akt aktVar, Context context, Executor executor, bif bifVar) {
        this.f44682b = context;
        this.f44681a = aktVar;
        this.f44684d = executor;
        this.f44683c = bifVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<alb> mo17574b(cpk cpkVar, cov covVar) {
        return daj.m16941a(dbh.m16899a((Object) null), new daq(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.bsz

            /* renamed from: a */
            private final bta f44678a;

            /* renamed from: b */
            private final cpk f44679b;

            /* renamed from: c */
            private final cov f44680c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44678a = this;
                this.f44679b = cpkVar;
                this.f44680c = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bta btaVar = this.f44678a;
                cpk cpkVar2 = this.f44679b;
                cov covVar2 = this.f44680c;
                zzvt m17358a = cps.m17358a(btaVar.f44682b, covVar2.f46273t);
                final adt m17828a = btaVar.f44683c.m17828a(m17358a, covVar2, cpkVar2.f46319b.f46314b);
                final akk mo18605a = btaVar.f44681a.mo18605a(new aof(cpkVar2, covVar2, null), new ako(m17828a.mo13731s(), m17828a, cps.m17357a(m17358a), covVar2.f46241U, covVar2.f46245Y, covVar2.f46230J));
                mo18605a.mo18613i().m17826a(m17828a, false, (AbstractC12609hk) null);
                mo18605a.mo18525d().m18372a(new ash(m17828a) { // from class: com.google.android.gms.internal.ads.btc

                    /* renamed from: a */
                    private final adt f44686a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44686a = m17828a;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    /* renamed from: b */
                    public final void mo17547b() {
                        adt adtVar = this.f44686a;
                        if (adtVar.mo13808B() != null) {
                            adtVar.mo13808B().mo18783g();
                        }
                    }
                }, C13091zd.f50123f);
                mo18605a.mo18613i();
                return daj.m16942a(bih.m17827a(m17828a, covVar2.f46271r.f46302b, covVar2.f46271r.f46301a), new cxu(mo18605a) { // from class: com.google.android.gms.internal.ads.btb

                    /* renamed from: a */
                    private final akk f44685a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44685a = mo18605a;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    /* renamed from: a */
                    public final Object mo14064a(Object obj2) {
                        return this.f44685a.mo18614h();
                    }
                }, C13091zd.f50123f);
            }
        }, this.f44684d);
    }
}
