package p193e.p194a.p1011l.p1025p2.p1027e2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17140o0;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/e.class */
public final class C17081e implements AbstractC17210z0 {

    /* renamed from: a */
    public final AbstractC17140o0 f47949a;

    @Inject
    public C17081e(AbstractC17140o0 abstractC17140o0) {
        l.e(abstractC17140o0, "premiumProductsRepository");
        this.f47949a = abstractC17140o0;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        l.e(c17207y0, "update");
        if (c17207y0.f48314a || c17207y0.f48315b || c17207y0.f48317d.f48244c != c17207y0.f48318e.f48288h) {
            this.f47949a.mo16475c();
        }
    }
}
