package com.google.android.gms.internal.firebase_perf;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfl.class */
public final class zzfl<K, V> extends LinkedHashMap<K, V> {
    private static final com.google.android.gms.internal.firebase-perf.zzfl zzsj;
    private boolean zzmd = true;

    static {
        zzfl zzflVar = new zzfl();
        zzsj = zzflVar;
        zzflVar.zzmd = false;
    }

    private zzfl() {
    }

    private zzfl(Map<K, V> map) {
        super(map);
    }

    public static <K, V> zzfl<K, V> zzhe() {
        return zzsj;
    }

    private final void zzhg() {
        if (this.zzmd) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private static int zzj(Object obj) {
        if (obj instanceof byte[]) {
            return zzei.hashCode((byte[]) obj);
        }
        if (obj instanceof zzel) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzhg();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a9 A[RETURN] */
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
            if (r0 == 0) goto Lab
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r4 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto La3
            r0 = r3
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 == r1) goto L25
        L20:
            r0 = 0
            r5 = r0
            goto La5
        L25:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L31:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La3
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r4
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L58
            goto L20
        L58:
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
            if (r0 == 0) goto L92
            r0 = r7
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L92
            r0 = r8
            byte[] r0 = (byte[]) r0
            r1 = r7
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L9b
        L92:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            r9 = r0
        L9b:
            r0 = r9
            if (r0 != 0) goto L31
            goto L20
        La3:
            r0 = 1
            r5 = r0
        La5:
            r0 = r5
            if (r0 == 0) goto Lab
            r0 = 1
            return r0
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzfl.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (zzj(next.getValue()) ^ zzj(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    public final boolean isMutable() {
        return this.zzmd;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzhg();
        zzei.checkNotNull(k);
        zzei.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzhg();
        for (K k : map.keySet()) {
            zzei.checkNotNull(k);
            zzei.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzhg();
        return (V) super.remove(obj);
    }

    public final void zza(zzfl<K, V> zzflVar) {
        zzhg();
        if (!zzflVar.isEmpty()) {
            putAll(zzflVar);
        }
    }

    public final void zzfk() {
        this.zzmd = false;
    }

    public final zzfl<K, V> zzhf() {
        return isEmpty() ? new zzfl<>() : new zzfl<>(this);
    }
}
