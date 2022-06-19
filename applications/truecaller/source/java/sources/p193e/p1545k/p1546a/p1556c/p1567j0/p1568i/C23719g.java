package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23295e0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23359k;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23479m;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23619e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23924n;
/* renamed from: e.k.a.c.j0.i.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/g.class */
public class C23719g extends C23713a {

    /* renamed from: i */
    public final AbstractC23295e0.EnumC23296a f65745i;

    /* renamed from: j */
    public final String f65746j;

    public C23719g(AbstractC23698i abstractC23698i, AbstractC23710f abstractC23710f, String str, boolean z, AbstractC23698i abstractC23698i2, AbstractC23295e0.EnumC23296a enumC23296a) {
        super(abstractC23698i, abstractC23710f, str, z, abstractC23698i2);
        this.f65746j = String.format("missing type id property '%s'", this.f65765e);
        this.f65745i = enumC23296a;
    }

    public C23719g(C23719g c23719g, AbstractC23462d abstractC23462d) {
        super(c23719g, abstractC23462d);
        this.f65746j = abstractC23462d == null ? String.format("missing type id property '%s'", this.f65765e) : String.format("missing type id property '%s' (for POJO property '%s')", this.f65765e, abstractC23462d.getName());
        this.f65745i = c23719g.f65745i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23713a, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: b */
    public Object mo6208b(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        return abstractC23376j.mo7150O1(EnumC23381m.START_ARRAY) ? m6215p(abstractC23376j, abstractC23632g) : mo6206d(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23713a, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: d */
    public Object mo6206d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23381m enumC23381m;
        Object mo5804n1;
        if (!abstractC23376j.mo5812d() || (mo5804n1 = abstractC23376j.mo5804n1()) == null) {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            C23893a0 c23893a0 = null;
            if (mo7142l == EnumC23381m.START_OBJECT) {
                enumC23381m = abstractC23376j.mo5811i2();
            } else {
                enumC23381m = mo7142l;
                if (mo7142l != EnumC23381m.FIELD_NAME) {
                    return m6211s(abstractC23376j, abstractC23632g, null, this.f65746j);
                }
            }
            boolean m6487S = abstractC23632g.m6487S(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
            EnumC23381m enumC23381m2 = enumC23381m;
            while (enumC23381m2 == EnumC23381m.FIELD_NAME) {
                String mo5809k = abstractC23376j.mo5809k();
                abstractC23376j.mo5811i2();
                if (mo5809k.equals(this.f65765e) || (m6487S && mo5809k.equalsIgnoreCase(this.f65765e))) {
                    return m6212r(abstractC23376j, abstractC23632g, c23893a0, abstractC23376j.mo5817U0());
                }
                C23893a0 c23893a02 = c23893a0;
                if (c23893a0 == null) {
                    c23893a02 = new C23893a0(abstractC23376j, abstractC23632g);
                }
                c23893a02.f66116q.m7061q(mo5809k);
                c23893a02.m5860h2(mo5809k);
                c23893a02.m5890A2(abstractC23376j);
                enumC23381m2 = abstractC23376j.mo5811i2();
                c23893a0 = c23893a02;
            }
            return m6211s(abstractC23376j, abstractC23632g, c23893a0, this.f65746j);
        }
        return m6176l(abstractC23376j, abstractC23632g, mo5804n1);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23713a, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: f */
    public AbstractC23709e mo6204f(AbstractC23462d abstractC23462d) {
        return abstractC23462d == this.f65763c ? this : new C23719g(this, abstractC23462d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23713a, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: j */
    public AbstractC23295e0.EnumC23296a mo6203j() {
        return this.f65745i;
    }

    /* renamed from: r */
    public Object m6212r(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23893a0 c23893a0, String str) throws IOException {
        AbstractC23700j<Object> m6174n = m6174n(abstractC23632g, str);
        C23893a0 c23893a02 = c23893a0;
        if (this.f65766f) {
            c23893a02 = c23893a0;
            if (c23893a0 == null) {
                c23893a02 = new C23893a0(abstractC23376j, abstractC23632g);
            }
            c23893a02.mo5889B0(abstractC23376j.mo5809k());
            c23893a02.mo5868T1(str);
        }
        C23359k c23359k = abstractC23376j;
        if (c23893a02 != null) {
            abstractC23376j.mo7143j();
            c23359k = C23359k.m7240y2(false, c23893a02.m5834y2(abstractC23376j), abstractC23376j);
        }
        c23359k.mo5811i2();
        return m6174n.mo6232d(c23359k, abstractC23632g);
    }

    /* renamed from: s */
    public Object m6211s(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23893a0 c23893a0, String str) throws IOException {
        if (!(this.f65764d != null)) {
            Object m6217a = AbstractC23709e.m6217a(abstractC23376j, abstractC23632g, this.f65762b);
            if (m6217a != null) {
                return m6217a;
            }
            if (abstractC23376j.mo7146V1()) {
                return m6215p(abstractC23376j, abstractC23632g);
            }
            if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING) && abstractC23632g.m6488R(EnumC23694h.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && abstractC23376j.mo5817U0().trim().isEmpty()) {
                return null;
            }
        }
        AbstractC23700j<Object> m6175m = m6175m(abstractC23632g);
        if (m6175m != null) {
            AbstractC23376j abstractC23376j2 = abstractC23376j;
            if (c23893a0 != null) {
                c23893a0.mo5840t0();
                abstractC23376j2 = c23893a0.m5834y2(abstractC23376j);
                abstractC23376j2.mo5811i2();
            }
            return m6175m.mo6232d(abstractC23376j2, abstractC23632g);
        }
        AbstractC23698i abstractC23698i = this.f65762b;
        C23924n c23924n = abstractC23632g.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 == null) {
                break;
            }
            Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
            c23924n = c23924n2.f66183b;
        }
        throw new C23619e(abstractC23632g.f65505g, abstractC23632g.m6530a(String.format("Could not resolve subtype of %s", abstractC23698i), str), abstractC23698i, null);
    }
}
