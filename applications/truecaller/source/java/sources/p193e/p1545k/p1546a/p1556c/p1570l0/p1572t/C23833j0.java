package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23772n;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.l0.t.j0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/j0.class */
public class C23833j0 extends AbstractC23851q0<Object> implements AbstractC23766i, AbstractC23772n {

    /* renamed from: c */
    public final AbstractC23918i<Object, ?> f65968c;

    /* renamed from: d */
    public final AbstractC23698i f65969d;

    /* renamed from: e */
    public final AbstractC23890n<Object> f65970e;

    public C23833j0(AbstractC23918i<Object, ?> abstractC23918i, AbstractC23698i abstractC23698i, AbstractC23890n<?> abstractC23890n) {
        super(abstractC23698i);
        this.f65968c = abstractC23918i;
        this.f65969d = abstractC23698i;
        this.f65970e = abstractC23890n;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23772n
    /* renamed from: a */
    public void mo6025a(AbstractC23425a0 abstractC23425a0) throws C23733k {
        AbstractC23890n<Object> abstractC23890n = this.f65970e;
        if (abstractC23890n == null || !(abstractC23890n instanceof AbstractC23772n)) {
            return;
        }
        ((AbstractC23772n) abstractC23890n).mo6025a(abstractC23425a0);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<?> abstractC23890n = this.f65970e;
        AbstractC23698i abstractC23698i = this.f65969d;
        AbstractC23890n<?> abstractC23890n2 = abstractC23890n;
        AbstractC23698i abstractC23698i2 = abstractC23698i;
        if (abstractC23890n == null) {
            AbstractC23698i abstractC23698i3 = abstractC23698i;
            if (abstractC23698i == null) {
                abstractC23698i3 = this.f65968c.mo5736b(abstractC23425a0.mo6470i());
            }
            abstractC23890n2 = abstractC23890n;
            abstractC23698i2 = abstractC23698i3;
            if (!abstractC23698i3.m6240E()) {
                abstractC23890n2 = abstractC23425a0.m6898B(abstractC23698i3);
                abstractC23698i2 = abstractC23698i3;
            }
        }
        AbstractC23890n<?> abstractC23890n3 = abstractC23890n2;
        if (abstractC23890n2 instanceof AbstractC23766i) {
            abstractC23890n3 = abstractC23425a0.m6891I(abstractC23890n2, abstractC23462d);
        }
        if (abstractC23890n3 == this.f65970e && abstractC23698i2 == this.f65969d) {
            return this;
        }
        AbstractC23918i<Object, ?> abstractC23918i = this.f65968c;
        C23914g.m5768M(C23833j0.class, this, "withDelegate");
        return new C23833j0(abstractC23918i, abstractC23698i2, abstractC23890n3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        Object convert = this.f65968c.convert(obj);
        boolean z = true;
        if (convert == null) {
            return true;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65970e;
        if (abstractC23890n != null) {
            return abstractC23890n.mo5896d(abstractC23425a0, convert);
        }
        if (obj != null) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Object convert = this.f65968c.convert(obj);
        if (convert == null) {
            abstractC23425a0.m6880t(abstractC23372g);
            return;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65970e;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            abstractC23890n2 = m6024p(convert, abstractC23425a0);
        }
        abstractC23890n2.mo5894f(convert, abstractC23372g, abstractC23425a0);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Object convert = this.f65968c.convert(obj);
        AbstractC23890n<Object> abstractC23890n = this.f65970e;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            abstractC23890n2 = m6024p(obj, abstractC23425a0);
        }
        abstractC23890n2.mo5893g(convert, abstractC23372g, abstractC23425a0, abstractC23712h);
    }

    /* renamed from: p */
    public AbstractC23890n<Object> m6024p(Object obj, AbstractC23425a0 abstractC23425a0) throws C23733k {
        Class<?> cls = obj.getClass();
        AbstractC23890n<Object> m6058b = abstractC23425a0.f65000j.m6058b(cls);
        AbstractC23890n<Object> abstractC23890n = m6058b;
        if (m6058b == null) {
            AbstractC23890n<Object> m6088b = abstractC23425a0.f64994d.m6088b(cls);
            abstractC23890n = m6088b;
            if (m6088b == null) {
                AbstractC23890n<Object> m6089a = abstractC23425a0.f64994d.m6089a(abstractC23425a0.f64991a.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e));
                abstractC23890n = m6089a;
                if (m6089a == null) {
                    AbstractC23890n<Object> m6884p = abstractC23425a0.m6884p(cls);
                    abstractC23890n = m6884p;
                    if (m6884p == null) {
                        abstractC23890n = abstractC23425a0.m6893G(cls);
                    }
                }
            }
        }
        return abstractC23890n;
    }
}
