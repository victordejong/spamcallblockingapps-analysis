package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
/* renamed from: e.k.a.c.l0.t.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/a.class */
public abstract class AbstractC23805a<T> extends AbstractC23765h<T> implements AbstractC23766i {

    /* renamed from: c */
    public final AbstractC23462d f65930c;

    /* renamed from: d */
    public final Boolean f65931d;

    public AbstractC23805a(AbstractC23805a<?> abstractC23805a, AbstractC23462d abstractC23462d, Boolean bool) {
        super(abstractC23805a.f65984a, false);
        this.f65930c = abstractC23462d;
        this.f65931d = bool;
    }

    public AbstractC23805a(Class<T> cls) {
        super(cls);
        this.f65930c = null;
        this.f65931d = null;
    }

    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23311k.C23315d m6014l;
        if (abstractC23462d != null && (m6014l = m6014l(abstractC23425a0, abstractC23462d, this.f65984a)) != null) {
            Boolean m7286b = m6014l.m7286b(AbstractC23311k.EnumC23312a.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
            if (!Objects.equals(m7286b, this.f65931d)) {
                return mo6029r(abstractC23462d, m7286b);
            }
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public final void mo5893g(T t, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(t, EnumC23381m.START_ARRAY));
        abstractC23372g.mo7191J(t);
        mo6028s(t, abstractC23372g, abstractC23425a0);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    /* renamed from: q */
    public final boolean m6048q(AbstractC23425a0 abstractC23425a0) {
        Boolean bool = this.f65931d;
        return bool == null ? abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) : bool.booleanValue();
    }

    /* renamed from: r */
    public abstract AbstractC23890n<?> mo6029r(AbstractC23462d abstractC23462d, Boolean bool);

    /* renamed from: s */
    public abstract void mo6028s(T t, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException;
}
