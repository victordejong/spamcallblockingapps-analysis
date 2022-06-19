package p193e.p194a.p1011l.p1025p2.p1027e2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/g.class */
public final class C17083g implements AbstractC17210z0 {

    /* renamed from: a */
    public final AbstractC8541a f47952a;

    @Inject
    public C17083g(AbstractC8541a abstractC8541a) {
        l.e(abstractC8541a, "coreSettings");
        this.f47952a = abstractC8541a;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        l.e(c17207y0, "update");
        if (c17207y0.f48318e.f48290j) {
            this.f47952a.remove("subscriptionErrorResolveUrl");
            this.f47952a.remove("subscriptionPaymentFailedViewShownOnce");
        }
    }
}
