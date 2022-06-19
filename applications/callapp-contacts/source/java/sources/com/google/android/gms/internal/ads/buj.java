package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buj.class */
public final class buj implements bsk<azi> {

    /* renamed from: a */
    final Context f44773a;

    /* renamed from: b */
    final bif f44774b;

    /* renamed from: c */
    final bai f44775c;

    /* renamed from: d */
    final cpo f44776d;

    /* renamed from: e */
    final Executor f44777e;

    /* renamed from: f */
    final zzbar f44778f;

    /* renamed from: g */
    final C12612hn f44779g;

    /* renamed from: h */
    final boolean f44780h = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42939fk)).booleanValue();

    public buj(Context context, zzbar zzbarVar, cpo cpoVar, Executor executor, bai baiVar, bif bifVar, C12612hn c12612hn) {
        this.f44773a = context;
        this.f44776d = cpoVar;
        this.f44775c = baiVar;
        this.f44777e = executor;
        this.f44778f = zzbarVar;
        this.f44774b = bifVar;
        this.f44779g = c12612hn;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<azi> mo17574b(cpk cpkVar, cov covVar) {
        biv bivVar = new biv();
        dbt<azi> m16941a = daj.m16941a(dbh.m16899a((Object) null), new daq(this, covVar, cpkVar, bivVar) { // from class: com.google.android.gms.internal.ads.bui

            /* renamed from: a */
            private final buj f44769a;

            /* renamed from: b */
            private final cov f44770b;

            /* renamed from: c */
            private final cpk f44771c;

            /* renamed from: d */
            private final biv f44772d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44769a = this;
                this.f44770b = covVar;
                this.f44771c = cpkVar;
                this.f44772d = bivVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final buj bujVar = this.f44769a;
                final cov covVar2 = this.f44770b;
                cpk cpkVar2 = this.f44771c;
                biv bivVar2 = this.f44772d;
                final adt m17828a = bujVar.f44774b.m17828a(bujVar.f44776d.f46325e, covVar2, cpkVar2.f46319b.f46314b);
                m17828a.mo13745f(covVar2.f46237Q);
                bivVar2.m17821a(bujVar.f44773a, m17828a.mo13731s());
                C13103zp c13103zp = new C13103zp();
                final azk mo18274a = bujVar.f44775c.mo18274a(new aof(cpkVar2, covVar2, null), new azj(new buq(bujVar.f44773a, bujVar.f44778f, c13103zp, covVar2, m17828a, bujVar.f44776d, bujVar.f44780h, bujVar.f44779g, null), m17828a));
                c13103zp.set(mo18274a);
                mo18274a.mo18525d().m18372a(new ash(m17828a) { // from class: com.google.android.gms.internal.ads.buk

                    /* renamed from: a */
                    private final adt f44781a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44781a = m17828a;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    /* renamed from: b */
                    public final void mo17547b() {
                        adt adtVar = this.f44781a;
                        if (adtVar.mo13808B() != null) {
                            adtVar.mo13808B().mo18783g();
                        }
                    }
                }, C13091zd.f50123f);
                mo18274a.mo18305k().m17826a(m17828a, true, (AbstractC12609hk) (bujVar.f44780h ? bujVar.f44779g : null));
                mo18274a.mo18305k();
                return daj.m16942a(bih.m17827a(m17828a, covVar2.f46271r.f46302b, covVar2.f46271r.f46301a), new cxu(bujVar, m17828a, covVar2, mo18274a) { // from class: com.google.android.gms.internal.ads.buo

                    /* renamed from: a */
                    private final buj f44787a;

                    /* renamed from: b */
                    private final adt f44788b;

                    /* renamed from: c */
                    private final cov f44789c;

                    /* renamed from: d */
                    private final azk f44790d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44787a = bujVar;
                        this.f44788b = m17828a;
                        this.f44789c = covVar2;
                        this.f44790d = mo18274a;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    /* renamed from: a */
                    public final Object mo14064a(Object obj2) {
                        adt adtVar = this.f44788b;
                        cov covVar3 = this.f44789c;
                        azk azkVar = this.f44790d;
                        if (covVar3.f46228H) {
                            adtVar.mo13794P();
                        }
                        adtVar.mo13728v();
                        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42683at)).booleanValue()) {
                            adtVar.onPause();
                        }
                        return azkVar.mo18308h();
                    }
                }, bujVar.f44777e);
            }
        }, this.f44777e);
        m16941a.addListener(bul.m17605a(bivVar), this.f44777e);
        return m16941a;
    }
}
