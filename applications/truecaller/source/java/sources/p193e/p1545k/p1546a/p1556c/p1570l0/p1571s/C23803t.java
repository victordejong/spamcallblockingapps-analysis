package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.io.Serializable;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23760c;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.s.t */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/t.class */
public class C23803t extends AbstractC23811d implements Serializable {

    /* renamed from: l */
    public final AbstractC23929s f65926l;

    public C23803t(C23803t c23803t, C23786j c23786j) {
        super(c23803t, c23786j, c23803t.f65945g);
        this.f65926l = c23803t.f65926l;
    }

    public C23803t(C23803t c23803t, C23786j c23786j, Object obj) {
        super(c23803t, c23786j, obj);
        this.f65926l = c23803t.f65926l;
    }

    public C23803t(C23803t c23803t, Set<String> set, Set<String> set2) {
        super(c23803t, set, set2);
        this.f65926l = c23803t.f65926l;
    }

    public C23803t(C23803t c23803t, C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        super(c23803t, c23760cArr, c23760cArr2);
        this.f65926l = c23803t.f65926l;
    }

    public C23803t(AbstractC23811d abstractC23811d, AbstractC23929s abstractC23929s) {
        super(abstractC23811d, AbstractC23811d.m6042t(abstractC23811d.f65942d, abstractC23929s), AbstractC23811d.m6042t(abstractC23811d.f65943e, abstractC23929s));
        this.f65926l = abstractC23929s;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: e */
    public boolean mo5895e() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public final void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo7191J(obj);
        if (this.f65947i != null) {
            m6045q(obj, abstractC23372g, abstractC23425a0, false);
            return;
        }
        Object obj2 = this.f65945g;
        if (obj2 == null) {
            m6041u(obj, abstractC23372g, abstractC23425a0);
            return;
        }
        if (this.f65943e != null) {
            Class<?> cls = abstractC23425a0.f64992b;
        }
        m6013m(abstractC23425a0, obj2, obj);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        if (abstractC23425a0.m6889M(EnumC23958z.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS)) {
            abstractC23425a0.m6521n(this.f65984a, "Unwrapped property requires use of type information: cannot serialize without disabling `SerializationFeature.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS`");
        }
        abstractC23372g.mo7191J(obj);
        if (this.f65947i != null) {
            m6046p(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
            return;
        }
        Object obj2 = this.f65945g;
        if (obj2 == null) {
            m6041u(obj, abstractC23372g, abstractC23425a0);
            return;
        }
        C23760c[] c23760cArr = this.f65943e;
        m6013m(abstractC23425a0, obj2, obj);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: h */
    public AbstractC23890n<Object> mo5892h(AbstractC23929s abstractC23929s) {
        return new C23803t(this, abstractC23929s);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: s */
    public AbstractC23811d mo6043s() {
        return this;
    }

    public String toString() {
        return C22128a.m8647Z1(this.f65984a, C22128a.m8728C("UnwrappingBeanSerializer for "));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: v */
    public AbstractC23811d mo6040v(Set<String> set, Set<String> set2) {
        return new C23803t(this, set, set2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: w */
    public AbstractC23811d mo6039w(Object obj) {
        return new C23803t(this, this.f65947i, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: x */
    public AbstractC23811d mo6038x(C23786j c23786j) {
        return new C23803t(this, c23786j);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: y */
    public AbstractC23811d mo6037y(C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        return new C23803t(this, c23760cArr, c23760cArr2);
    }
}
