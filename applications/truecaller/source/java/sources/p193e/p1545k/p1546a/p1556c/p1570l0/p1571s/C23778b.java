package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23760c;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.s.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/b.class */
public class C23778b extends AbstractC23811d {

    /* renamed from: l */
    public final AbstractC23811d f65875l;

    public C23778b(AbstractC23811d abstractC23811d) {
        super(abstractC23811d, (C23786j) null, abstractC23811d.f65945g);
        this.f65875l = abstractC23811d;
    }

    public C23778b(AbstractC23811d abstractC23811d, C23786j c23786j, Object obj) {
        super(abstractC23811d, c23786j, obj);
        this.f65875l = abstractC23811d;
    }

    public C23778b(AbstractC23811d abstractC23811d, Set<String> set, Set<String> set2) {
        super(abstractC23811d, set, set2);
        this.f65875l = abstractC23811d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: e */
    public boolean mo5895e() {
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public final void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        if (abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) {
            C23760c[] c23760cArr = this.f65943e;
            if (c23760cArr == null || abstractC23425a0.f64992b == null) {
                c23760cArr = this.f65942d;
            }
            boolean z = true;
            if (c23760cArr.length != 1) {
                z = false;
            }
            if (z) {
                m6076z(obj, abstractC23372g, abstractC23425a0);
                return;
            }
        }
        abstractC23372g.mo5881I1(obj);
        m6076z(obj, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        if (this.f65947i != null) {
            m6046p(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
            return;
        }
        C23422b m6044r = m6044r(abstractC23712h, obj, EnumC23381m.START_ARRAY);
        abstractC23712h.mo6002e(abstractC23372g, m6044r);
        abstractC23372g.mo7191J(obj);
        m6076z(obj, abstractC23372g, abstractC23425a0);
        abstractC23712h.mo6001f(abstractC23372g, m6044r);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: h */
    public AbstractC23890n<Object> mo5892h(AbstractC23929s abstractC23929s) {
        return this.f65875l.mo5892h(abstractC23929s);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: s */
    public AbstractC23811d mo6043s() {
        return this;
    }

    public String toString() {
        return C22128a.m8647Z1(this.f65984a, C22128a.m8728C("BeanAsArraySerializer for "));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: v */
    public AbstractC23811d mo6040v(Set set, Set set2) {
        return new C23778b(this, set, set2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: w */
    public AbstractC23811d mo6039w(Object obj) {
        return new C23778b(this, this.f65947i, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: x */
    public AbstractC23811d mo6038x(C23786j c23786j) {
        return this.f65875l.mo6038x(c23786j);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23811d
    /* renamed from: y */
    public AbstractC23811d mo6037y(C23760c[] c23760cArr, C23760c[] c23760cArr2) {
        return this;
    }

    /* renamed from: z */
    public final void m6076z(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        String str = "[anySetter]";
        C23760c[] c23760cArr = this.f65943e;
        if (c23760cArr == null || abstractC23425a0.f64992b == null) {
            c23760cArr = this.f65942d;
        }
        int i = 0;
        int i2 = 0;
        try {
            int length = c23760cArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                C23760c c23760c = c23760cArr[i3];
                if (c23760c == null) {
                    i = i3;
                    i2 = i3;
                    abstractC23372g.mo5888D0();
                    continue;
                } else {
                    i = i3;
                    i2 = i3;
                    c23760c.mo6073k(obj, abstractC23372g, abstractC23425a0);
                    continue;
                }
            }
        } catch (Exception e) {
            if (i2 != c23760cArr.length) {
                str = c23760cArr[i2].f65836c.f64805a;
            }
            m6011o(abstractC23425a0, e, obj, str);
            throw null;
        } catch (StackOverflowError e2) {
            C23733k c23733k = new C23733k(abstractC23372g, "Infinite recursion (StackOverflowError)", e2);
            if (i != c23760cArr.length) {
                str = c23760cArr[i].f65836c.f64805a;
            }
            c23733k.m6161f(new C23733k.C23734a(obj, str));
            throw c23733k;
        }
    }
}
