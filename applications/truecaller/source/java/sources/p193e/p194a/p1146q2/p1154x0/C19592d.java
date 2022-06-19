package p193e.p194a.p1146q2.p1154x0;

import e.m.f.a.e;
import e.m.f.a.j;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19566e;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19577n;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.q2.x0.d */
/* loaded from: classes5-dex2jar.jar:e/a/q2/x0/d.class */
public final class C19592d implements AbstractC19566e {

    /* renamed from: a */
    public final g f54455a = C25225a.m3978P1(C19593a.f54457b);

    /* renamed from: b */
    public final AbstractC8621z f54456b;

    /* renamed from: e.a.q2.x0.d$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/x0/d$a.class */
    public static final class C19593a extends m implements a<j> {

        /* renamed from: b */
        public static final C19593a f54457b = new C19593a();

        public C19593a() {
            super(0);
        }

        public Object invoke() {
            return j.q();
        }
    }

    @Inject
    public C19592d(AbstractC8621z abstractC8621z) {
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f54456b = abstractC8621z;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19566e
    /* renamed from: a */
    public AbstractC19577n mo13124a(String str) {
        AbstractC19577n abstractC19577n = AbstractC19577n.C19578a.f54422a;
        if (str == null) {
            return abstractC19577n;
        }
        AbstractC8621z abstractC8621z = this.f54456b;
        String mo28186e = abstractC8621z.mo28186e(str, abstractC8621z.mo28189b(), true);
        AbstractC19577n abstractC19577n2 = abstractC19577n;
        if (mo28186e != null) {
            try {
                String z = ((j) this.f54455a.getValue()).z(((j) this.f54455a.getValue()).R(mo28186e, (String) null));
                abstractC19577n2 = abstractC19577n;
                if (z != null) {
                    abstractC19577n2 = new AbstractC19577n.C19579b(mo28186e, z);
                }
            } catch (e e) {
                abstractC19577n2 = abstractC19577n;
            }
        }
        return abstractC19577n2;
    }
}
