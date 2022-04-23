package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hi.class */
public final class hi<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final hi f29086b;

    /* renamed from: a  reason: collision with root package name */
    boolean f29087a = true;

    static {
        hi hiVar = new hi();
        f29086b = hiVar;
        hiVar.f29087a = false;
    }

    private hi() {
    }

    private hi(Map<K, V> map) {
        super(map);
    }

    private static int a(Object obj) {
        if (obj instanceof byte[]) {
            return gt.c((byte[]) obj);
        }
        if (!(obj instanceof gn)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> hi<K, V> a() {
        return f29086b;
    }

    public final hi<K, V> b() {
        return isEmpty() ? new hi<>() : new hi<>(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (!this.f29087a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
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

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += a(entry.getValue()) ^ a(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        c();
        gt.a(k);
        gt.a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        c();
        for (Object obj : map.keySet()) {
            gt.a(obj);
            gt.a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        c();
        return (V) super.remove(obj);
    }
}
