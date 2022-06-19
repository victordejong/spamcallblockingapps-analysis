package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.measurement.fh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fh.class */
public final class C3937fh<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final C3937fh f18155b;

    /* renamed from: a */
    private boolean f18156a = true;

    static {
        C3937fh c3937fh = new C3937fh();
        f18155b = c3937fh;
        c3937fh.f18156a = false;
    }

    private C3937fh() {
    }

    private C3937fh(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    private static int m5566a(Object obj) {
        int hashCode;
        if (obj instanceof byte[]) {
            hashCode = C3908ef.m5606c((byte[]) obj);
        } else if (obj instanceof AbstractC3911ei) {
            throw new UnsupportedOperationException();
        } else {
            hashCode = obj.hashCode();
        }
        return hashCode;
    }

    /* renamed from: a */
    public static <K, V> C3937fh<K, V> m5568a() {
        return f18155b;
    }

    /* renamed from: e */
    private final void m5562e() {
        if (!this.f18156a) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public final void m5567a(C3937fh<K, V> c3937fh) {
        m5562e();
        if (!c3937fh.isEmpty()) {
            putAll(c3937fh);
        }
    }

    /* renamed from: b */
    public final C3937fh<K, V> m5565b() {
        return isEmpty() ? new C3937fh<>() : new C3937fh<>(this);
    }

    /* renamed from: c */
    public final void m5564c() {
        this.f18156a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m5562e();
        super.clear();
    }

    /* renamed from: d */
    public final boolean m5563d() {
        return this.f18156a;
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
            if (r0 == 0) goto Lb1
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r4 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto Lac
            r0 = r3
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 == r1) goto L2a
            r0 = 0
            r5 = r0
        L22:
            r0 = r5
            if (r0 == 0) goto Lb1
            r0 = 1
            r6 = r0
        L28:
            r0 = r6
            return r0
        L2a:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L37:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lac
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r4
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L62
            r0 = 0
            r5 = r0
            goto L22
        L62:
            r0 = r8
            java.lang.Object r0 = r0.getValue()
            r9 = r0
            r0 = r4
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r8 = r0
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto La1
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto La1
            r0 = r9
            byte[] r0 = (byte[]) r0
            r1 = r8
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r6 = r0
        L98:
            r0 = r6
            if (r0 != 0) goto L37
            r0 = 0
            r5 = r0
            goto L22
        La1:
            r0 = r9
            r1 = r8
            boolean r0 = r0.equals(r1)
            r6 = r0
            goto L98
        Lac:
            r0 = 1
            r5 = r0
            goto L22
        Lb1:
            r0 = 0
            r6 = r0
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3937fh.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = (m5566a(next.getValue()) ^ m5566a(next.getKey())) + i2;
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m5562e();
        C3908ef.m5612a(k);
        C3908ef.m5612a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m5562e();
        for (K k : map.keySet()) {
            C3908ef.m5612a(k);
            C3908ef.m5612a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m5562e();
        return (V) super.remove(obj);
    }
}
