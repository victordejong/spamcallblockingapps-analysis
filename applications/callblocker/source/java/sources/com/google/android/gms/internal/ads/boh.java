package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/boh.class */
public final class boh implements bmv<avq> {

    /* renamed from: a */
    private final Context f11670a;

    /* renamed from: b */
    private final bee f11671b;

    /* renamed from: c */
    private final awq f11672c;

    /* renamed from: d */
    private final chh f11673d;

    /* renamed from: e */
    private final Executor f11674e;

    /* renamed from: f */
    private final C3647yd f11675f;

    public boh(Context context, C3647yd c3647yd, chh chhVar, Executor executor, awq awqVar, bee beeVar) {
        this.f11670a = context;
        this.f11673d = chhVar;
        this.f11672c = awqVar;
        this.f11674e = executor;
        this.f11675f = c3647yd;
        this.f11671b = beeVar;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11741a(cgr cgrVar, bev bevVar, chd chdVar, Object obj) {
        crt<?> m12032a;
        act m12037a = this.f11671b.m12037a(this.f11673d.f13041e, cgrVar.f12970P);
        m12037a.mo13443f(cgrVar.f12967M);
        bevVar.m12018a(this.f11670a, m12037a.getView());
        C3658yo c3658yo = new C3658yo();
        avs mo12372a = this.f11672c.mo12372a(new amy(chdVar, cgrVar, null), new avv(new boo(this.f11670a, this.f11675f, c3658yo, cgrVar, m12037a), m12037a));
        c3658yo.m6731b(mo12372a);
        mo12372a.mo12941d().m12773a(new aqi(m12037a) { // from class: com.google.android.gms.internal.ads.boi

            /* renamed from: a */
            private final act f11676a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11676a = m12037a;
            }

            @Override // com.google.android.gms.internal.ads.aqi
            /* renamed from: b */
            public final void mo11652b() {
                act actVar = this.f11676a;
                if (actVar.mo13426v() != null) {
                    actVar.mo13426v().mo13508g();
                }
            }
        }, C3650yg.f17647f);
        mo12372a.mo12400k().m12031a(m12037a, true);
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16532df)).booleanValue() || !cgrVar.f12970P) {
            mo12372a.mo12400k();
            m12032a = beh.m12032a(m12037a, cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a);
        } else {
            m12032a = crg.m10778a((Object) null);
        }
        return crg.m10783a(m12032a, new coe(this, m12037a, cgrVar, mo12372a) { // from class: com.google.android.gms.internal.ads.bol

            /* renamed from: a */
            private final boh f11678a;

            /* renamed from: b */
            private final act f11679b;

            /* renamed from: c */
            private final cgr f11680c;

            /* renamed from: d */
            private final avs f11681d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11678a = this;
                this.f11679b = m12037a;
                this.f11680c = cgrVar;
                this.f11681d = mo12372a;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj2) {
                act actVar = this.f11679b;
                cgr cgrVar2 = this.f11680c;
                avs avsVar = this.f11681d;
                if (cgrVar2.f12959E) {
                    actVar.mo13490J();
                }
                actVar.mo13432p();
                if (((Boolean) dyx.m8158e().m7876a(edi.f16375ah)).booleanValue()) {
                    C2341q.m14742e();
                    C3572vj.m6940a(actVar);
                }
                return avsVar.mo12403h();
            }
        }, this.f11674e);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (cgrVar.f12994p == null || cgrVar.f12994p.f13012a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<avq> mo11688b(chd chdVar, cgr cgrVar) {
        bev bevVar = new bev();
        crt<avq> m10782a = crg.m10782a(crg.m10778a((Object) null), new cqt(this, cgrVar, bevVar, chdVar) { // from class: com.google.android.gms.internal.ads.bog

            /* renamed from: a */
            private final boh f11666a;

            /* renamed from: b */
            private final cgr f11667b;

            /* renamed from: c */
            private final bev f11668c;

            /* renamed from: d */
            private final chd f11669d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11666a = this;
                this.f11667b = cgrVar;
                this.f11668c = bevVar;
                this.f11669d = chdVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11666a.m11741a(this.f11667b, this.f11668c, this.f11669d, obj);
            }
        }, this.f11674e);
        bevVar.getClass();
        m10782a.mo6734a(boj.m11740a(bevVar), this.f11674e);
        return m10782a;
    }
}
