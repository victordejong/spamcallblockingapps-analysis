package p193e.p194a.p1011l.p1025p2.p1027e2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17086f;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/c.class */
public final class C17079c implements AbstractC17210z0 {

    /* renamed from: a */
    public final C17086f f47947a;

    @Inject
    public C17079c(C17086f c17086f) {
        l.e(c17086f, "freePremiumPromo");
        this.f47947a = c17086f;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        l.e(c17207y0, "update");
        C17086f c17086f = this.f47947a;
        if (!c17086f.f47955a.getBoolean("premiumFreePromoReceived")) {
            return;
        }
        if (!c17086f.f47962h.mo16408H()) {
            c17086f.f47955a.putBoolean("premiumFreePromoEnded", true);
            c17086f.m16548b();
        } else if (!c17086f.f47962h.mo16408H() || !c17086f.f47955a.getBoolean("premiumFreePromoEnded")) {
        } else {
            c17086f.m16549a();
        }
    }
}
