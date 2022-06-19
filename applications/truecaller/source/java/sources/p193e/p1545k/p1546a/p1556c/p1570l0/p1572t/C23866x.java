package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.x */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/x.class */
public class C23866x extends AbstractC23864w<Object> {
    public C23866x(Class<?> cls) {
        super(cls, AbstractC23376j.EnumC23378b.DOUBLE, "number");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5885F0(((Double) obj).doubleValue());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23849p0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Double d = (Double) obj;
        double doubleValue = d.doubleValue();
        if (!(Double.isNaN(doubleValue) || Double.isInfinite(doubleValue))) {
            abstractC23372g.mo5885F0(d.doubleValue());
            return;
        }
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(obj, EnumC23381m.VALUE_NUMBER_FLOAT));
        abstractC23372g.mo5885F0(d.doubleValue());
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }
}
