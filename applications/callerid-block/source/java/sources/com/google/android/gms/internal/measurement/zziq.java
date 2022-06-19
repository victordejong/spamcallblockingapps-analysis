package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziq.class */
public final class zziq<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final zziq f9926b;
    private boolean zza = true;

    static {
        zziq zziqVar = new zziq();
        f9926b = zziqVar;
        zziqVar.zza = false;
    }

    private zziq() {
    }

    private zziq(Map<K, V> map) {
        super(map);
    }

    /* renamed from: b */
    private static int m4053b(Object obj) {
        if (obj instanceof byte[]) {
            return C2202x5.m4129g((byte[]) obj);
        }
        if (obj instanceof AbstractC2174s5) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: c */
    private final void m4052c() {
        if (this.zza) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> zziq<K, V> zza() {
        return f9926b;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m4052c();
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
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (m4053b(next.getValue()) ^ m4053b(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m4052c();
        C2202x5.m4135a(k);
        C2202x5.m4135a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m4052c();
        for (K k : map.keySet()) {
            C2202x5.m4135a(k);
            C2202x5.m4135a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m4052c();
        return (V) super.remove(obj);
    }

    public final void zzb(zziq<K, V> zziqVar) {
        m4052c();
        if (!zziqVar.isEmpty()) {
            putAll(zziqVar);
        }
    }

    public final zziq<K, V> zzc() {
        return isEmpty() ? new zziq<>() : new zziq<>(this);
    }

    public final void zzd() {
        this.zza = false;
    }

    public final boolean zze() {
        return this.zza;
    }
}
