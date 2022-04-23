package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.j.l.ga */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ga.class */
public final class C8128ga extends AbstractC8088ea {

    /* renamed from: c */
    public static final Class<?> f18853c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C8128ga() {
        super();
    }

    /* renamed from: b */
    public static <E> List<E> m18495b(Object obj, long j) {
        return (List) C8190k.m18410f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8088ea
    /* renamed from: a */
    public final void mo18447a(Object obj, long j) {
        Object obj2;
        List list = (List) C8190k.m18410f(obj, j);
        if (list instanceof AbstractC8108fa) {
            obj2 = ((AbstractC8108fa) list).mo18455i0();
        } else if (!f18853c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof AbstractC8109fb) || !(list instanceof AbstractC8409v9)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                AbstractC8409v9 v9Var = (AbstractC8409v9) list;
                if (v9Var.mo18115f()) {
                    v9Var.mo18116e();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        C8190k.m18433a(obj, j, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v18 */
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8088ea
    /* renamed from: a */
    public final <E> void mo18446a(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List b = m18495b(obj2, j);
        int size = b.size();
        List b2 = m18495b(obj, j);
        if (b2.isEmpty()) {
            C8051ca caVar = b2 instanceof AbstractC8108fa ? new C8051ca(size) : (!(b2 instanceof AbstractC8109fb) || !(b2 instanceof AbstractC8409v9)) ? new ArrayList(size) : ((AbstractC8409v9) b2).mo18117b(size);
            C8190k.m18433a(obj, j, caVar);
            arrayList = caVar;
        } else if (f18853c.isAssignableFrom(b2.getClass())) {
            ArrayList arrayList2 = new ArrayList(b2.size() + size);
            arrayList2.addAll(b2);
            C8190k.m18433a(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (b2 instanceof C8171j) {
            C8051ca caVar2 = new C8051ca(b2.size() + size);
            caVar2.addAll((C8171j) b2);
            C8190k.m18433a(obj, j, caVar2);
            arrayList = caVar2;
        } else {
            arrayList = b2;
            if (b2 instanceof AbstractC8109fb) {
                arrayList = b2;
                if (b2 instanceof AbstractC8409v9) {
                    AbstractC8409v9 v9Var = (AbstractC8409v9) b2;
                    arrayList = b2;
                    if (!v9Var.mo18115f()) {
                        AbstractC8409v9<E> b3 = v9Var.mo18117b(b2.size() + size);
                        C8190k.m18433a(obj, j, b3);
                        arrayList = b3;
                    }
                }
            }
        }
        int size2 = arrayList.size();
        int size3 = b.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(b);
        }
        if (size2 > 0) {
            b = arrayList;
        }
        C8190k.m18433a(obj, j, b);
    }
}
