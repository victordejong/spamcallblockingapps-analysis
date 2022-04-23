package com.google.protobuf;

import com.google.protobuf.C2665x;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/MapFieldLite.class */
public final class MapFieldLite<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final MapFieldLite f10981b;
    private boolean isMutable = true;

    static {
        MapFieldLite mapFieldLite = new MapFieldLite();
        f10981b = mapFieldLite;
        mapFieldLite.makeImmutable();
    }

    private MapFieldLite() {
    }

    private MapFieldLite(Map<K, V> map) {
        super(map);
    }

    /* renamed from: b */
    private static int m3008b(Object obj) {
        if (obj instanceof byte[]) {
            return C2665x.m2248d((byte[]) obj);
        }
        if (!(obj instanceof C2665x.AbstractC2668c)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    private static void m3007c(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            C2665x.m2251a(obj);
            C2665x.m2251a(map.get(obj));
        }
    }

    static <K, V> int calculateHashCodeForMap(Map<K, V> map) {
        int i = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            i += m3008b(entry.getValue()) ^ m3008b(entry.getKey());
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <K, V> Map<K, V> copy(Map<K, V> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), m3006d(entry.getValue()));
        }
        return linkedHashMap;
    }

    /* renamed from: d */
    private static Object m3006d(Object obj) {
        Object obj2 = obj;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            obj2 = Arrays.copyOf(bArr, bArr.length);
        }
        return obj2;
    }

    /* renamed from: e */
    private void m3005e() {
        if (!isMutable()) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> MapFieldLite<K, V> emptyMapField() {
        return f10981b;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <K, V> boolean equals(java.util.Map<K, V> r4, java.util.Map<K, V> r5) {
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
            boolean r0 = m3004f(r0, r1)
            if (r0 != 0) goto L_0x0024
            r0 = 0
            return r0
        L_0x0062:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MapFieldLite.equals(java.util.Map, java.util.Map):boolean");
    }

    /* renamed from: f */
    private static boolean m3004f(Object obj, Object obj2) {
        return (!(obj instanceof byte[]) || !(obj2 instanceof byte[])) ? obj.equals(obj2) : Arrays.equals((byte[]) obj, (byte[]) obj2);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m3005e();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && equals(this, (Map) obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return calculateHashCodeForMap(this);
    }

    public boolean isMutable() {
        return this.isMutable;
    }

    public void makeImmutable() {
        this.isMutable = false;
    }

    public void mergeFrom(MapFieldLite<K, V> mapFieldLite) {
        m3005e();
        if (!mapFieldLite.isEmpty()) {
            putAll(mapFieldLite);
        }
    }

    public MapFieldLite<K, V> mutableCopy() {
        return isEmpty() ? new MapFieldLite<>() : new MapFieldLite<>(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m3005e();
        C2665x.m2251a(k);
        C2665x.m2251a(v);
        return (V) super.put(k, v);
    }

    public V put(Map.Entry<K, V> entry) {
        return put(entry.getKey(), entry.getValue());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m3005e();
        m3007c(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m3005e();
        return (V) super.remove(obj);
    }
}
