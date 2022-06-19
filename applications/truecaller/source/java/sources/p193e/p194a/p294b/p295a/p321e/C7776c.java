package p193e.p194a.p294b.p295a.p321e;

import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b.a.e.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/e/c.class */
public final class C7776c implements AbstractC7775b {

    /* renamed from: a */
    public Set<? extends AbstractC7775b> f24235a;

    @Inject
    public C7776c(AbstractC19462a abstractC19462a, AbstractC19494d abstractC19494d, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19462a, "fbAnalytics");
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        l.e(abstractC19854f, "eventsTracker");
        this.f24235a = i.z0(new AbstractC7775b[]{new C7778e(abstractC19494d), new C7779f(abstractC19854f), new C7777d(abstractC19462a)});
    }

    @Override // p193e.p194a.p294b.p295a.p321e.AbstractC7775b
    /* renamed from: a */
    public void mo29295a(AbstractC7761a abstractC7761a) {
        l.e(abstractC7761a, "event");
        for (AbstractC7775b abstractC7775b : this.f24235a) {
            abstractC7775b.mo29295a(abstractC7761a);
        }
    }
}
