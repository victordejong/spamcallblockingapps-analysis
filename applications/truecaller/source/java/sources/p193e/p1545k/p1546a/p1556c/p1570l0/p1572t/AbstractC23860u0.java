package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.l0.t.u0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/u0.class */
public abstract class AbstractC23860u0 extends AbstractC23851q0<Object> {
    public AbstractC23860u0(Class<?> cls) {
        super(cls, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return mo5994p(obj).isEmpty();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5868T1(mo5994p(obj));
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(obj, EnumC23381m.VALUE_STRING));
        mo5894f(obj, abstractC23372g, abstractC23425a0);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    /* renamed from: p */
    public abstract String mo5994p(Object obj);
}
