package com.google.android.gms.internal.mlkit_translate;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzle.class */
public final class zzle<K, V> extends LinkedHashMap<K, V> {
    private static final zzle zzb;
    private boolean zza = true;

    static {
        zzle zzleVar = new zzle();
        zzb = zzleVar;
        zzleVar.zza = false;
    }

    private zzle() {
    }

    private zzle(Map<K, V> map) {
        super(map);
    }

    private static int zza(Object obj) {
        if (obj instanceof byte[]) {
            return zzkf.zzc((byte[]) obj);
        }
        if (obj instanceof zzke) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    private final void zzd() {
        if (this.zza) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzd();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6 A[RETURN] */
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
            if (r0 == 0) goto La8
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto La0
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L23
        L1e:
            r0 = 0
            r6 = r0
            goto La2
        L23:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L30:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La0
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L59
            goto L1e
        L59:
            r0 = r8
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r8 = r0
            r0 = r4
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L90
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L90
            r0 = r4
            byte[] r0 = (byte[]) r0
            r1 = r8
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L98
        L90:
            r0 = r4
            r1 = r8
            boolean r0 = r0.equals(r1)
            r9 = r0
        L98:
            r0 = r9
            if (r0 != 0) goto L30
            goto L1e
        La0:
            r0 = 1
            r6 = r0
        La2:
            r0 = r6
            if (r0 == 0) goto La8
            r0 = 1
            return r0
        La8:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzle.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (zza(next.getValue()) ^ zza(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzd();
        zzkf.zza(k);
        zzkf.zza(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzd();
        for (K k : map.keySet()) {
            zzkf.zza(k);
            zzkf.zza(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzd();
        return (V) super.remove(obj);
    }

    public final zzle<K, V> zza() {
        return isEmpty() ? new zzle<>() : new zzle<>(this);
    }

    public final void zza(zzle<K, V> zzleVar) {
        zzd();
        if (!zzleVar.isEmpty()) {
            putAll(zzleVar);
        }
    }

    public final void zzb() {
        this.zza = false;
    }

    public final boolean zzc() {
        return this.zza;
    }
}
