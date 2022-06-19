package p193e.p194a.p1138q.p1141e;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.contactfeedback.analytics.ContactFeedbackAnalyticsAction;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
/* renamed from: e.a.q.e.a */
/* loaded from: classes4-dex2jar.jar:e/a/q/e/a.class */
public final class C19391a {

    /* renamed from: a */
    public final AbstractC19462a f53907a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC19463a0> f53908b;

    @Inject
    public C19391a(AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19854f, "eventsTracker");
        this.f53907a = abstractC19462a;
        this.f53908b = abstractC19854f;
    }

    /* renamed from: a */
    public final void m13378a(String str, ContactFeedbackAnalyticsAction contactFeedbackAnalyticsAction) {
        String value = contactFeedbackAnalyticsAction.getValue();
        n.B0(C22128a.m8584p1(value, "action", value, null, str), this.f53907a);
        AbstractC19463a0 mo11854a = this.f53908b.mo11854a();
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15903c(str);
        m15906a.m15904b(contactFeedbackAnalyticsAction.getValue());
        mo11854a.mo13111a(m15906a.build());
    }
}
