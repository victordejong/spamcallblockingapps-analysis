package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/don.class */
public final class don<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final don f27037b;

    /* renamed from: a  reason: collision with root package name */
    boolean f27038a = true;

    static {
        don donVar = new don();
        f27037b = donVar;
        donVar.f27038a = false;
    }

    private don() {
    }

    private don(Map<K, V> map) {
        super(map);
    }

    private static int a(Object obj) {
        if (obj instanceof byte[]) {
            return dnj.c((byte[]) obj);
        }
        if (!(obj instanceof dnm)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> don<K, V> a() {
        return f27037b;
    }

    public final don<K, V> b() {
        return isEmpty() ? new don<>() : new don<>(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (!this.f27038a) {
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

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8 A[RETURN] */
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
            if (r0 == 0) goto L_0x00aa
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto L_0x00a2
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0025
        L_0x0020:
            r0 = 0
            r6 = r0
            goto L_0x00a4
        L_0x0025:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x0032:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00a2
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x005b
            goto L_0x0020
        L_0x005b:
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
            if (r0 == 0) goto L_0x0092
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r4
            byte[] r0 = (byte[]) r0
            r1 = r8
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L_0x009a
        L_0x0092:
            r0 = r4
            r1 = r8
            boolean r0 = r0.equals(r1)
            r9 = r0
        L_0x009a:
            r0 = r9
            if (r0 != 0) goto L_0x0032
            goto L_0x0020
        L_0x00a2:
            r0 = 1
            r6 = r0
        L_0x00a4:
            r0 = r6
            if (r0 == 0) goto L_0x00aa
            r0 = 1
            return r0
        L_0x00aa:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.don.equals(java.lang.Object):boolean");
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
        dnj.a(k);
        dnj.a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        c();
        for (Object obj : map.keySet()) {
            dnj.a(obj);
            dnj.a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        c();
        return (V) super.remove(obj);
    }
}
