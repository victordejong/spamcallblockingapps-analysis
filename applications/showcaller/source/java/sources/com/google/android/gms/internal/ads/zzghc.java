package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghc.class */
public final class zzghc<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: d */
    private static final zzghc f34177d;
    private boolean zza = true;

    static {
        zzghc zzghcVar = new zzghc();
        f34177d = zzghcVar;
        zzghcVar.zza = false;
    }

    private zzghc() {
    }

    private zzghc(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    private static int m7857a(Object obj) {
        if (obj instanceof byte[]) {
            return se3.m11066g((byte[]) obj);
        }
        if (obj instanceof ke3) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: b */
    private final void m7856b() {
        if (this.zza) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> zzghc<K, V> zza() {
        return f34177d;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m7856b();
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
                i = i2 + (m7857a(next.getValue()) ^ m7857a(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m7856b();
        se3.m11072a(k);
        se3.m11072a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m7856b();
        for (K k : map.keySet()) {
            se3.m11072a(k);
            se3.m11072a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m7856b();
        return (V) super.remove(obj);
    }

    public final void zzb(zzghc<K, V> zzghcVar) {
        m7856b();
        if (!zzghcVar.isEmpty()) {
            putAll(zzghcVar);
        }
    }

    public final zzghc<K, V> zzc() {
        return isEmpty() ? new zzghc<>() : new zzghc<>(this);
    }

    public final void zzd() {
        this.zza = false;
    }

    public final boolean zze() {
        return this.zza;
    }
}
