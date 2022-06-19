package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bnd.class */
public final class bnd implements bmv<akk> {

    /* renamed from: a */
    private final alh f11583a;

    /* renamed from: b */
    private final Context f11584b;

    /* renamed from: c */
    private final bee f11585c;

    /* renamed from: d */
    private final chh f11586d;

    /* renamed from: e */
    private final Executor f11587e;

    /* renamed from: f */
    private final coe<cgr, C3584vv> f11588f;

    public bnd(alh alhVar, Context context, Executor executor, bee beeVar, chh chhVar, coe<cgr, C3584vv> coeVar) {
        this.f11584b = context;
        this.f11583a = alhVar;
        this.f11587e = executor;
        this.f11585c = beeVar;
        this.f11586d = chhVar;
        this.f11588f = coeVar;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11756a(chd chdVar, cgr cgrVar, Object obj) {
        dyd m11312a = chk.m11312a(this.f11584b, cgrVar.f12996r);
        act m12038a = this.f11585c.m12038a(m11312a);
        m12038a.mo13443f(cgrVar.f12967M);
        alh alhVar = this.f11583a;
        amy amyVar = new amy(chdVar, cgrVar, null);
        bew bewVar = new bew(this.f11584b, m12038a.getView(), this.f11588f.mo7184a(cgrVar));
        m12038a.getClass();
        akj mo12971a = alhVar.mo12971a(amyVar, new ako(bewVar, m12038a, bnf.m11755a(m12038a), chk.m11311a(m11312a)));
        mo12971a.mo13022i().m12031a(m12038a, false);
        mo12971a.mo12941d().m12773a(new aqi(m12038a) { // from class: com.google.android.gms.internal.ads.bni

            /* renamed from: a */
            private final act f11599a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11599a = m12038a;
            }

            @Override // com.google.android.gms.internal.ads.aqi
            /* renamed from: b */
            public final void mo11652b() {
                act actVar = this.f11599a;
                if (actVar.mo13426v() != null) {
                    actVar.mo13426v().mo13508g();
                }
            }
        }, C3650yg.f17647f);
        mo12971a.mo13022i();
        crt<?> m12032a = beh.m12032a(m12038a, cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a);
        if (cgrVar.f12959E) {
            m12038a.getClass();
            m12032a.mo6734a(bnh.m11754a(m12038a), this.f11587e);
        }
        m12032a.mo6734a(new Runnable(this, m12038a) { // from class: com.google.android.gms.internal.ads.bnk

            /* renamed from: a */
            private final bnd f11601a;

            /* renamed from: b */
            private final act f11602b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11601a = this;
                this.f11602b = m12038a;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11601a.m11757a(this.f11602b);
            }
        }, this.f11587e);
        return crg.m10783a(m12032a, new coe(mo12971a) { // from class: com.google.android.gms.internal.ads.bnj

            /* renamed from: a */
            private final akj f11600a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11600a = mo12971a;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj2) {
                return this.f11600a.mo13023h();
            }
        }, C3650yg.f17647f);
    }

    /* renamed from: a */
    public final /* synthetic */ void m11757a(act actVar) {
        actVar.mo13432p();
        adn mo13448d = actVar.mo13448d();
        if (this.f11586d.f13038b == null || mo13448d == null) {
            return;
        }
        mo13448d.m13567a(this.f11586d.f13038b);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (cgrVar.f12994p == null || cgrVar.f12994p.f13012a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<akk> mo11688b(chd chdVar, cgr cgrVar) {
        return crg.m10782a(crg.m10778a((Object) null), new cqt(this, chdVar, cgrVar) { // from class: com.google.android.gms.internal.ads.bng

            /* renamed from: a */
            private final bnd f11595a;

            /* renamed from: b */
            private final chd f11596b;

            /* renamed from: c */
            private final cgr f11597c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11595a = this;
                this.f11596b = chdVar;
                this.f11597c = cgrVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11595a.m11756a(this.f11596b, this.f11597c, obj);
            }
        }, this.f11587e);
    }
}
