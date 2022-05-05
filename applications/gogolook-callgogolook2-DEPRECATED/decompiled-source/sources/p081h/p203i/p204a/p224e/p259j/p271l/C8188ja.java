package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.ja */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ja.class */
public final class C8188ja extends AbstractC8088ea {
    public C8188ja() {
        super();
    }

    /* renamed from: b */
    public static <E> AbstractC8409v9<E> m18445b(Object obj, long j) {
        return (AbstractC8409v9) C8190k.m18410f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8088ea
    /* renamed from: a */
    public final void mo18447a(Object obj, long j) {
        m18445b(obj, j).mo18116e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8088ea
    /* renamed from: a */
    public final <E> void mo18446a(Object obj, Object obj2, long j) {
        AbstractC8409v9 b = m18445b(obj, j);
        AbstractC8409v9 b2 = m18445b(obj2, j);
        int size = b.size();
        int size2 = b2.size();
        AbstractC8409v9 v9Var = b;
        if (size > 0) {
            v9Var = b;
            if (size2 > 0) {
                AbstractC8409v9<E> v9Var2 = b;
                if (!b.mo18115f()) {
                    v9Var2 = b.mo18117b(size2 + size);
                }
                v9Var2.addAll(b2);
                v9Var = v9Var2;
            }
        }
        v9Var = b2;
        if (size > 0) {
        }
        C8190k.m18433a(obj, j, v9Var);
    }
}
