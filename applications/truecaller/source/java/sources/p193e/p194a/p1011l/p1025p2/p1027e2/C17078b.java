package p193e.p194a.p1011l.p1025p2.p1027e2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p677d3.AbstractC12589h;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/b.class */
public final class C17078b implements AbstractC17210z0 {

    /* renamed from: a */
    public final AbstractC12589h f47945a;

    /* renamed from: b */
    public final C20592g f47946b;

    @Inject
    public C17078b(AbstractC12589h abstractC12589h, C20592g c20592g) {
        l.e(abstractC12589h, "businessCardRepository");
        l.e(c20592g, "featuresRegistry");
        this.f47945a = abstractC12589h;
        this.f47946b = c20592g;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        l.e(c17207y0, "update");
        if (c17207y0.f48314a || c17207y0.f48315b || c17207y0.f48316c) {
            C20592g c20592g = this.f47946b;
            if (!c20592g.f57792N4.m10941a(c20592g, C20592g.f57695p6[305]).isEnabled()) {
                return;
            }
            this.f47945a.mo22852b();
        }
    }
}
