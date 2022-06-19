package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeui.class */
public final class zzeui<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final zzeui f9643b;
    private boolean zza = true;

    static {
        zzeui zzeuiVar = new zzeui();
        f9643b = zzeuiVar;
        zzeuiVar.zza = false;
    }

    private zzeui() {
    }

    private zzeui(Map<K, V> map) {
        super(map);
    }

    /* renamed from: b */
    private static int m4491b(Object obj) {
        if (obj instanceof byte[]) {
            return xc2.m4912g((byte[]) obj);
        }
        if (obj instanceof qc2) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: c */
    private final void m4490c() {
        if (this.zza) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> zzeui<K, V> zza() {
        return f9643b;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m4490c();
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
                i = i2 + (m4491b(next.getValue()) ^ m4491b(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m4490c();
        xc2.m4918a(k);
        xc2.m4918a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m4490c();
        for (K k : map.keySet()) {
            xc2.m4918a(k);
            xc2.m4918a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m4490c();
        return (V) super.remove(obj);
    }

    public final void zzb(zzeui<K, V> zzeuiVar) {
        m4490c();
        if (!zzeuiVar.isEmpty()) {
            putAll(zzeuiVar);
        }
    }

    public final zzeui<K, V> zzc() {
        return isEmpty() ? new zzeui<>() : new zzeui<>(this);
    }

    public final void zzd() {
        this.zza = false;
    }

    public final boolean zze() {
        return this.zza;
    }
}
