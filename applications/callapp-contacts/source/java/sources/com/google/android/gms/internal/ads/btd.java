package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btd.class */
public final class btd implements bsk<alq> {

    /* renamed from: a */
    final amn f44687a;

    /* renamed from: b */
    final Context f44688b;

    /* renamed from: c */
    final bif f44689c;

    /* renamed from: d */
    final cpo f44690d;

    /* renamed from: e */
    final Executor f44691e;

    /* renamed from: f */
    final cxu<cov, zzad> f44692f;

    public btd(amn amnVar, Context context, Executor executor, bif bifVar, cpo cpoVar, cxu<cov, zzad> cxuVar) {
        this.f44688b = context;
        this.f44687a = amnVar;
        this.f44691e = executor;
        this.f44689c = bifVar;
        this.f44690d = cpoVar;
        this.f44692f = cxuVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (covVar.f46271r == null || covVar.f46271r.f46301a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<alq> mo17574b(cpk cpkVar, cov covVar) {
        return daj.m16941a(dbh.m16899a((Object) null), new daq(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.btg

            /* renamed from: a */
            private final btd f44698a;

            /* renamed from: b */
            private final cpk f44699b;

            /* renamed from: c */
            private final cov f44700c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44698a = this;
                this.f44699b = cpkVar;
                this.f44700c = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final btd btdVar = this.f44698a;
                cpk cpkVar2 = this.f44699b;
                cov covVar2 = this.f44700c;
                zzvt m17358a = cps.m17358a(btdVar.f44688b, covVar2.f46273t);
                final adt m17828a = btdVar.f44689c.m17828a(m17358a, covVar2, cpkVar2.f46319b.f46314b);
                m17828a.mo13745f(covVar2.f46237Q);
                zzbos zzcjrVar = (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42900ey)).booleanValue() || !covVar2.f46249ab) ? new zzcjr(btdVar.f44688b, m17828a.mo13731s(), btdVar.f44692f.mo14064a(covVar2)) : zzbos.m13722a(btdVar.f44688b, m17828a.mo13731s(), covVar2);
                amn amnVar = btdVar.f44687a;
                aof aofVar = new aof(cpkVar2, covVar2, null);
                m17828a.getClass();
                final alt mo18560a = amnVar.mo18560a(aofVar, new alx(zzcjrVar, m17828a, new anq(m17828a) { // from class: com.google.android.gms.internal.ads.btf

                    /* renamed from: a */
                    private final adt f44697a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44697a = m17828a;
                    }

                    @Override // com.google.android.gms.internal.ads.anq
                    /* renamed from: a */
                    public final emk mo17577a() {
                        return this.f44697a.mo13763b();
                    }
                }, cps.m17357a(m17358a)));
                mo18560a.mo18577i().m17826a(m17828a, false, (AbstractC12609hk) null);
                mo18560a.mo18525d().m18372a(new ash(m17828a) { // from class: com.google.android.gms.internal.ads.bti

                    /* renamed from: a */
                    private final adt f44702a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44702a = m17828a;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    /* renamed from: b */
                    public final void mo17547b() {
                        adt adtVar = this.f44702a;
                        if (adtVar.mo13808B() != null) {
                            adtVar.mo13808B().mo18783g();
                        }
                    }
                }, C13091zd.f50123f);
                mo18560a.mo18577i();
                dbt<?> m17827a = bih.m17827a(m17828a, covVar2.f46271r.f46302b, covVar2.f46271r.f46301a);
                if (covVar2.f46228H) {
                    m17828a.getClass();
                    m17827a.addListener(bth.m17615a(m17828a), btdVar.f44691e);
                }
                m17827a.addListener(new Runnable(btdVar, m17828a) { // from class: com.google.android.gms.internal.ads.btk

                    /* renamed from: a */
                    private final btd f44704a;

                    /* renamed from: b */
                    private final adt f44705b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44704a = btdVar;
                        this.f44705b = m17828a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        btd btdVar2 = this.f44704a;
                        adt adtVar = this.f44705b;
                        adtVar.mo13728v();
                        aem mo13763b = adtVar.mo13763b();
                        if (btdVar2.f44690d.f46322b == null || mo13763b == null) {
                            return;
                        }
                        mo13763b.m18804a(btdVar2.f44690d.f46322b);
                    }
                }, btdVar.f44691e);
                return daj.m16942a(m17827a, new cxu(mo18560a) { // from class: com.google.android.gms.internal.ads.btj

                    /* renamed from: a */
                    private final alt f44703a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44703a = mo18560a;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    /* renamed from: a */
                    public final Object mo14064a(Object obj2) {
                        return this.f44703a.mo18578h();
                    }
                }, C13091zd.f50123f);
            }
        }, this.f44691e);
    }
}
