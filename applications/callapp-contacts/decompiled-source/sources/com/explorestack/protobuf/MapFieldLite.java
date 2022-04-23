package com.explorestack.protobuf;

import com.explorestack.protobuf.Internal;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MapFieldLite.class */
public final class MapFieldLite<K, V> extends LinkedHashMap<K, V> {
    private static final MapFieldLite EMPTY_MAP_FIELD;
    private boolean isMutable = true;

    static {
        MapFieldLite mapFieldLite = new MapFieldLite();
        EMPTY_MAP_FIELD = mapFieldLite;
        mapFieldLite.makeImmutable();
    }

    private MapFieldLite() {
    }

    private MapFieldLite(Map<K, V> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int calculateHashCodeForMap(Map<K, V> map) {
        int i = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            i += calculateHashCodeForObject(entry.getValue()) ^ calculateHashCodeForObject(entry.getKey());
        }
        return i;
    }

    private static int calculateHashCodeForObject(Object obj) {
        if (obj instanceof byte[]) {
            return Internal.hashCode((byte[]) obj);
        }
        if (!(obj instanceof Internal.EnumLite)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private static void checkForNullKeysAndValues(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            Internal.checkNotNull(obj);
            Internal.checkNotNull(map.get(obj));
        }
    }

    private static Object copy(Object obj) {
        Object obj2 = obj;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            obj2 = Arrays.copyOf(bArr, bArr.length);
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> Map<K, V> copy(Map<K, V> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), copy(entry.getValue()));
        }
        return linkedHashMap;
    }

    public static <K, V> MapFieldLite<K, V> emptyMapField() {
        return EMPTY_MAP_FIELD;
    }

    private void ensureMutable() {
        if (!isMutable()) {
            throw new UnsupportedOperationException();
        }
    }

    private static boolean equals(Object obj, Object obj2) {
        return (!(obj instanceof byte[]) || !(obj2 instanceof byte[])) ? obj.equals(obj2) : Arrays.equals((byte[]) obj, (byte[]) obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> boolean equals(java.util.Map<K, V> r4, java.util.Map<K, V> r5) {
        /*
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L_0x0007
            r0 = 1
            return r0
        L_0x0007:
            r0 = r4
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0018
            r0 = 0
            return r0
        L_0x0018:
            r0 = r4
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0024:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0062
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r6 = r0
            r0 = r5
            r1 = r6
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0048
            r0 = 0
            return r0
        L_0x0048:
            r0 = r6
            java.lang.Object r0 = r0.getValue()
            r1 = r5
            r2 = r6
            java.lang.Object r2 = r2.getKey()
            java.lang.Object r1 = r1.get(r2)
            boolean r0 = equals(r0, r1)
            if (r0 != 0) goto L_0x0024
            r0 = 0
            return r0
        L_0x0062:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MapFieldLite.equals(java.util.Map, java.util.Map):boolean");
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        ensureMutable();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return (obj instanceof Map) && equals((Map) this, (Map) obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return calculateHashCodeForMap(this);
    }

    public final boolean isMutable() {
        return this.isMutable;
    }

    public final void makeImmutable() {
        this.isMutable = false;
    }

    public final void mergeFrom(MapFieldLite<K, V> mapFieldLite) {
        ensureMutable();
        if (!mapFieldLite.isEmpty()) {
            putAll(mapFieldLite);
        }
    }

    public final MapFieldLite<K, V> mutableCopy() {
        return isEmpty() ? new MapFieldLite<>() : new MapFieldLite<>(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        ensureMutable();
        Internal.checkNotNull(k);
        Internal.checkNotNull(v);
        return (V) super.put(k, v);
    }

    public final V put(Map.Entry<K, V> entry) {
        return put(entry.getKey(), entry.getValue());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        ensureMutable();
        checkForNullKeysAndValues(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        ensureMutable();
        return (V) super.remove(obj);
    }
}
