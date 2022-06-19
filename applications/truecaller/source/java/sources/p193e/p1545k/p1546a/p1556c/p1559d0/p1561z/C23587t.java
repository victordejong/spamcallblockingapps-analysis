package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23475j;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.t */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/t.class */
public class C23587t extends AbstractC23561i<Map.Entry<Object, Object>> implements AbstractC23474i {

    /* renamed from: h */
    public final AbstractC23940o f65430h;

    /* renamed from: i */
    public final AbstractC23700j<Object> f65431i;

    /* renamed from: j */
    public final AbstractC23709e f65432j;

    public C23587t(C23587t c23587t, AbstractC23940o abstractC23940o, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e) {
        super(c23587t, c23587t.f65362e, c23587t.f65364g);
        this.f65430h = abstractC23940o;
        this.f65431i = abstractC23700j;
        this.f65432j = abstractC23709e;
    }

    public C23587t(AbstractC23698i abstractC23698i, AbstractC23940o abstractC23940o, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e) {
        super(abstractC23698i, (AbstractC23484r) null, (Boolean) null);
        if (abstractC23698i.mo5926g() == 2) {
            this.f65430h = abstractC23940o;
            this.f65431i = abstractC23700j;
            this.f65432j = abstractC23709e;
            return;
        }
        throw new IllegalArgumentException("Missing generic type information for " + abstractC23698i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23940o abstractC23940o;
        AbstractC23940o abstractC23940o2 = this.f65430h;
        if (abstractC23940o2 == null) {
            abstractC23940o = abstractC23632g.m6459u(this.f65361d.mo5927f(0), abstractC23462d);
        } else {
            abstractC23940o = abstractC23940o2;
            if (abstractC23940o2 instanceof AbstractC23475j) {
                abstractC23940o = ((AbstractC23475j) abstractC23940o2).m6790a(abstractC23632g, abstractC23462d);
            }
        }
        AbstractC23700j<?> m6645g0 = m6645g0(abstractC23632g, abstractC23462d, this.f65431i);
        AbstractC23698i mo5927f = this.f65361d.mo5927f(1);
        AbstractC23700j<?> m6461s = m6645g0 == null ? abstractC23632g.m6461s(mo5927f, abstractC23462d) : abstractC23632g.m6499G(m6645g0, abstractC23462d, mo5927f);
        AbstractC23709e abstractC23709e = this.f65432j;
        AbstractC23709e abstractC23709e2 = abstractC23709e;
        if (abstractC23709e != null) {
            abstractC23709e2 = abstractC23709e.mo6204f(abstractC23462d);
        }
        return (this.f65430h == abstractC23940o && this.f65431i == m6461s && this.f65432j == abstractC23709e2) ? this : new C23587t(this, abstractC23940o, m6461s, abstractC23709e2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        Map.Entry<Object, Object> entry;
        EnumC23381m enumC23381m;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l == EnumC23381m.START_OBJECT) {
            enumC23381m = abstractC23376j.mo5811i2();
        } else {
            enumC23381m = mo7142l;
            if (mo7142l != EnumC23381m.FIELD_NAME) {
                enumC23381m = mo7142l;
                if (mo7142l != EnumC23381m.END_OBJECT) {
                    if (mo7142l == EnumC23381m.START_ARRAY) {
                        entry = mo6676A(abstractC23376j, abstractC23632g);
                        return entry;
                    }
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                }
            }
        }
        EnumC23381m enumC23381m2 = EnumC23381m.FIELD_NAME;
        if (enumC23381m != enumC23381m2) {
            if (enumC23381m == EnumC23381m.END_OBJECT) {
                abstractC23632g.m6479a0(this, "Cannot deserialize a Map.Entry out of empty JSON Object", new Object[0]);
                throw null;
            }
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        }
        AbstractC23940o abstractC23940o = this.f65430h;
        AbstractC23700j<Object> abstractC23700j = this.f65431i;
        AbstractC23709e abstractC23709e = this.f65432j;
        String mo5809k = abstractC23376j.mo5809k();
        Object mo5684a = abstractC23940o.mo5684a(mo5809k, abstractC23632g);
        try {
            Object mo6233c = abstractC23376j.mo5811i2() == EnumC23381m.VALUE_NULL ? abstractC23700j.mo6233c(abstractC23632g) : abstractC23709e == null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            if (mo5811i2 == EnumC23381m.END_OBJECT) {
                entry = new AbstractMap.SimpleEntry(mo5684a, mo6233c);
                return entry;
            } else if (mo5811i2 == enumC23381m2) {
                abstractC23632g.m6479a0(this, "Problem binding JSON into Map.Entry: more than one entry in JSON (second field: '%s')", abstractC23376j.mo5809k());
                throw null;
            } else {
                abstractC23632g.m6479a0(this, "Problem binding JSON into Map.Entry: unexpected content after JSON Object entry: " + mo5811i2, new Object[0]);
                throw null;
            }
        } catch (Exception e) {
            m6583n0(abstractC23632g, e, Map.Entry.class, mo5809k);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Map.Entry entry = (Map.Entry) obj;
        throw new IllegalStateException("Cannot update Map.Entry values");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6206d(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i
    /* renamed from: m0 */
    public AbstractC23700j<Object> mo6541m0() {
        return this.f65431i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Map;
    }
}
