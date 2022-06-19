package p193e.p194a.p1011l.p1025p2.p1027e2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/a.class */
public final class C17077a implements AbstractC17210z0 {

    /* renamed from: a */
    public final C20592g f47942a;

    /* renamed from: b */
    public final AbstractC8541a f47943b;

    /* renamed from: c */
    public final AbstractC14840m f47944c;

    @Inject
    public C17077a(C20592g c20592g, AbstractC8541a abstractC8541a, AbstractC14840m abstractC14840m) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC14840m, "filterSettings");
        this.f47942a = c20592g;
        this.f47943b = abstractC8541a;
        this.f47944c = abstractC14840m;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        boolean z;
        Boolean bool = Boolean.TRUE;
        l.e(c17207y0, "update");
        if (c17207y0.f48314a) {
            if (!this.f47942a.m10956l().isEnabled() || !this.f47944c.mo19547u()) {
                z = false;
            } else {
                this.f47944c.mo19557k(false);
                z = true;
            }
            if (bool.equals(this.f47944c.mo19560h())) {
                this.f47944c.mo19548t(null);
                z = true;
            }
            boolean z2 = z;
            if (this.f47942a.m10958k().isEnabled()) {
                z2 = z;
                if (this.f47944c.mo19566b()) {
                    this.f47944c.mo19555m(false);
                    z2 = true;
                }
            }
            boolean z3 = z2;
            if (this.f47942a.m10966g().isEnabled()) {
                z3 = z2;
                if (this.f47944c.mo19544x()) {
                    this.f47944c.mo19561g(false);
                    z3 = true;
                }
            }
            boolean z4 = z3;
            if (this.f47942a.m10960j().isEnabled()) {
                z4 = z3;
                if (this.f47944c.mo19562f()) {
                    this.f47944c.mo19553o(false);
                    z4 = true;
                }
            }
            boolean z5 = z4;
            if (this.f47942a.m10964h().isEnabled()) {
                z5 = z4;
                if (this.f47944c.mo19550r()) {
                    this.f47944c.mo19558j(false);
                    z5 = true;
                }
            }
            boolean z6 = z5;
            if (this.f47942a.m10962i().isEnabled()) {
                z6 = z5;
                if (this.f47944c.mo19549s()) {
                    this.f47944c.mo19567a(false);
                    z6 = true;
                }
            }
            if (z6) {
                this.f47943b.putBoolean("premiumHadPremiumBlockingFeatures", true);
            }
        }
        if (!(!c17207y0.f48318e.f48290j) || this.f47944c.mo19560h() != null) {
            return;
        }
        this.f47944c.mo19548t(bool);
    }
}
