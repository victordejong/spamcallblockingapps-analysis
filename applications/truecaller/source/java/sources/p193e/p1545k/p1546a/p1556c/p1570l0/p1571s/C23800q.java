package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23851q0;
/* renamed from: e.k.a.c.l0.s.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/q.class */
public class C23800q extends AbstractC23851q0<Object> {
    public C23800q() {
        super(Object.class);
    }

    public C23800q(Class<?> cls) {
        super(cls, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        if (abstractC23425a0.m6889M(EnumC23958z.FAIL_ON_EMPTY_BEANS)) {
            m6055p(abstractC23425a0, obj);
        }
        abstractC23372g.mo5871R1(obj, 0);
        abstractC23372g.mo5840t0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public final void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        if (abstractC23425a0.m6889M(EnumC23958z.FAIL_ON_EMPTY_BEANS)) {
            m6055p(abstractC23425a0, obj);
        }
        abstractC23712h.mo6001f(abstractC23372g, abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(obj, EnumC23381m.START_OBJECT)));
    }

    /* renamed from: p */
    public void m6055p(AbstractC23425a0 abstractC23425a0, Object obj) throws C23733k {
        abstractC23425a0.m6521n(this.f65984a, String.format("No serializer found for class %s and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)", obj.getClass().getName()));
    }
}
