package p000;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: ck1 */
/* loaded from: classes3-dex2jar.jar:ck1.class */
public class ck1 extends bk1 {
    /* renamed from: g */
    public static final <T> boolean m5315g(Iterable<? extends T> iterable, T t) {
        qk1.m744c(iterable, "$this$contains");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        return m5311k(iterable, t) >= 0;
    }

    /* renamed from: h */
    public static final <T> List<T> m5314h(Iterable<? extends T> iterable) {
        qk1.m744c(iterable, "$this$filterNotNull");
        ArrayList arrayList = new ArrayList();
        m5313i(iterable, arrayList);
        return arrayList;
    }

    /* renamed from: i */
    public static final <C extends Collection<? super T>, T> C m5313i(Iterable<? extends T> iterable, C c) {
        qk1.m744c(iterable, "$this$filterNotNullTo");
        qk1.m744c(c, "destination");
        for (T t : iterable) {
            if (t != null) {
                c.add(t);
            }
        }
        return c;
    }

    /* renamed from: j */
    public static final <T> T m5312j(List<? extends T> list) {
        qk1.m744c(list, "$this$firstOrNull");
        return list.isEmpty() ? null : list.get(0);
    }

    /* renamed from: k */
    public static final <T> int m5311k(Iterable<? extends T> iterable, T t) {
        qk1.m744c(iterable, "$this$indexOf");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t);
        }
        int i = 0;
        for (T t2 : iterable) {
            if (i < 0) {
                uj1.m393d();
                throw null;
            } else if (qk1.m746a(t, t2)) {
                return i;
            } else {
                i++;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public static final <T> T m5310l(Iterable<? extends T> iterable) {
        qk1.m744c(iterable, "$this$single");
        if (iterable instanceof List) {
            return (T) m5309m((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    /* renamed from: m */
    public static final <T> T m5309m(List<? extends T> list) {
        qk1.m744c(list, "$this$single");
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                throw new IllegalArgumentException("List has more than one element.");
            }
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }
}
