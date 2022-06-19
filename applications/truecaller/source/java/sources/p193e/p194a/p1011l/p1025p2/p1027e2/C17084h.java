package p193e.p194a.p1011l.p1025p2.p1027e2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/h.class */
public final class C17084h implements AbstractC17210z0 {

    /* renamed from: a */
    public final C17192t1 f47953a;

    @Inject
    public C17084h(C17192t1 c17192t1) {
        l.e(c17192t1, "webBillingPurchaseStateManager");
        this.f47953a = c17192t1;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        l.e(c17207y0, "update");
        if (c17207y0.f48314a || c17207y0.f48315b) {
            C17192t1 c17192t1 = this.f47953a;
            c17192t1.f48231a.mo16401X1(0L);
            c17192t1.f48231a.mo16402X(false);
            c17192t1.f48232b.mo16871y0(false);
        }
    }
}
