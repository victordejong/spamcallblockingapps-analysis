package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.List;
/* renamed from: h.i.a.e.j.j.h2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h2.class */
public final class C7819h2 extends AbstractC7793e2 {
    public C7819h2() {
        super();
    }

    /* renamed from: c */
    public static <E> AbstractC7912s1<E> m19360c(Object obj, long j) {
        return (AbstractC7912s1) C7838j4.m19301f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7793e2
    /* renamed from: a */
    public final <L> List<L> mo19363a(Object obj, long j) {
        AbstractC7912s1 c = m19360c(obj, j);
        AbstractC7912s1 s1Var = c;
        if (!c.mo18743h()) {
            int size = c.size();
            s1Var = c.mo18849c(size == 0 ? 10 : size << 1);
            C7838j4.m19325a(obj, j, s1Var);
        }
        return s1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7793e2
    /* renamed from: a */
    public final <E> void mo19362a(Object obj, Object obj2, long j) {
        AbstractC7912s1 c = m19360c(obj, j);
        AbstractC7912s1 c2 = m19360c(obj2, j);
        int size = c.size();
        int size2 = c2.size();
        AbstractC7912s1 s1Var = c;
        if (size > 0) {
            s1Var = c;
            if (size2 > 0) {
                AbstractC7912s1<E> s1Var2 = c;
                if (!c.mo18743h()) {
                    s1Var2 = c.mo18849c(size2 + size);
                }
                s1Var2.addAll(c2);
                s1Var = s1Var2;
            }
        }
        s1Var = c2;
        if (size > 0) {
        }
        C7838j4.m19325a(obj, j, s1Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7793e2
    /* renamed from: b */
    public final void mo19361b(Object obj, long j) {
        m19360c(obj, j).mo18745a();
    }
}
