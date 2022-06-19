package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/r.class */
public class C23852r extends AbstractC23807b<Iterable<?>> {
    public C23852r(AbstractC23698i abstractC23698i, boolean z, AbstractC23712h abstractC23712h) {
        super(Iterable.class, abstractC23698i, z, abstractC23712h, (AbstractC23890n<Object>) null);
    }

    public C23852r(C23852r c23852r, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, Boolean bool) {
        super(c23852r, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return !((Iterable) obj).iterator().hasNext();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5894f(java.lang.Object r6, p193e.p1545k.p1546a.p1548b.AbstractC23372g r7, p193e.p1545k.p1546a.p1556c.AbstractC23425a0 r8) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r6
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r9 = r0
            r0 = r5
            java.lang.Boolean r0 = r0.f65935f
            if (r0 != 0) goto L17
            r0 = r8
            e.k.a.c.z r1 = p193e.p1545k.p1546a.p1556c.EnumC23958z.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            boolean r0 = r0.m6889M(r1)
            if (r0 != 0) goto L21
        L17:
            r0 = r5
            java.lang.Boolean r0 = r0.f65935f
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            if (r0 != r1) goto L60
        L21:
            r0 = r9
            if (r0 == 0) goto L4d
            r0 = r9
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L4d
            r0 = r6
            java.lang.Object r0 = r0.next()
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L4d
            r0 = 1
            r10 = r0
            goto L50
        L4d:
            r0 = 0
            r10 = r0
        L50:
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r5
            r1 = r9
            r2 = r7
            r3 = r8
            r0.mo6010r(r1, r2, r3)
            goto L72
        L60:
            r0 = r7
            r1 = r9
            r0.mo5881I1(r1)
            r0 = r5
            r1 = r9
            r2 = r7
            r3 = r8
            r0.mo6010r(r1, r2, r3)
            r0 = r7
            r0.mo5848p0()
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23852r.mo5894f(java.lang.Object, e.k.a.b.g, e.k.a.c.a0):void");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23765h
    /* renamed from: p */
    public AbstractC23765h<?> mo6000p(AbstractC23712h abstractC23712h) {
        return new C23852r(this, this.f65933d, abstractC23712h, this.f65937h, this.f65935f);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23807b
    /* renamed from: s */
    public AbstractC23807b<Iterable<?>> mo6009s(AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n abstractC23890n, Boolean bool) {
        return new C23852r(this, abstractC23462d, abstractC23712h, abstractC23890n, bool);
    }

    /* renamed from: t */
    public void mo6010r(Iterable<?> iterable, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Iterator<?> it = iterable.iterator();
        if (it.hasNext()) {
            AbstractC23712h abstractC23712h = this.f65936g;
            Class<?> cls = null;
            AbstractC23890n<Object> abstractC23890n = null;
            do {
                Object next = it.next();
                if (next == null) {
                    abstractC23425a0.m6880t(abstractC23372g);
                } else {
                    AbstractC23890n<Object> abstractC23890n2 = this.f65937h;
                    if (abstractC23890n2 == null) {
                        Class<?> cls2 = next.getClass();
                        if (cls2 != cls) {
                            abstractC23890n = abstractC23425a0.m6896D(cls2, this.f65933d);
                            cls = cls2;
                        }
                        abstractC23890n2 = abstractC23890n;
                        abstractC23890n = abstractC23890n;
                    }
                    if (abstractC23712h == null) {
                        abstractC23890n2.mo5894f(next, abstractC23372g, abstractC23425a0);
                    } else {
                        abstractC23890n2.mo5893g(next, abstractC23372g, abstractC23425a0, abstractC23712h);
                    }
                }
            } while (it.hasNext());
        }
    }
}
