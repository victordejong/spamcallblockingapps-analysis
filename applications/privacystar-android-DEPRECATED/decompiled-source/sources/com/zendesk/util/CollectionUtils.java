package com.zendesk.util;

import com.zendesk.func.ZFunc1;
import com.zendesk.func.ZFunc2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/CollectionUtils.class */
public class CollectionUtils {
    static final long[] EMPTY_LONG_ARRAY = new long[0];
    private static final ZFunc1 NOOP_FUNCTION = new ZFunc1() { // from class: com.zendesk.util.CollectionUtils.1
        @Override // com.zendesk.func.ZFunc1
        public Object apply(Object obj) {
            return obj;
        }
    };

    private CollectionUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <Type> List<Type> appendOrReplace(Collection<Type> collection, Type type, ZFunc2<Type, Type, Boolean> zFunc2) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((Boolean) zFunc2.apply(arrayList.get(i), type)).booleanValue()) {
                arrayList.set(i, type);
                z = true;
            }
        }
        if (!z) {
            arrayList.add(type);
        }
        return arrayList;
    }

    public static <Type, Key> Map<Key, Type> associate(Collection<Type> collection, ZFunc1<Type, Key> zFunc1) {
        if (collection == null) {
            return new HashMap(0);
        }
        HashMap hashMap = new HashMap(collection.size());
        for (Type type : collection) {
            hashMap.put(zFunc1.apply(type), type);
        }
        return hashMap;
    }

    @SafeVarargs
    public static <Type> List<Type> combineLists(List<Type>... listArr) {
        if (listArr == null || listArr.length == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new CopyOnWriteArrayList(listArr).iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            if (isNotEmpty(list)) {
                Iterator it2 = new CopyOnWriteArrayList(list).iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
        }
        return arrayList;
    }

    public static <Type> List<Type> copyOf(List<Type> list) {
        if (list == null) {
            return new ArrayList();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
        ArrayList arrayList = new ArrayList(copyOnWriteArrayList.size());
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static <Key, Value> Map<Key, Value> copyOf(Map<Key, Value> map) {
        if (map == null) {
            return new HashMap();
        }
        Map synchronizedMap = Collections.synchronizedMap(map);
        HashMap hashMap = new HashMap();
        hashMap.putAll(synchronizedMap);
        return hashMap;
    }

    public static <Type> List<Type> ensureEmpty(List<Type> list) {
        return isEmpty(list) ? new ArrayList() : list;
    }

    public static <Type> boolean equalsByContents(Collection<Type> collection, Collection<Type> collection2) {
        if (isEmpty(collection)) {
            return isEmpty(collection2);
        }
        if (isEmpty(collection2)) {
            return false;
        }
        boolean z = false;
        if (collection.containsAll(collection2)) {
            z = false;
            if (collection2.containsAll(collection)) {
                z = true;
            }
        }
        return z;
    }

    public static <Type> List<Type> filter(Collection<Type> collection, ZFunc1<Type, Boolean> zFunc1) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (Type type : collection) {
            if (zFunc1.apply(type).booleanValue()) {
                arrayList.add(type);
            }
        }
        return arrayList;
    }

    public static <Key, Value> Map<Key, Value> filter(Map<Key, Value> map, ZFunc2<Key, Value, Boolean> zFunc2) {
        if (map == null) {
            return new HashMap(0);
        }
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<Key, Value> entry : map.entrySet()) {
            if (zFunc2.apply(entry.getKey(), entry.getValue()).booleanValue()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    public static <Type> Type findFirst(Collection<Type> collection, ZFunc1<Type, Boolean> zFunc1) {
        if (collection == null) {
            return null;
        }
        for (Type type : collection) {
            if (zFunc1.apply(type).booleanValue()) {
                return type;
            }
        }
        return null;
    }

    public static <Key, Value> Value getOrDefault(Map<Key, Value> map, Key key, Value value) {
        Value value2 = map.get(key);
        return value2 != null ? value2 : value;
    }

    public static <Type, Key> Map<Key, List<Type>> groupingBy(Collection<Type> collection, ZFunc1<Type, Key> zFunc1) {
        if (collection == null) {
            return new HashMap(0);
        }
        HashMap hashMap = new HashMap(collection.size());
        for (Type type : collection) {
            Key apply = zFunc1.apply(type);
            List list = (List) hashMap.get(apply);
            List list2 = list;
            if (list == null) {
                list2 = new ArrayList();
            }
            list2.add(type);
            hashMap.put(apply, list2);
        }
        return hashMap;
    }

    public static <Type> boolean isEmpty(Collection<Type> collection) {
        return collection == null || collection.isEmpty();
    }

    public static <Type> boolean isEmpty(Type[] typeArr) {
        return typeArr == null || typeArr.length == 0;
    }

    public static <Type> boolean isNotEmpty(Collection<Type> collection) {
        return !isEmpty(collection);
    }

    public static <Type> boolean isNotEmpty(Type[] typeArr) {
        return !isEmpty(typeArr);
    }

    public static <Type, Return> List<Return> map(Collection<Type> collection, ZFunc1<Type, Return> zFunc1) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (Type type : collection) {
            arrayList.add(zFunc1.apply(type));
        }
        return arrayList;
    }

    public static <Key, Value, ReturnKey, ReturnValue> Map<ReturnKey, ReturnValue> map(Map<Key, Value> map, ZFunc1<Key, ReturnKey> zFunc1, ZFunc1<Value, ReturnValue> zFunc12) {
        if (map == null) {
            return new HashMap(0);
        }
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<Key, Value> entry : map.entrySet()) {
            hashMap.put(zFunc1.apply(entry.getKey()), zFunc12.apply(entry.getValue()));
        }
        return hashMap;
    }

    public static <Key, Value, ReturnKey, ReturnValue> Map<ReturnKey, ReturnValue> mapKeys(Map<Key, Value> map, ZFunc1<Key, ReturnKey> zFunc1) {
        return map(map, zFunc1, NOOP_FUNCTION);
    }

    public static <Key, Value, ReturnKey, ReturnValue> Map<ReturnKey, ReturnValue> mapValues(Map<Key, Value> map, ZFunc1<Value, ReturnValue> zFunc1) {
        return map(map, NOOP_FUNCTION, zFunc1);
    }

    public static long[] toPrimitiveLong(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v5, types: [long[]] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[] toPrimitiveLong(java.lang.Long[] r5, long r6) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r5
            int r0 = r0.length
            if (r0 != 0) goto L_0x000f
            long[] r0 = com.zendesk.util.CollectionUtils.EMPTY_LONG_ARRAY
            return r0
        L_0x000f:
            r0 = r5
            int r0 = r0.length
            long[] r0 = new long[r0]
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0017:
            r0 = r9
            r1 = r5
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0042
            r0 = r5
            r1 = r9
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x002f
            r0 = r6
            r11 = r0
            goto L_0x0036
        L_0x002f:
            r0 = r10
            long r0 = r0.longValue()
            r11 = r0
        L_0x0036:
            r0 = r8
            r1 = r9
            r2 = r11
            r0[r1] = r2
            int r9 = r9 + 1
            goto L_0x0017
        L_0x0042:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zendesk.util.CollectionUtils.toPrimitiveLong(java.lang.Long[], long):long[]");
    }

    public static <Type> List<Type> unmodifiableList(List<Type> list) {
        return Collections.unmodifiableList(ensureEmpty(list));
    }
}
