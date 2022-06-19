package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwp.class */
public final class bwp implements bsk<bhu> {

    /* renamed from: a */
    final Context f44961a;

    /* renamed from: b */
    final bif f44962b;

    /* renamed from: c */
    final bhx f44963c;

    /* renamed from: d */
    final cpo f44964d;

    /* renamed from: e */
    final Executor f44965e;

    /* renamed from: f */
    final zzbar f44966f;

    /* renamed from: g */
    final C12612hn f44967g;

    /* renamed from: h */
    final boolean f44968h = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42939fk)).booleanValue();

    public bwp(Context context, zzbar zzbarVar, cpo cpoVar, Executor executor, bhx bhxVar, bif bifVar, C12612hn c12612hn) {
        this.f44961a = context;
        this.f44964d = cpoVar;
        this.f44963c = bhxVar;
        this.f44965e = executor;
        this.f44966f = zzbarVar;
        this.f44962b = bifVar;
        this.f44967g = c12612hn;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<bhu> mo17574b(cpk cpkVar, cov covVar) {
        biv bivVar = new biv();
        dbt<bhu> m16941a = daj.m16941a(dbh.m16899a((Object) null), new daq(this, covVar, cpkVar, bivVar) { // from class: com.google.android.gms.internal.ads.bws

            /* renamed from: a */
            private final bwp f44972a;

            /* renamed from: b */
            private final cov f44973b;

            /* renamed from: c */
            private final cpk f44974c;

            /* renamed from: d */
            private final biv f44975d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44972a = this;
                this.f44973b = covVar;
                this.f44974c = cpkVar;
                this.f44975d = bivVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final bwp bwpVar = this.f44972a;
                final cov covVar2 = this.f44973b;
                cpk cpkVar2 = this.f44974c;
                biv bivVar2 = this.f44975d;
                final adt m17828a = bwpVar.f44962b.m17828a(bwpVar.f44964d.f46325e, covVar2, cpkVar2.f46319b.f46314b);
                m17828a.mo13745f(covVar2.f46237Q);
                bivVar2.m17821a(bwpVar.f44961a, m17828a.mo13731s());
                C13103zp c13103zp = new C13103zp();
                final bhw mo17840a = bwpVar.f44963c.mo17840a(new aof(cpkVar2, covVar2, null), new bhv(new bwv(bwpVar.f44961a, bwpVar.f44962b, bwpVar.f44964d, bwpVar.f44966f, covVar2, c13103zp, m17828a, bwpVar.f44967g, bwpVar.f44968h, null), m17828a));
                c13103zp.set(mo17840a);
                C12624hz.m14601a(m17828a, mo17840a.mo17844k());
                mo17840a.mo18525d().m18372a(new ash(m17828a) { // from class: com.google.android.gms.internal.ads.bwu

                    /* renamed from: a */
                    private final adt f44980a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44980a = m17828a;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    /* renamed from: b */
                    public final void mo17547b() {
                        adt adtVar = this.f44980a;
                        if (adtVar.mo13808B() != null) {
                            adtVar.mo13808B().mo18783g();
                        }
                    }
                }, C13091zd.f50123f);
                mo17840a.mo17843l().m17826a(m17828a, true, (AbstractC12609hk) (bwpVar.f44968h ? bwpVar.f44967g : null));
                mo17840a.mo17843l();
                return daj.m16942a(bih.m17827a(m17828a, covVar2.f46271r.f46302b, covVar2.f46271r.f46301a), new cxu(bwpVar, m17828a, covVar2, mo17840a) { // from class: com.google.android.gms.internal.ads.bwt

                    /* renamed from: a */
                    private final bwp f44976a;

                    /* renamed from: b */
                    private final adt f44977b;

                    /* renamed from: c */
                    private final cov f44978c;

                    /* renamed from: d */
                    private final bhw f44979d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44976a = bwpVar;
                        this.f44977b = m17828a;
                        this.f44978c = covVar2;
                        this.f44979d = mo17840a;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    /* renamed from: a */
                    public final Object mo14064a(Object obj2) {
                        adt adtVar = this.f44977b;
                        cov covVar3 = this.f44978c;
                        bhw bhwVar = this.f44979d;
                        if (covVar3.f46228H) {
                            adtVar.mo13794P();
                        }
                        adtVar.mo13728v();
                        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42683at)).booleanValue()) {
                            adtVar.onPause();
                        }
                        return bhwVar.mo17847h();
                    }
                }, bwpVar.f44965e);
            }
        }, this.f44965e);
        m16941a.addListener(bwr.m17594a(bivVar), this.f44965e);
        return m16941a;
    }
}
