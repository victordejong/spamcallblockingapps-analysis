package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
/* renamed from: e.k.a.c.l0.t.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/n.class */
public class C23840n extends AbstractC23807b<EnumSet<? extends Enum<?>>> {
    public C23840n(AbstractC23698i abstractC23698i) {
        super((Class<?>) EnumSet.class, abstractC23698i, true, (AbstractC23712h) null, (AbstractC23890n<Object>) null);
    }

    public C23840n(C23840n c23840n, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, Boolean bool) {
        super(c23840n, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return ((EnumSet) obj).isEmpty();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        EnumSet<? extends Enum<?>> enumSet = (EnumSet) obj;
        int size = enumSet.size();
        if (size == 1 && ((this.f65935f == null && abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f65935f == Boolean.TRUE)) {
            mo6010r(enumSet, abstractC23372g, abstractC23425a0);
            return;
        }
        abstractC23372g.mo5876L1(enumSet, size);
        mo6010r(enumSet, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h mo6000p(AbstractC23712h abstractC23712h) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b
    /* renamed from: s */
    public AbstractC23807b<EnumSet<? extends Enum<?>>> mo6009s(AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n abstractC23890n, Boolean bool) {
        return new C23840n(this, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    /* renamed from: t */
    public void mo6010r(EnumSet<? extends Enum<?>> enumSet, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        AbstractC23890n<Object> abstractC23890n = this.f65937h;
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            Enum r0 = (Enum) it.next();
            AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
            if (abstractC23890n == null) {
                abstractC23890n2 = abstractC23425a0.m6878v(r0.getDeclaringClass(), this.f65933d);
            }
            abstractC23890n2.mo5894f(r0, abstractC23372g, abstractC23425a0);
            abstractC23890n = abstractC23890n2;
        }
    }
}
