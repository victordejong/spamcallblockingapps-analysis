package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.IOException;
import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23295e0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23359k;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
/* renamed from: e.k.a.c.j0.i.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/i.class */
public class C23721i extends AbstractC23729q implements Serializable {
    public C23721i(AbstractC23698i abstractC23698i, AbstractC23710f abstractC23710f, String str, boolean z, AbstractC23698i abstractC23698i2) {
        super(abstractC23698i, abstractC23710f, str, z, abstractC23698i2);
    }

    public C23721i(C23721i c23721i, AbstractC23462d abstractC23462d) {
        super(c23721i, abstractC23462d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: b */
    public Object mo6208b(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6202p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: c */
    public Object mo6207c(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6202p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: d */
    public Object mo6206d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6202p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: e */
    public Object mo6205e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6202p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: f */
    public AbstractC23709e mo6204f(AbstractC23462d abstractC23462d) {
        return abstractC23462d == this.f65763c ? this : new C23721i(this, abstractC23462d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: j */
    public AbstractC23295e0.EnumC23296a mo6203j() {
        return AbstractC23295e0.EnumC23296a.WRAPPER_OBJECT;
    }

    /* renamed from: p */
    public Object m6202p(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object mo5804n1;
        if (!abstractC23376j.mo5812d() || (mo5804n1 = abstractC23376j.mo5804n1()) == null) {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            EnumC23381m enumC23381m = EnumC23381m.START_OBJECT;
            if (mo7142l == enumC23381m) {
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                EnumC23381m enumC23381m2 = EnumC23381m.FIELD_NAME;
                if (mo5811i2 != enumC23381m2) {
                    AbstractC23698i abstractC23698i = this.f65762b;
                    StringBuilder m8728C = C22128a.m8728C("need JSON String that contains type id (for subtype of ");
                    m8728C.append(m6173o());
                    m8728C.append(")");
                    abstractC23632g.m6475e0(abstractC23698i, enumC23381m2, m8728C.toString(), new Object[0]);
                    throw null;
                }
            } else if (mo7142l != EnumC23381m.FIELD_NAME) {
                AbstractC23698i abstractC23698i2 = this.f65762b;
                StringBuilder m8728C2 = C22128a.m8728C("need JSON Object to contain As.WRAPPER_OBJECT type information for class ");
                m8728C2.append(m6173o());
                abstractC23632g.m6475e0(abstractC23698i2, enumC23381m, m8728C2.toString(), new Object[0]);
                throw null;
            }
            String mo5817U0 = abstractC23376j.mo5817U0();
            AbstractC23700j<Object> m6174n = m6174n(abstractC23632g, mo5817U0);
            abstractC23376j.mo5811i2();
            C23359k c23359k = abstractC23376j;
            if (this.f65766f) {
                c23359k = abstractC23376j;
                if (abstractC23376j.mo7150O1(enumC23381m)) {
                    C23893a0 c23893a0 = new C23893a0((AbstractC23382n) null, false);
                    c23893a0.mo5875M1();
                    c23893a0.mo5889B0(this.f65765e);
                    c23893a0.mo5868T1(mo5817U0);
                    abstractC23376j.mo7143j();
                    c23359k = C23359k.m7240y2(false, c23893a0.m5834y2(abstractC23376j), abstractC23376j);
                    c23359k.mo5811i2();
                }
            }
            Object mo6232d = m6174n.mo6232d(c23359k, abstractC23632g);
            EnumC23381m mo5811i22 = c23359k.mo5811i2();
            EnumC23381m enumC23381m3 = EnumC23381m.END_OBJECT;
            if (mo5811i22 == enumC23381m3) {
                return mo6232d;
            }
            abstractC23632g.m6475e0(this.f65762b, enumC23381m3, "expected closing END_OBJECT after type information and deserialized value", new Object[0]);
            throw null;
        }
        return m6176l(abstractC23376j, abstractC23632g, mo5804n1);
    }
}
