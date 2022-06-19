package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqn.class */
public final class bqn implements bmv<bdr> {

    /* renamed from: a */
    private final Context f11832a;

    /* renamed from: b */
    private final bee f11833b;

    /* renamed from: c */
    private final bdu f11834c;

    /* renamed from: d */
    private final chh f11835d;

    /* renamed from: e */
    private final Executor f11836e;

    /* renamed from: f */
    private final C3647yd f11837f;

    public bqn(Context context, C3647yd c3647yd, chh chhVar, Executor executor, bdu bduVar, bee beeVar) {
        this.f11832a = context;
        this.f11835d = chhVar;
        this.f11834c = bduVar;
        this.f11836e = executor;
        this.f11837f = c3647yd;
        this.f11833b = beeVar;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11715a(cgr cgrVar, bev bevVar, chd chdVar, Object obj) {
        crt<?> m12032a;
        act m12037a = this.f11833b.m12037a(this.f11835d.f13041e, cgrVar.f12970P);
        m12037a.mo13443f(cgrVar.f12967M);
        bevVar.m12018a(this.f11832a, m12037a.getView());
        C3658yo c3658yo = new C3658yo();
        bdt mo12053a = this.f11834c.mo12053a(new amy(chdVar, cgrVar, null), new bds(new bqt(this.f11832a, this.f11833b, this.f11835d, this.f11837f, cgrVar, c3658yo, m12037a), m12037a));
        c3658yo.m6731b(mo12053a);
        C3142fl.m7827a(m12037a, mo12053a.mo12057k());
        mo12053a.mo12941d().m12773a(new aqi(m12037a) { // from class: com.google.android.gms.internal.ads.bqs

            /* renamed from: a */
            private final act f11849a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11849a = m12037a;
            }

            @Override // com.google.android.gms.internal.ads.aqi
            /* renamed from: b */
            public final void mo11652b() {
                act actVar = this.f11849a;
                if (actVar.mo13426v() != null) {
                    actVar.mo13426v().mo13508g();
                }
            }
        }, C3650yg.f17647f);
        mo12053a.mo12056l().m12031a(m12037a, true);
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16532df)).booleanValue() || !cgrVar.f12970P) {
            mo12053a.mo12056l();
            m12032a = beh.m12032a(m12037a, cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a);
        } else {
            m12032a = crg.m10778a((Object) null);
        }
        return crg.m10783a(m12032a, new coe(this, m12037a, cgrVar, mo12053a) { // from class: com.google.android.gms.internal.ads.bqr

            /* renamed from: a */
            private final bqn f11845a;

            /* renamed from: b */
            private final act f11846b;

            /* renamed from: c */
            private final cgr f11847c;

            /* renamed from: d */
            private final bdt f11848d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11845a = this;
                this.f11846b = m12037a;
                this.f11847c = cgrVar;
                this.f11848d = mo12053a;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj2) {
                act actVar = this.f11846b;
                cgr cgrVar2 = this.f11847c;
                bdt bdtVar = this.f11848d;
                if (cgrVar2.f12959E) {
                    actVar.mo13490J();
                }
                actVar.mo13432p();
                if (((Boolean) dyx.m8158e().m7876a(edi.f16375ah)).booleanValue()) {
                    C2341q.m14742e();
                    C3572vj.m6940a(actVar);
                }
                return bdtVar.mo12060h();
            }
        }, this.f11836e);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (cgrVar.f12994p == null || cgrVar.f12994p.f13012a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<bdr> mo11688b(chd chdVar, cgr cgrVar) {
        bev bevVar = new bev();
        crt<bdr> m10782a = crg.m10782a(crg.m10778a((Object) null), new cqt(this, cgrVar, bevVar, chdVar) { // from class: com.google.android.gms.internal.ads.bqq

            /* renamed from: a */
            private final bqn f11841a;

            /* renamed from: b */
            private final cgr f11842b;

            /* renamed from: c */
            private final bev f11843c;

            /* renamed from: d */
            private final chd f11844d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11841a = this;
                this.f11842b = cgrVar;
                this.f11843c = bevVar;
                this.f11844d = chdVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11841a.m11715a(this.f11842b, this.f11843c, this.f11844d, obj);
            }
        }, this.f11836e);
        bevVar.getClass();
        m10782a.mo6734a(bqp.m11714a(bevVar), this.f11836e);
        return m10782a;
    }
}
