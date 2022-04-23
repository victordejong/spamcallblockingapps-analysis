package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.j.q.w4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/w4.class */
public final class C8765w4 extends AbstractC8747u4 {

    /* renamed from: c */
    public static final Class<?> f20090c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C8765w4() {
        super();
    }

    /* renamed from: a */
    public static <L> List<L> m17080a(Object obj, long j, int i) {
        C8729s4 s4Var;
        List<L> c = m17079c(obj, j);
        if (c.isEmpty()) {
            s4Var = c instanceof AbstractC8738t4 ? new C8729s4(i) : (!(c instanceof AbstractC8748u5) || !(c instanceof AbstractC8638i4)) ? new ArrayList(i) : ((AbstractC8638i4) c).mo16949f(i);
            C8776x6.m17052a(obj, j, s4Var);
        } else if (f20090c.isAssignableFrom(c.getClass())) {
            ArrayList arrayList = new ArrayList(c.size() + i);
            arrayList.addAll(c);
            C8776x6.m17052a(obj, j, arrayList);
            s4Var = arrayList;
        } else if (c instanceof C8749u6) {
            C8729s4 s4Var2 = new C8729s4(c.size() + i);
            s4Var2.addAll((C8749u6) c);
            C8776x6.m17052a(obj, j, s4Var2);
            s4Var = s4Var2;
        } else {
            s4Var = c;
            if (c instanceof AbstractC8748u5) {
                s4Var = c;
                if (c instanceof AbstractC8638i4) {
                    AbstractC8638i4 i4Var = (AbstractC8638i4) c;
                    s4Var = c;
                    if (!i4Var.mo17284i()) {
                        s4Var = i4Var.mo16949f(c.size() + i);
                        C8776x6.m17052a(obj, j, s4Var);
                    }
                }
            }
        }
        return s4Var;
    }

    /* renamed from: c */
    public static <E> List<E> m17079c(Object obj, long j) {
        return (List) C8776x6.m17028f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8747u4
    /* renamed from: a */
    public final <L> List<L> mo17071a(Object obj, long j) {
        return m17080a(obj, j, 10);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8747u4
    /* renamed from: a */
    public final <E> void mo17070a(Object obj, Object obj2, long j) {
        List c = m17079c(obj2, j);
        List a = m17080a(obj, j, c.size());
        int size = a.size();
        int size2 = c.size();
        if (size > 0 && size2 > 0) {
            a.addAll(c);
        }
        if (size > 0) {
            c = a;
        }
        C8776x6.m17052a(obj, j, c);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8747u4
    /* renamed from: b */
    public final void mo17069b(Object obj, long j) {
        Object obj2;
        List list = (List) C8776x6.m17028f(obj, j);
        if (list instanceof AbstractC8738t4) {
            obj2 = ((AbstractC8738t4) list).mo17114p();
        } else if (!f20090c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof AbstractC8748u5) || !(list instanceof AbstractC8638i4)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                AbstractC8638i4 i4Var = (AbstractC8638i4) list;
                if (i4Var.mo17284i()) {
                    i4Var.mo17285g();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        C8776x6.m17052a(obj, j, obj2);
    }
}
