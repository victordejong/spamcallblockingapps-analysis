package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.math.BigDecimal;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23861v;
/* renamed from: e.k.a.c.l0.t.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/w.class */
public abstract class AbstractC23864w<T> extends AbstractC23849p0<T> implements AbstractC23766i {
    public AbstractC23864w(Class<?> cls, AbstractC23376j.EnumC23378b enumC23378b, String str) {
        super(cls, false);
        if (enumC23378b != AbstractC23376j.EnumC23378b.INT) {
            AbstractC23376j.EnumC23378b enumC23378b2 = AbstractC23376j.EnumC23378b.LONG;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23311k.C23315d m6014l = m6014l(abstractC23425a0, abstractC23462d, this.f65984a);
        if (m6014l == null || m6014l.f64499b.ordinal() != 8) {
            return this;
        }
        if (this.f65984a != BigDecimal.class) {
            return C23858t0.f66011c;
        }
        C23861v c23861v = C23861v.f66013c;
        return C23861v.C23862a.f66014c;
    }
}
