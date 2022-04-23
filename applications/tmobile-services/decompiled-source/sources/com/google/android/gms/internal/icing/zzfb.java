package com.google.android.gms.internal.icing;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfb.class */
public final class zzfb<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: f */
    private boolean f8035f = true;

    static {
        new zzfb().f8035f = false;
    }

    private zzfb() {
    }

    private zzfb(Map<K, V> map) {
        super(map);
    }

    /* renamed from: i */
    private final void m13769i() {
        if (!this.f8035f) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: j */
    private static int m13768j(Object obj) {
        if (obj instanceof byte[]) {
            return zzeb.m13805b((byte[]) obj);
        }
        if (!(obj instanceof zzec)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final boolean m13773a() {
        return this.f8035f;
    }

    /* renamed from: b */
    public final void m13772b(zzfb<K, V> zzfbVar) {
        m13769i();
        if (!zzfbVar.isEmpty()) {
            putAll(zzfbVar);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m13769i();
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
            if (r0 == 0) goto L_0x00ab
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r4 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L_0x00a3
            r0 = r3
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0025
        L_0x0020:
            r0 = 0
            r5 = r0
            goto L_0x00a5
        L_0x0025:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0031:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00a3
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r4
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0058
            goto L_0x0020
        L_0x0058:
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
            if (r0 == 0) goto L_0x0092
            r0 = r7
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r8
            byte[] r0 = (byte[]) r0
            r1 = r7
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L_0x009b
        L_0x0092:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            r9 = r0
        L_0x009b:
            r0 = r9
            if (r0 != 0) goto L_0x0031
            goto L_0x0020
        L_0x00a3:
            r0 = 1
            r5 = r0
        L_0x00a5:
            r0 = r5
            if (r0 == 0) goto L_0x00ab
            r0 = 1
            return r0
        L_0x00ab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfb.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final void m13771f() {
        this.f8035f = false;
    }

    /* renamed from: g */
    public final zzfb<K, V> m13770g() {
        return isEmpty() ? new zzfb<>() : new zzfb<>(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m13768j(entry.getValue()) ^ m13768j(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m13769i();
        zzeb.m13806a(k);
        zzeb.m13806a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m13769i();
        for (Object obj : map.keySet()) {
            zzeb.m13806a(obj);
            zzeb.m13806a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m13769i();
        return (V) super.remove(obj);
    }
}
