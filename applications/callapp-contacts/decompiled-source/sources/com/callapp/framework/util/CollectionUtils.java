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

    public static <T> T a(Collection<T> collection, Predicate<T> predicate) {
        if (a(collection)) {
            return null;
        }
        for (T t : collection) {
            if (predicate.apply(t)) {
                return t;
            }
        }
        return null;
    }

    public static <T> void a(List<T> list, List<? extends T> list2) {
        if (list != null && b(list2)) {
            list.addAll(list2);
        }
    }

    public static boolean a(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean a(Collection collection, Collection collection2) {
        if (collection == null || collection.isEmpty()) {
            return collection2 == null || collection2.isEmpty();
        }
        if (collection2 == null || collection2.isEmpty()) {
            return false;
        }
        return collection.equals(collection2);
    }

    public static <F> boolean a(Collection<F> collection, F... fArr) {
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

    public static boolean a(Map map) {
        return map == null || map.isEmpty();
    }

    public static <F extends Enum> boolean a(Set<F> set, Set<F> set2) {
        if (a(set) || a(set2)) {
            return false;
        }
        EnumSet copyOf = EnumSet.copyOf(set2);
        copyOf.retainAll(set);
        return !copyOf.isEmpty();
    }

    public static <T> boolean a(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> T[] a(Class<T> cls, List<T> list) {
        return (T[]) list.toArray((Object[]) Array.newInstance((Class<?>) cls, list.size()));
    }

    public static boolean b(Collection collection) {
        return collection != null && !collection.isEmpty();
    }

    public static boolean b(Map map) {
        return map != null && !map.isEmpty();
    }

    public static <T> boolean b(T[] tArr) {
        return !a(tArr);
    }

    public static <T> List<T> c(Collection<T> collection) {
        if (a(collection)) {
            return null;
        }
        return new ArrayList(collection);
    }
}
