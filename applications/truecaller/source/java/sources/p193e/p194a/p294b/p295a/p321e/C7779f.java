package p193e.p194a.p294b.p295a.p321e;

import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b.a.e.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/e/f.class */
public final class C7779f implements AbstractC7775b {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f24238a;

    public C7779f(AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19854f, "eventsTracker");
        this.f24238a = abstractC19854f;
    }

    @Override // p193e.p194a.p294b.p295a.p321e.AbstractC7775b
    /* renamed from: a */
    public void mo29295a(AbstractC7761a abstractC7761a) {
        l.e(abstractC7761a, "event");
        AbstractC19463a0 mo11854a = this.f24238a.mo11854a();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("bizmon");
        Map<String, String> m29296b = abstractC7761a.m29296b();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        i.X0(m29296b, linkedHashMap);
        m15852a.m15848d(i.p0(linkedHashMap, new k("EventName", abstractC7761a.m29297a())));
        mo11854a.mo13111a(m15852a.build());
    }
}
