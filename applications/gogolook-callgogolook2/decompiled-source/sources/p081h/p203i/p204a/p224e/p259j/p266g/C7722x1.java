package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.j.g.x1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/x1.class */
public final class C7722x1 extends AbstractC7708v1 {

    /* renamed from: c */
    public static final Class<?> f18077c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C7722x1() {
        super();
    }

    /* renamed from: b */
    public static <E> List<E> m19687b(Object obj, long j) {
        return (List) C7543a4.m20335f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7708v1
    /* renamed from: a */
    public final void mo19669a(Object obj, long j) {
        Object obj2;
        List list = (List) C7543a4.m20335f(obj, j);
        if (list instanceof AbstractC7701u1) {
            obj2 = ((AbstractC7701u1) list).mo19682m();
        } else if (!f18077c.isAssignableFrom(list.getClass())) {
            obj2 = Collections.unmodifiableList(list);
        } else {
            return;
        }
        C7543a4.m20361a(obj, j, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7708v1
    /* renamed from: a */
    public final <E> void mo19668a(Object obj, Object obj2, long j) {
        List list;
        C7694t1 t1Var;
        List b = m19687b(obj2, j);
        int size = b.size();
        List b2 = m19687b(obj, j);
        if (b2.isEmpty()) {
            List t1Var2 = b2 instanceof AbstractC7701u1 ? new C7694t1(size) : new ArrayList(size);
            C7543a4.m20361a(obj, j, t1Var2);
            list = t1Var2;
        } else {
            if (f18077c.isAssignableFrom(b2.getClass())) {
                ArrayList arrayList = new ArrayList(b2.size() + size);
                arrayList.addAll(b2);
                t1Var = arrayList;
            } else {
                list = b2;
                if (b2 instanceof C7724x3) {
                    C7694t1 t1Var3 = new C7694t1(b2.size() + size);
                    t1Var3.addAll((C7724x3) b2);
                    t1Var = t1Var3;
                }
            }
            C7543a4.m20361a(obj, j, t1Var);
            list = t1Var;
        }
        int size2 = list.size();
        int size3 = b.size();
        if (size2 > 0 && size3 > 0) {
            list.addAll(b);
        }
        if (size2 > 0) {
            b = list;
        }
        C7543a4.m20361a(obj, j, b);
    }
}
