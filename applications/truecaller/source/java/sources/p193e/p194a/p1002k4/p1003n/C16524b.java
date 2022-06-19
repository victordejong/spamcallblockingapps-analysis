package p193e.p194a.p1002k4.p1003n;

import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.k4.n.b */
/* loaded from: classes11-dex2jar.jar:e/a/k4/n/b.class */
public final class C16524b implements AbstractC16523a {

    /* renamed from: a */
    public Set<? extends AbstractC16523a> f46455a;

    @Inject
    public C16524b(AbstractC19462a abstractC19462a, AbstractC19494d abstractC19494d, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19462a, "fbAnalytics");
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        l.e(abstractC19854f, "eventsTracker");
        this.f46455a = i.z0(new AbstractC16523a[]{new C16526d(abstractC19494d), new C16527e(abstractC19854f), new C16525c(abstractC19462a)});
    }

    @Override // p193e.p194a.p1002k4.p1003n.AbstractC16523a
    /* renamed from: a */
    public void mo17273a(AbstractC16528f abstractC16528f) {
        l.e(abstractC16528f, "event");
        for (AbstractC16523a abstractC16523a : this.f46455a) {
            abstractC16523a.mo17273a(abstractC16528f);
        }
    }
}
