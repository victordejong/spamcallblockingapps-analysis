package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.j.j.g2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/g2.class */
public final class C7810g2 extends AbstractC7793e2 {

    /* renamed from: c */
    public static final Class<?> f18262c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C7810g2() {
        super();
    }

    /* renamed from: a */
    public static <L> List<L> m19384a(Object obj, long j, int i) {
        C7777c2 c2Var;
        List<L> c = m19383c(obj, j);
        if (c.isEmpty()) {
            c2Var = c instanceof AbstractC7785d2 ? new C7777c2(i) : (!(c instanceof AbstractC7803f3) || !(c instanceof AbstractC7912s1)) ? new ArrayList(i) : ((AbstractC7912s1) c).mo18849c(i);
            C7838j4.m19325a(obj, j, c2Var);
        } else if (f18262c.isAssignableFrom(c.getClass())) {
            ArrayList arrayList = new ArrayList(c.size() + i);
            arrayList.addAll(c);
            C7838j4.m19325a(obj, j, arrayList);
            c2Var = arrayList;
        } else if (c instanceof C7812g4) {
            C7777c2 c2Var2 = new C7777c2(c.size() + i);
            c2Var2.addAll((C7812g4) c);
            C7838j4.m19325a(obj, j, c2Var2);
            c2Var = c2Var2;
        } else {
            c2Var = c;
            if (c instanceof AbstractC7803f3) {
                c2Var = c;
                if (c instanceof AbstractC7912s1) {
                    AbstractC7912s1 s1Var = (AbstractC7912s1) c;
                    c2Var = c;
                    if (!s1Var.mo18743h()) {
                        c2Var = s1Var.mo18849c(c.size() + i);
                        C7838j4.m19325a(obj, j, c2Var);
                    }
                }
            }
        }
        return c2Var;
    }

    /* renamed from: c */
    public static <E> List<E> m19383c(Object obj, long j) {
        return (List) C7838j4.m19301f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7793e2
    /* renamed from: a */
    public final <L> List<L> mo19363a(Object obj, long j) {
        return m19384a(obj, j, 10);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7793e2
    /* renamed from: a */
    public final <E> void mo19362a(Object obj, Object obj2, long j) {
        List c = m19383c(obj2, j);
        List a = m19384a(obj, j, c.size());
        int size = a.size();
        int size2 = c.size();
        if (size > 0 && size2 > 0) {
            a.addAll(c);
        }
        if (size > 0) {
            c = a;
        }
        C7838j4.m19325a(obj, j, c);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7793e2
    /* renamed from: b */
    public final void mo19361b(Object obj, long j) {
        Object obj2;
        List list = (List) C7838j4.m19301f(obj, j);
        if (list instanceof AbstractC7785d2) {
            obj2 = ((AbstractC7785d2) list).mo19374h0();
        } else if (!f18262c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof AbstractC7803f3) || !(list instanceof AbstractC7912s1)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                AbstractC7912s1 s1Var = (AbstractC7912s1) list;
                if (s1Var.mo18743h()) {
                    s1Var.mo18745a();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        C7838j4.m19325a(obj, j, obj2);
    }
}
