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
/* renamed from: e.k.a.c.j0.i.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/a.class */
public class C23713a extends AbstractC23729q implements Serializable {
    public C23713a(AbstractC23698i abstractC23698i, AbstractC23710f abstractC23710f, String str, boolean z, AbstractC23698i abstractC23698i2) {
        super(abstractC23698i, abstractC23710f, str, z, abstractC23698i2);
    }

    public C23713a(C23713a c23713a, AbstractC23462d abstractC23462d) {
        super(c23713a, abstractC23462d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: b */
    public Object mo6208b(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6215p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: c */
    public Object mo6207c(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6215p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: d */
    public Object mo6206d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6215p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: e */
    public Object mo6205e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return m6215p(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: f */
    public AbstractC23709e mo6204f(AbstractC23462d abstractC23462d) {
        return abstractC23462d == this.f65763c ? this : new C23713a(this, abstractC23462d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: j */
    public AbstractC23295e0.EnumC23296a mo6203j() {
        return AbstractC23295e0.EnumC23296a.WRAPPER_ARRAY;
    }

    /* renamed from: p */
    public Object m6215p(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        String str;
        Object mo5804n1;
        if (!abstractC23376j.mo5812d() || (mo5804n1 = abstractC23376j.mo5804n1()) == null) {
            boolean mo7146V1 = abstractC23376j.mo7146V1();
            if (abstractC23376j.mo7146V1()) {
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                EnumC23381m enumC23381m = EnumC23381m.VALUE_STRING;
                if (mo5811i2 != enumC23381m) {
                    abstractC23632g.m6475e0(this.f65762b, enumC23381m, "need JSON String that contains type id (for subtype of %s)", m6173o());
                    throw null;
                }
                str = abstractC23376j.mo5817U0();
                abstractC23376j.mo5811i2();
            } else if (this.f65764d == null) {
                AbstractC23698i abstractC23698i = this.f65762b;
                EnumC23381m enumC23381m2 = EnumC23381m.START_ARRAY;
                StringBuilder m8728C = C22128a.m8728C("need JSON Array to contain As.WRAPPER_ARRAY type information for class ");
                m8728C.append(m6173o());
                abstractC23632g.m6475e0(abstractC23698i, enumC23381m2, m8728C.toString(), new Object[0]);
                throw null;
            } else {
                str = this.f65761a.mo6171f();
            }
            AbstractC23700j<Object> m6174n = m6174n(abstractC23632g, str);
            C23359k c23359k = abstractC23376j;
            if (this.f65766f) {
                c23359k = abstractC23376j;
                if (!mo6213q()) {
                    c23359k = abstractC23376j;
                    if (abstractC23376j.mo7150O1(EnumC23381m.START_OBJECT)) {
                        C23893a0 c23893a0 = new C23893a0((AbstractC23382n) null, false);
                        c23893a0.mo5875M1();
                        c23893a0.mo5889B0(this.f65765e);
                        c23893a0.mo5868T1(str);
                        abstractC23376j.mo7143j();
                        c23359k = C23359k.m7240y2(false, c23893a0.m5834y2(abstractC23376j), abstractC23376j);
                        c23359k.mo5811i2();
                    }
                }
            }
            if (mo7146V1 && c23359k.mo7142l() == EnumC23381m.END_ARRAY) {
                return m6174n.mo6233c(abstractC23632g);
            }
            Object mo6232d = m6174n.mo6232d(c23359k, abstractC23632g);
            if (mo7146V1) {
                EnumC23381m mo5811i22 = c23359k.mo5811i2();
                EnumC23381m enumC23381m3 = EnumC23381m.END_ARRAY;
                if (mo5811i22 != enumC23381m3) {
                    abstractC23632g.m6475e0(this.f65762b, enumC23381m3, "expected closing END_ARRAY after type information and deserialized value", new Object[0]);
                    throw null;
                }
            }
            return mo6232d;
        }
        return m6176l(abstractC23376j, abstractC23632g, mo5804n1);
    }

    /* renamed from: q */
    public boolean mo6213q() {
        return false;
    }
}
