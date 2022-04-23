package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: h.i.a.e.j.q.d5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d5.class */
public final class C8583d5<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C8583d5 f19660b;

    /* renamed from: a */
    public boolean f19661a = true;

    static {
        C8583d5 d5Var = new C8583d5();
        f19660b = d5Var;
        d5Var.f19661a = false;
    }

    public C8583d5() {
    }

    public C8583d5(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static int m17705a(Object obj) {
        if (obj instanceof byte[]) {
            return C8591e4.m17684a((byte[]) obj);
        }
        if (!(obj instanceof AbstractC8600f4)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: h */
    public static <K, V> C8583d5<K, V> m17700h() {
        return f19660b;
    }

    /* renamed from: a */
    public final void m17706a(C8583d5<K, V> d5Var) {
        m17701g();
        if (!d5Var.isEmpty()) {
            putAll(d5Var);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m17701g();
        super.clear();
    }

    /* renamed from: d */
    public final boolean m17704d() {
        return this.f19661a;
    }

    /* renamed from: e */
    public final void m17703e() {
        this.f19661a = false;
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
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto L_0x00a3
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0025
        L_0x0020:
            r0 = 0
            r6 = r0
            goto L_0x00a5
        L_0x0025:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0031:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00a3
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0058
            goto L_0x0020
        L_0x0058:
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
            r6 = r0
        L_0x00a5:
            r0 = r6
            if (r0 == 0) goto L_0x00ab
            r0 = 1
            return r0
        L_0x00ab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8583d5.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final C8583d5<K, V> m17702f() {
        return isEmpty() ? new C8583d5<>() : new C8583d5<>(this);
    }

    /* renamed from: g */
    public final void m17701g() {
        if (!this.f19661a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m17705a(entry.getValue()) ^ m17705a(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m17701g();
        C8591e4.m17688a(k);
        C8591e4.m17688a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m17701g();
        for (Object obj : map.keySet()) {
            C8591e4.m17688a(obj);
            C8591e4.m17688a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m17701g();
        return (V) super.remove(obj);
    }
}
