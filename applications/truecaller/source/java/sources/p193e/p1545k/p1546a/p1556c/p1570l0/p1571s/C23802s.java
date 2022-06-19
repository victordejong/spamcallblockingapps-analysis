package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.Serializable;
import java.lang.reflect.Method;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.p1552w.C23403i;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23760c;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.s.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/s.class */
public class C23802s extends C23760c implements Serializable {

    /* renamed from: u */
    public final AbstractC23929s f65925u;

    public C23802s(C23760c c23760c, AbstractC23929s abstractC23929s) {
        super(c23760c, c23760c.f65836c);
        this.f65925u = abstractC23929s;
    }

    public C23802s(C23802s c23802s, AbstractC23929s abstractC23929s, C23403i c23403i) {
        super(c23802s, c23403i);
        this.f65925u = abstractC23929s;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: b */
    public AbstractC23890n<Object> mo6054b(AbstractC23788l abstractC23788l, Class<?> cls, AbstractC23425a0 abstractC23425a0) throws C23733k {
        AbstractC23698i abstractC23698i = this.f65840g;
        AbstractC23890n<Object> m6897C = abstractC23698i != null ? abstractC23425a0.m6897C(abstractC23425a0.m6881s(abstractC23698i, cls), this) : abstractC23425a0.m6896D(cls, this);
        AbstractC23929s abstractC23929s = this.f65925u;
        AbstractC23929s.C23930a c23930a = abstractC23929s;
        if (m6897C.mo5895e()) {
            c23930a = abstractC23929s;
            if (m6897C instanceof C23803t) {
                c23930a = new AbstractC23929s.C23930a(abstractC23929s, ((C23803t) m6897C).f65926l);
            }
        }
        AbstractC23890n<Object> mo5892h = m6897C.mo5892h(c23930a);
        this.f65848o = this.f65848o.mo6061b(cls, mo5892h);
        return mo5892h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: i */
    public void mo6053i(AbstractC23890n<Object> abstractC23890n) {
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n != null) {
            AbstractC23929s abstractC23929s = this.f65925u;
            AbstractC23929s.C23930a c23930a = abstractC23929s;
            if (abstractC23890n.mo5895e()) {
                c23930a = abstractC23929s;
                if (abstractC23890n instanceof C23803t) {
                    c23930a = new AbstractC23929s.C23930a(abstractC23929s, ((C23803t) abstractC23890n).f65926l);
                }
            }
            abstractC23890n2 = abstractC23890n.mo5892h(c23930a);
        }
        super.mo6053i(abstractC23890n2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: j */
    public C23760c mo6052j(AbstractC23929s abstractC23929s) {
        return new C23802s(this, new AbstractC23929s.C23930a(abstractC23929s, this.f65925u), new C23403i(abstractC23929s.mo5728a(this.f65836c.f64805a)));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: l */
    public void mo6051l(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        Method method = this.f65843j;
        Object invoke = method == null ? this.f65844k.get(obj) : method.invoke(obj, null);
        if (invoke == null) {
            return;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65845l;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            Class<?> cls = invoke.getClass();
            AbstractC23788l abstractC23788l = this.f65848o;
            abstractC23890n2 = abstractC23788l.mo6060c(cls);
            if (abstractC23890n2 == null) {
                abstractC23890n2 = mo6054b(abstractC23788l, cls, abstractC23425a0);
            }
        }
        Object obj2 = this.f65850q;
        if (obj2 != null) {
            if (AbstractC23331r.EnumC23332a.NON_EMPTY == obj2) {
                if (abstractC23890n2.mo5896d(abstractC23425a0, invoke)) {
                    return;
                }
            } else if (obj2.equals(invoke)) {
                return;
            }
        }
        if (invoke == obj && m6106g(abstractC23372g, abstractC23425a0, abstractC23890n2)) {
            return;
        }
        if (!abstractC23890n2.mo5895e()) {
            abstractC23372g.mo5833z0(this.f65836c);
        }
        AbstractC23712h abstractC23712h = this.f65847n;
        if (abstractC23712h == null) {
            abstractC23890n2.mo5894f(invoke, abstractC23372g, abstractC23425a0);
        } else {
            abstractC23890n2.mo5893g(invoke, abstractC23372g, abstractC23425a0, abstractC23712h);
        }
    }
}
