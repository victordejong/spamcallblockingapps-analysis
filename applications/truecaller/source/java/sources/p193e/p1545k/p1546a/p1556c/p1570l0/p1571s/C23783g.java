package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.util.List;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23821h0;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.s.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/g.class */
public final class C23783g extends AbstractC23821h0<List<String>> {

    /* renamed from: d */
    public static final C23783g f65880d = new C23783g();

    public C23783g() {
        super(List.class);
    }

    public C23783g(C23783g c23783g, Boolean bool) {
        super(c23783g, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        List<String> list = (List) obj;
        int size = list.size();
        if (size == 1 && ((this.f65966c == null && abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f65966c == Boolean.TRUE)) {
            m6071q(list, abstractC23372g, abstractC23425a0, 1);
            return;
        }
        abstractC23372g.mo5876L1(list, size);
        m6071q(list, abstractC23372g, abstractC23425a0, size);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        List<String> list = (List) obj;
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(list, EnumC23381m.START_ARRAY));
        abstractC23372g.mo7191J(list);
        m6071q(list, abstractC23372g, abstractC23425a0, list.size());
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23821h0
    /* renamed from: p */
    public AbstractC23890n<?> mo6032p(AbstractC23462d abstractC23462d, Boolean bool) {
        return new C23783g(this, bool);
    }

    /* renamed from: q */
    public final void m6071q(List<String> list, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                String str = list.get(i2);
                if (str == null) {
                    abstractC23425a0.m6880t(abstractC23372g);
                } else {
                    abstractC23372g.mo5868T1(str);
                }
            } catch (Exception e) {
                m6012n(abstractC23425a0, e, list, i2);
                throw null;
            }
        }
    }
}
