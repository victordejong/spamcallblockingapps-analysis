package com.google.common.collect;

import com.google.common.base.C8751g;
import com.google.common.base.C8756j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.common.collect.k */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/k.class */
public final class C8813k {
    /* renamed from: a */
    public static boolean m2625a(List<?> list, Object obj) {
        if (obj == C8756j.m2789l(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return C8811j.m2627d(list.iterator(), list2.iterator());
        }
        for (int i = 0; i < size; i++) {
            if (!C8751g.m2804a(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static int m2624b(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return m2623c(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (C8751g.m2804a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    /* renamed from: c */
    private static int m2623c(List<?> list, Object obj) {
        int size = list.size();
        if (obj != null) {
            for (int i = 0; i < size; i++) {
                if (obj.equals(list.get(i))) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (list.get(i2) == null) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static int m2622d(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return m2621e(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (C8751g.m2804a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    /* renamed from: e */
    private static int m2621e(List<?> list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    /* renamed from: f */
    public static <E> ArrayList<E> m2620f() {
        return new ArrayList<>();
    }

    /* renamed from: g */
    public static <E> ArrayList<E> m2619g(Iterator<? extends E> it) {
        ArrayList<E> m2620f = m2620f();
        C8811j.m2630a(m2620f, it);
        return m2620f;
    }

    /* renamed from: h */
    public static <E> ArrayList<E> m2618h(int i) {
        C8804c.m2638a(i, "initialArraySize");
        return new ArrayList<>(i);
    }
}
