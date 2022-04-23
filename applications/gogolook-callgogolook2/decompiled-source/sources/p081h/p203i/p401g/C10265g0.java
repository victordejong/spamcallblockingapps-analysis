package p081h.p203i.p401g;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p401g.C10516z;
/* renamed from: h.i.g.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/g0.class */
public final class C10265g0<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C10265g0 f23098b = new C10265g0();

    /* renamed from: a */
    public boolean f23099a = true;

    static {
        f23098b.m12939f();
    }

    /* renamed from: a */
    public static int m12946a(Object obj) {
        if (obj instanceof byte[]) {
            return C10516z.m11542a((byte[]) obj);
        }
        if (!(obj instanceof C10516z.AbstractC10517a)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static <K, V> int m12944a(Map<K, V> map) {
        int i = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            i += m12946a(entry.getValue()) ^ m12946a(entry.getKey());
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m12945a(Object obj, Object obj2) {
        return (!(obj instanceof byte[]) || !(obj2 instanceof byte[])) ? obj.equals(obj2) : Arrays.equals((byte[]) obj, (byte[]) obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> boolean m12943a(java.util.Map<K, V> r4, java.util.Map<K, V> r5) {
        /*
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L_0x0007
            r0 = 1
            return r0
        L_0x0007:
            r0 = r4
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0018
            r0 = 0
            return r0
        L_0x0018:
            r0 = r4
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0024:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0062
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r4 = r0
            r0 = r5
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0048
            r0 = 0
            return r0
        L_0x0048:
            r0 = r4
            java.lang.Object r0 = r0.getValue()
            r1 = r5
            r2 = r4
            java.lang.Object r2 = r2.getKey()
            java.lang.Object r1 = r1.get(r2)
            boolean r0 = m12945a(r0, r1)
            if (r0 != 0) goto L_0x0024
            r0 = 0
            return r0
        L_0x0062:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10265g0.m12943a(java.util.Map, java.util.Map):boolean");
    }

    /* renamed from: b */
    public static void m12942b(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            C10516z.m11545a(obj);
            C10516z.m11545a(map.get(obj));
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m12941d();
        super.clear();
    }

    /* renamed from: d */
    public final void m12941d() {
        if (!m12940e()) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: e */
    public boolean m12940e() {
        return this.f23099a;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && m12943a((Map) this, (Map) obj);
    }

    /* renamed from: f */
    public void m12939f() {
        this.f23099a = false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return m12944a((Map) this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m12941d();
        C10516z.m11545a(k);
        C10516z.m11545a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m12941d();
        m12942b(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m12941d();
        return (V) super.remove(obj);
    }
}
