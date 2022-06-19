package p193e.p1545k.p1546a.p1556c.p1570l0;

import java.io.IOException;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23778b;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23786j;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23803t;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/d.class */
public class C23761d extends AbstractC23811d {
    public C23761d(AbstractC23698i abstractC23698i, C23762e c23762e, C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        super(abstractC23698i, c23762e, c23760cArr, c23760cArr2);
    }

    public C23761d(AbstractC23811d abstractC23811d, C23786j c23786j, Object obj) {
        super(abstractC23811d, c23786j, obj);
    }

    public C23761d(AbstractC23811d abstractC23811d, Set<String> set, Set<String> set2) {
        super(abstractC23811d, set, set2);
    }

    public C23761d(AbstractC23811d abstractC23811d, C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        super(abstractC23811d, c23760cArr, c23760cArr2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public final void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        if (this.f65947i != null) {
            abstractC23372g.mo7191J(obj);
            m6045q(obj, abstractC23372g, abstractC23425a0, true);
            return;
        }
        abstractC23372g.mo5874O1(obj);
        Object obj2 = this.f65945g;
        if (obj2 == null) {
            m6041u(obj, abstractC23372g, abstractC23425a0);
            abstractC23372g.mo5840t0();
            return;
        }
        if (this.f65943e != null) {
            Class<?> cls = abstractC23425a0.f64992b;
        }
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
        return (this.f65947i == null && this.f65944f == null && this.f65945g == null) ? new C23778b(this) : this;
    }

    public String toString() {
        return C22128a.m8647Z1(this.f65984a, C22128a.m8728C("BeanSerializer for "));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: v */
    public AbstractC23811d mo6040v(Set<String> set, Set<String> set2) {
        return new C23761d(this, set, set2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: w */
    public AbstractC23811d mo6039w(Object obj) {
        return new C23761d(this, this.f65947i, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: x */
    public AbstractC23811d mo6038x(C23786j c23786j) {
        return new C23761d(this, c23786j, this.f65945g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: y */
    public AbstractC23811d mo6037y(C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        return new C23761d(this, c23760cArr, c23760cArr2);
    }
}
