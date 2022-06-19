package p193e.p194a.p1138q.p1141e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.q.e.b */
/* loaded from: classes4-dex2jar.jar:e/a/q/e/b.class */
public final class C19392b implements AbstractC19549v {

    /* renamed from: a */
    public final String f53909a;

    public C19392b(String str) {
        l.e(str, "source");
        this.f53909a = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15848d(i.W0(i.e0(new k[]{new k("Source", this.f53909a)})));
        m15852a.m15850b("ShowFeedbackComments");
        return new AbstractC19580x.C19584d(m15852a.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C19392b) && l.a(this.f53909a, ((C19392b) obj).f53909a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f53909a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("ShowFeedbackCommentsEvent(source="), this.f53909a, ")");
    }
}
