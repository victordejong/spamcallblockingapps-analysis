package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dea.class */
public final class dea<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final dea f14135b;

    /* renamed from: a */
    private boolean f14136a = true;

    static {
        dea deaVar = new dea();
        f14135b = deaVar;
        deaVar.f14136a = false;
    }

    private dea() {
    }

    private dea(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    private static int m10007a(Object obj) {
        int hashCode;
        if (obj instanceof byte[]) {
            hashCode = dcz.m10041c((byte[]) obj);
        } else if (obj instanceof dcy) {
            throw new UnsupportedOperationException();
        } else {
            hashCode = obj.hashCode();
        }
        return hashCode;
    }

    /* renamed from: a */
    public static <K, V> dea<K, V> m10009a() {
        return f14135b;
    }

    /* renamed from: e */
    private final void m10003e() {
        if (!this.f14136a) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public final void m10008a(dea<K, V> deaVar) {
        m10003e();
        if (!deaVar.isEmpty()) {
            putAll(deaVar);
        }
    }

    /* renamed from: b */
    public final dea<K, V> m10006b() {
        return isEmpty() ? new dea<>() : new dea<>(this);
    }

    /* renamed from: c */
    public final void m10005c() {
        this.f14136a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m10003e();
        super.clear();
    }

    /* renamed from: d */
    public final boolean m10004d() {
        return this.f14136a;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
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
            if (r0 == 0) goto Lb3
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto Lae
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L2c
            r0 = 0
            r6 = r0
        L22:
            r0 = r6
            if (r0 == 0) goto Lb3
            r0 = 1
            r7 = r0
        L29:
            r0 = r7
            return r0
        L2c:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L38:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lae
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L61
            r0 = 0
            r6 = r0
            goto L22
        L61:
            r0 = r8
            java.lang.Object r0 = r0.getValue()
            r9 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r8 = r0
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto La2
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto La2
            r0 = r9
            byte[] r0 = (byte[]) r0
            r1 = r8
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r7 = r0
        L98:
            r0 = r7
            if (r0 != 0) goto L38
            r0 = 0
            r6 = r0
            goto L22
        La2:
            r0 = r9
            r1 = r8
            boolean r0 = r0.equals(r1)
            r7 = r0
            goto L98
        Lae:
            r0 = 1
            r6 = r0
            goto L22
        Lb3:
            r0 = 0
            r7 = r0
            goto L29
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dea.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = (m10007a(next.getValue()) ^ m10007a(next.getKey())) + i2;
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m10003e();
        dcz.m10047a(k);
        dcz.m10047a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m10003e();
        for (K k : map.keySet()) {
            dcz.m10047a(k);
            dcz.m10047a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m10003e();
        return (V) super.remove(obj);
    }
}
