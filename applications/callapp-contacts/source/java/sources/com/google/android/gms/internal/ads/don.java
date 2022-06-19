package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/don.class */
public final class don<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final don f47323b;

    /* renamed from: a */
    boolean f47324a = true;

    static {
        don donVar = new don();
        f47323b = donVar;
        donVar.f47324a = false;
    }

    private don() {
    }

    private don(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    private static int m16277a(Object obj) {
        if (obj instanceof byte[]) {
            return dnj.m16310c((byte[]) obj);
        }
        if (obj instanceof dnm) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: a */
    public static <K, V> don<K, V> m16278a() {
        return f47323b;
    }

    /* renamed from: b */
    public final don<K, V> m16276b() {
        return isEmpty() ? new don<>() : new don<>(this);
    }

    /* renamed from: c */
    public final void m16275c() {
        if (this.f47324a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m16275c();
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
            if (r0 == 0) goto Laa
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto La2
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L25
        L20:
            r0 = 0
            r6 = r0
            goto La4
        L25:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L32:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La2
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L5b
            goto L20
        L5b:
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
            if (r0 == 0) goto L92
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L92
            r0 = r4
            byte[] r0 = (byte[]) r0
            r1 = r8
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L9a
        L92:
            r0 = r4
            r1 = r8
            boolean r0 = r0.equals(r1)
            r9 = r0
        L9a:
            r0 = r9
            if (r0 != 0) goto L32
            goto L20
        La2:
            r0 = 1
            r6 = r0
        La4:
            r0 = r6
            if (r0 == 0) goto Laa
            r0 = 1
            return r0
        Laa:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.don.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                i = i2 + (m16277a(next.getValue()) ^ m16277a(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m16275c();
        dnj.m16316a(k);
        dnj.m16316a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m16275c();
        for (K k : map.keySet()) {
            dnj.m16316a(k);
            dnj.m16316a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m16275c();
        return (V) super.remove(obj);
    }
}
