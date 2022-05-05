package com.aotter.net.trek.util;

import java.util.Collection;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/CollectionUtils.class */
public class CollectionUtils {
    public static Object getObject(Map map, Object obj) {
        return getObject(map, obj, null);
    }

    public static Object getObject(Map map, Object obj, Object obj2) {
        Object obj3;
        return (map == null || (obj3 = map.get(obj)) == null) ? obj2 : obj3;
    }

    public static boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isNotEmpty(Collection<?> collection) {
        return !isEmpty(collection);
    }

    public static boolean isNullOrEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isNullOrEmpty(Map<?, ?> map) {
        return map == null || map.isEmpty();
    }
}
