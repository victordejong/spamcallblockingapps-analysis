package p193e.p194a.p1002k4.p1003n;

import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.k4.n.e */
/* loaded from: classes11-dex2jar.jar:e/a/k4/n/e.class */
public final class C16527e implements AbstractC16523a {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f46458a;

    public C16527e(AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19854f, "eventsTracker");
        this.f46458a = abstractC19854f;
    }

    @Override // p193e.p194a.p1002k4.p1003n.AbstractC16523a
    /* renamed from: a */
    public void mo17273a(AbstractC16528f abstractC16528f) {
        l.e(abstractC16528f, "event");
        AbstractC19463a0 mo11854a = this.f46458a.mo11854a();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("placepicker");
        Map<String, String> m17271b = abstractC16528f.m17271b();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        i.X0(m17271b, linkedHashMap);
        m15852a.m15848d(i.p0(linkedHashMap, new k("EventName", abstractC16528f.m17272a())));
        mo11854a.mo13111a(m15852a.build());
    }
}
