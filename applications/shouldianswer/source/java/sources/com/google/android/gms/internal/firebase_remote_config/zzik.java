package com.google.android.gms.internal.firebase_remote_config;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzik.class */
public final class zzik<K, V> extends LinkedHashMap<K, V> {
    private static final zzik zzvm;
    private boolean zzol = true;

    static {
        zzik zzikVar = new zzik();
        zzvm = zzikVar;
        zzikVar.zzol = false;
    }

    private zzik() {
    }

    private zzik(Map<K, V> map) {
        super(map);
    }

    public static <K, V> zzik<K, V> zzhv() {
        return zzvm;
    }

    private final void zzhx() {
        if (this.zzol) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private static int zzv(Object obj) {
        if (obj instanceof byte[]) {
            return zzhm.hashCode((byte[]) obj);
        }
        if (obj instanceof zzhl) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzhx();
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
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto La3
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L25
        L20:
            r0 = 0
            r6 = r0
            goto La5
        L25:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L31:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La3
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L58
            goto L20
        L58:
            r0 = r7
            java.lang.Object r0 = r0.getValue()
            r8 = r0
            r0 = r5
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
            r6 = r0
        La5:
            r0 = r6
            if (r0 == 0) goto Lab
            r0 = 1
            return r0
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzik.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (zzv(next.getValue()) ^ zzv(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    public final boolean isMutable() {
        return this.zzol;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzhx();
        zzhm.checkNotNull(k);
        zzhm.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzhx();
        for (K k : map.keySet()) {
            zzhm.checkNotNull(k);
            zzhm.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzhx();
        return (V) super.remove(obj);
    }

    public final void zza(zzik<K, V> zzikVar) {
        zzhx();
        if (!zzikVar.isEmpty()) {
            putAll(zzikVar);
        }
    }

    public final void zzes() {
        this.zzol = false;
    }

    public final zzik<K, V> zzhw() {
        return isEmpty() ? new zzik<>() : new zzik<>(this);
    }
}
