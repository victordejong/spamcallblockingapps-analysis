package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.y1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/y1.class */
public final class C7729y1 extends AbstractC7708v1 {
    public C7729y1() {
        super();
    }

    /* renamed from: b */
    public static <E> AbstractC7626k1<E> m19667b(Object obj, long j) {
        return (AbstractC7626k1) C7543a4.m20335f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7708v1
    /* renamed from: a */
    public final void mo19669a(Object obj, long j) {
        m19667b(obj, j).mo19803k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7708v1
    /* renamed from: a */
    public final <E> void mo19668a(Object obj, Object obj2, long j) {
        AbstractC7626k1 b = m19667b(obj, j);
        AbstractC7626k1 b2 = m19667b(obj2, j);
        int size = b.size();
        int size2 = b2.size();
        AbstractC7626k1 k1Var = b;
        if (size > 0) {
            k1Var = b;
            if (size2 > 0) {
                AbstractC7626k1<E> k1Var2 = b;
                if (!b.mo19804j()) {
                    k1Var2 = b.mo19631c(size2 + size);
                }
                k1Var2.addAll(b2);
                k1Var = k1Var2;
            }
        }
        k1Var = b2;
        if (size > 0) {
        }
        C7543a4.m20361a(obj, j, k1Var);
    }
}
