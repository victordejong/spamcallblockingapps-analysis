package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.measurement.hi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hi.class */
public final class C13550hi<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final C13550hi f50787b;

    /* renamed from: a */
    boolean f50788a = true;

    static {
        C13550hi c13550hi = new C13550hi();
        f50787b = c13550hi;
        c13550hi.f50788a = false;
    }

    private C13550hi() {
    }

    private C13550hi(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    private static int m12722a(Object obj) {
        if (obj instanceof byte[]) {
            return C13534gt.m12740c((byte[]) obj);
        }
        if (obj instanceof AbstractC13528gn) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: a */
    public static <K, V> C13550hi<K, V> m12723a() {
        return f50787b;
    }

    /* renamed from: b */
    public final C13550hi<K, V> m12721b() {
        return isEmpty() ? new C13550hi<>() : new C13550hi<>(this);
    }

    /* renamed from: c */
    public final void m12720c() {
        if (this.f50788a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m12720c();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this == map) {
                return true;
            }
            if (size() != map.size()) {
                return false;
            }
            for (Map.Entry<K, V> entry : entrySet()) {
                if (!map.containsKey(entry.getKey())) {
                    return false;
                }
                V value = entry.getValue();
                Object obj2 = map.get(entry.getKey());
                if (!((!(value instanceof byte[]) || !(obj2 instanceof byte[])) ? value.equals(obj2) : Arrays.equals((byte[]) value, (byte[]) obj2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                i = i2 + (m12722a(next.getValue()) ^ m12722a(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m12720c();
        C13534gt.m12746a(k);
        C13534gt.m12746a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m12720c();
        for (K k : map.keySet()) {
            C13534gt.m12746a(k);
            C13534gt.m12746a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m12720c();
        return (V) super.remove(obj);
    }
}
