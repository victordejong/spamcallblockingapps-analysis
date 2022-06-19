package com.google.android.gms.internal.clearcut;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzdi.class */
public final class zzdi<K, V> extends LinkedHashMap<K, V> {
    private static final zzdi zzme;
    private boolean zzfa = true;

    static {
        zzdi zzdiVar = new zzdi();
        zzme = zzdiVar;
        zzdiVar.zzfa = false;
    }

    private zzdi() {
    }

    private zzdi(Map<K, V> map) {
        super(map);
    }

    public static <K, V> zzdi<K, V> zzbz() {
        return zzme;
    }

    private final void zzcb() {
        if (this.zzfa) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private static int zzf(Object obj) {
        if (obj instanceof byte[]) {
            return zzci.hashCode((byte[]) obj);
        }
        if (obj instanceof zzcj) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzcb();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof java.util.Map
            if (r0 == 0) goto La9
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r4 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto La1
            r0 = r3
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 == r1) goto L23
        L1e:
            r0 = 0
            r5 = r0
            goto La3
        L23:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L2f:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La1
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r4
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L56
            goto L1e
        L56:
            r0 = r7
            java.lang.Object r0 = r0.getValue()
            r8 = r0
            r0 = r4
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L90
            r0 = r7
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L90
            r0 = r8
            byte[] r0 = (byte[]) r0
            r1 = r7
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L99
        L90:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            r9 = r0
        L99:
            r0 = r9
            if (r0 != 0) goto L2f
            goto L1e
        La1:
            r0 = 1
            r5 = r0
        La3:
            r0 = r5
            if (r0 == 0) goto La9
            r0 = 1
            return r0
        La9:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzdi.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (zzf(next.getValue()) ^ zzf(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    public final boolean isMutable() {
        return this.zzfa;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzcb();
        zzci.checkNotNull(k);
        zzci.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzcb();
        for (K k : map.keySet()) {
            zzci.checkNotNull(k);
            zzci.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzcb();
        return (V) super.remove(obj);
    }

    public final void zza(zzdi<K, V> zzdiVar) {
        zzcb();
        if (!zzdiVar.isEmpty()) {
            putAll(zzdiVar);
        }
    }

    public final zzdi<K, V> zzca() {
        return isEmpty() ? new zzdi<>() : new zzdi<>(this);
    }

    public final void zzv() {
        this.zzfa = false;
    }
}
