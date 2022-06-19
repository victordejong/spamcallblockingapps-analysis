package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
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
/* renamed from: e.k.a.c.l0.s.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/o.class */
public class C23798o extends AbstractC23821h0<Collection<String>> {

    /* renamed from: d */
    public static final C23798o f65920d = new C23798o();

    public C23798o() {
        super(Collection.class);
    }

    public C23798o(C23798o c23798o, Boolean bool) {
        super(c23798o, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Collection<String> collection = (Collection) obj;
        int size = collection.size();
        if (size == 1 && ((this.f65966c == null && abstractC23425a0.m6889M(EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f65966c == Boolean.TRUE)) {
            m6056q(collection, abstractC23372g, abstractC23425a0);
            return;
        }
        abstractC23372g.mo5876L1(collection, size);
        m6056q(collection, abstractC23372g, abstractC23425a0);
        abstractC23372g.mo5848p0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Collection<String> collection = (Collection) obj;
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(collection, EnumC23381m.START_ARRAY));
        abstractC23372g.mo7191J(collection);
        m6056q(collection, abstractC23372g, abstractC23425a0);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23821h0
    /* renamed from: p */
    public AbstractC23890n<?> mo6032p(AbstractC23462d abstractC23462d, Boolean bool) {
        return new C23798o(this, bool);
    }

    /* renamed from: q */
    public final void m6056q(Collection<String> collection, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        int i = 0;
        int i2 = 0;
        try {
            Iterator<String> it = collection.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    return;
                }
                int i3 = i2;
                String next = it.next();
                if (next == null) {
                    abstractC23425a0.m6880t(abstractC23372g);
                } else {
                    abstractC23372g.mo5868T1(next);
                }
                i2++;
            }
        } catch (Exception e) {
            m6012n(abstractC23425a0, e, collection, i);
            throw null;
        }
    }
}
