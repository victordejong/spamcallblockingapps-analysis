package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsr.class */
public final class bsr implements bsk<all> {

    /* renamed from: a */
    final alf f44646a;

    /* renamed from: b */
    final Context f44647b;

    /* renamed from: c */
    final bif f44648c;

    /* renamed from: d */
    final cpo f44649d;

    /* renamed from: e */
    final Executor f44650e;

    /* renamed from: f */
    final zzbar f44651f;

    /* renamed from: g */
    final C12612hn f44652g;

    /* renamed from: h */
    final boolean f44653h = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42939fk)).booleanValue();

    public bsr(alf alfVar, Context context, Executor executor, bif bifVar, cpo cpoVar, zzbar zzbarVar, C12612hn c12612hn) {
        this.f44647b = context;
        this.f44646a = alfVar;
        this.f44650e = executor;
        this.f44648c = bifVar;
        this.f44649d = cpoVar;
        this.f44651f = zzbarVar;
        this.f44652g = c12612hn;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<all> mo17574b(cpk cpkVar, cov covVar) {
        biv bivVar = new biv();
        dbt<all> m16941a = daj.m16941a(dbh.m16899a((Object) null), new daq(this, covVar, cpkVar, bivVar) { // from class: com.google.android.gms.internal.ads.bsu

            /* renamed from: a */
            private final bsr f44655a;

            /* renamed from: b */
            private final cov f44656b;

            /* renamed from: c */
            private final cpk f44657c;

            /* renamed from: d */
            private final biv f44658d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44655a = this;
                this.f44656b = covVar;
                this.f44657c = cpkVar;
                this.f44658d = bivVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final bsr bsrVar = this.f44655a;
                final cov covVar2 = this.f44656b;
                cpk cpkVar2 = this.f44657c;
                biv bivVar2 = this.f44658d;
                final adt m17828a = bsrVar.f44648c.m17828a(bsrVar.f44649d.f46325e, covVar2, cpkVar2.f46319b.f46314b);
                m17828a.mo13745f(covVar2.f46237Q);
                bivVar2.m17821a(bsrVar.f44647b, m17828a.mo13731s());
                C13103zp c13103zp = new C13103zp();
                final ald mo18587a = bsrVar.f44646a.mo18587a(new aof(cpkVar2, covVar2, null), new azj(new bsx(bsrVar.f44651f, c13103zp, covVar2, m17828a, bsrVar.f44649d, bsrVar.f44653h, bsrVar.f44652g), m17828a), new alc(covVar2.f46241U));
                mo18587a.mo18592i().m17826a(m17828a, false, (AbstractC12609hk) (bsrVar.f44653h ? bsrVar.f44652g : null));
                c13103zp.set(mo18587a);
                mo18587a.mo18525d().m18372a(new ash(m17828a) { // from class: com.google.android.gms.internal.ads.bsw

                    /* renamed from: a */
                    private final adt f44663a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44663a = m17828a;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    /* renamed from: b */
                    public final void mo17547b() {
                        adt adtVar = this.f44663a;
                        if (adtVar.mo13808B() != null) {
                            adtVar.mo13808B().mo18783g();
                        }
                    }
                }, C13091zd.f50123f);
                mo18587a.mo18592i();
                return daj.m16942a(bih.m17827a(m17828a, covVar2.f46271r.f46302b, covVar2.f46271r.f46301a), new cxu(bsrVar, m17828a, covVar2, mo18587a) { // from class: com.google.android.gms.internal.ads.bsv

                    /* renamed from: a */
                    private final bsr f44659a;

                    /* renamed from: b */
                    private final adt f44660b;

                    /* renamed from: c */
                    private final cov f44661c;

                    /* renamed from: d */
                    private final ald f44662d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44659a = bsrVar;
                        this.f44660b = m17828a;
                        this.f44661c = covVar2;
                        this.f44662d = mo18587a;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    /* renamed from: a */
                    public final Object mo14064a(Object obj2) {
                        adt adtVar = this.f44660b;
                        cov covVar3 = this.f44661c;
                        ald aldVar = this.f44662d;
                        if (covVar3.f46228H) {
                            adtVar.mo13794P();
                        }
                        adtVar.mo13728v();
                        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42683at)).booleanValue()) {
                            adtVar.onPause();
                        }
                        return aldVar.mo18593h();
                    }
                }, bsrVar.f44650e);
            }
        }, this.f44650e);
        m16941a.addListener(bst.m17616a(bivVar), this.f44650e);
        return m16941a;
    }
}
