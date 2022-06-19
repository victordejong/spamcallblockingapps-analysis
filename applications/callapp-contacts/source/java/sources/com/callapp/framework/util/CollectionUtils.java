package com.callapp.framework.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/util/CollectionUtils.class */
public class CollectionUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/framework/util/CollectionUtils$Predicate.class */
    public interface Predicate<T> {
        boolean apply(T t);
    }

    /* renamed from: a */
    public static <T> T m26075a(Collection<T> collection, Predicate<T> predicate) {
        if (m26076a(collection)) {
            return null;
        }
        for (T t : collection) {
            if (predicate.apply(t)) {
                return t;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static <T> void m26072a(List<T> list, List<? extends T> list2) {
        if (list == null || !m26068b(list2)) {
            return;
        }
        list.addAll(list2);
    }

    /* renamed from: a */
    public static boolean m26076a(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: a */
    public static boolean m26074a(Collection collection, Collection collection2) {
        if (collection == null || collection.isEmpty()) {
            return collection2 == null || collection2.isEmpty();
        } else if (collection2 != null && !collection2.isEmpty()) {
            return collection.equals(collection2);
        } else {
            return false;
        }
    }

    /* renamed from: a */
    public static <F> boolean m26073a(Collection<F> collection, F... fArr) {
        if (collection == null) {
            return false;
        }
        for (F f : fArr) {
            if (collection.contains(f)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m26071a(Map map) {
        return map == null || map.isEmpty();
    }

    /* renamed from: a */
    public static <F extends Enum> boolean m26070a(Set<F> set, Set<F> set2) {
        if (m26076a(set) || m26076a(set2)) {
            return false;
        }
        EnumSet copyOf = EnumSet.copyOf((Collection) set2);
        copyOf.retainAll(set);
        return !copyOf.isEmpty();
    }

    /* renamed from: a */
    public static <T> boolean m26069a(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    /* renamed from: a */
    public static <T> T[] m26077a(Class<T> cls, List<T> list) {
        return (T[]) list.toArray((Object[]) Array.newInstance((Class<?>) cls, list.size()));
    }

    /* renamed from: b */
    public static boolean m26068b(Collection collection) {
        return collection != null && !collection.isEmpty();
    }

    /* renamed from: b */
    public static boolean m26067b(Map map) {
        return map != null && !map.isEmpty();
    }

    /* renamed from: b */
    public static <T> boolean m26066b(T[] tArr) {
        return !m26069a(tArr);
    }

    /* renamed from: c */
    public static <T> List<T> m26065c(Collection<T> collection) {
        if (m26076a(collection)) {
            return null;
        }
        return new ArrayList(collection);
    }
}
