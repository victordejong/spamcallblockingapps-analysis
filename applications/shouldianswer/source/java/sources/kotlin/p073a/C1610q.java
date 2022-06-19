package kotlin.p073a;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.a.q */
/* loaded from: classes-dex2jar.jar:kotlin/a/q.class */
public class C1610q extends C1609p {
    /* renamed from: a */
    public static final <T> T m3197a(Iterable<? extends T> iterable) {
        C1694h.m3117b(iterable, "$this$first");
        if (iterable instanceof List) {
            return (T) C1600g.m3191c((List<? extends Object>) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        return it.next();
    }

    /* renamed from: a */
    public static final <T, C extends Collection<? super T>> C m3196a(Iterable<? extends T> iterable, C c) {
        C1694h.m3117b(iterable, "$this$toCollection");
        C1694h.m3117b(c, FirebaseAnalytics.Param.DESTINATION);
        for (T t : iterable) {
            c.add(t);
        }
        return c;
    }

    /* renamed from: a */
    public static final <T> List<T> m3195a(Collection<? extends T> collection) {
        C1694h.m3117b(collection, "$this$toMutableList");
        return new ArrayList(collection);
    }

    /* renamed from: b */
    public static final <T> T m3194b(Iterable<? extends T> iterable) {
        C1694h.m3117b(iterable, "$this$single");
        if (iterable instanceof List) {
            return (T) C1600g.m3187f((List) iterable);
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

    /* renamed from: b */
    public static final <T> List<T> m3193b(Iterable<? extends T> iterable, int i) {
        C1694h.m3117b(iterable, "$this$take");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        } else if (i == 0) {
            return C1600g.m3202a();
        } else {
            if (iterable instanceof Collection) {
                if (i >= ((Collection) iterable).size()) {
                    return C1600g.m3192c(iterable);
                }
                if (i == 1) {
                    return C1600g.m3203a(C1600g.m3197a((Iterable<? extends Object>) iterable));
                }
            }
            ArrayList arrayList = new ArrayList(i);
            int i2 = 0;
            for (T t : iterable) {
                if (i2 == i) {
                    break;
                }
                arrayList.add(t);
                i2++;
            }
            return C1600g.m3200b((List) arrayList);
        }
    }

    /* renamed from: c */
    public static final <T> T m3191c(List<? extends T> list) {
        C1694h.m3117b(list, "$this$first");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    /* renamed from: c */
    public static final <T> List<T> m3192c(Iterable<? extends T> iterable) {
        List<T> list;
        C1694h.m3117b(iterable, "$this$toList");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                list = C1600g.m3202a();
            } else if (size != 1) {
                list = C1600g.m3195a(collection);
            } else {
                list = C1600g.m3203a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            }
            return list;
        }
        return C1600g.m3200b(C1600g.m3190d(iterable));
    }

    /* renamed from: d */
    public static final <T> T m3189d(List<? extends T> list) {
        C1694h.m3117b(list, "$this$firstOrNull");
        return list.isEmpty() ? null : list.get(0);
    }

    /* renamed from: d */
    public static final <T> List<T> m3190d(Iterable<? extends T> iterable) {
        C1694h.m3117b(iterable, "$this$toMutableList");
        return iterable instanceof Collection ? C1600g.m3195a((Collection) iterable) : (List) C1600g.m3196a(iterable, new ArrayList());
    }

    /* renamed from: e */
    public static final <T> T m3188e(List<? extends T> list) {
        C1694h.m3117b(list, "$this$lastOrNull");
        return list.isEmpty() ? null : list.get(list.size() - 1);
    }

    /* renamed from: f */
    public static final <T> T m3187f(List<? extends T> list) {
        C1694h.m3117b(list, "$this$single");
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
