package p1727n3.p1788g;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: n3.g.h */
/* loaded from: classes-dex2jar.jar:n3/g/h.class */
public class C26187h<K, V> {

    /* renamed from: d */
    public static Object[] f73019d;

    /* renamed from: e */
    public static int f73020e;

    /* renamed from: f */
    public static Object[] f73021f;

    /* renamed from: g */
    public static int f73022g;

    /* renamed from: a */
    public int[] f73023a;

    /* renamed from: b */
    public Object[] f73024b;

    /* renamed from: c */
    public int f73025c;

    public C26187h() {
        this.f73023a = C26178d.f72996a;
        this.f73024b = C26178d.f72998c;
        this.f73025c = 0;
    }

    public C26187h(int i) {
        if (i == 0) {
            this.f73023a = C26178d.f72996a;
            this.f73024b = C26178d.f72998c;
        } else {
            m2583c(i);
        }
        this.f73025c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C26187h(C26187h<K, V> c26187h) {
        this();
        if (c26187h != 0) {
            m2575m(c26187h);
        }
    }

    /* renamed from: g */
    public static void m2581g(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C26187h.class) {
                try {
                    if (f73022g < 10) {
                        objArr[0] = f73021f;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f73021f = objArr;
                        f73022g++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C26187h.class) {
                try {
                    if (f73020e < 10) {
                        objArr[0] = f73019d;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f73019d = objArr;
                        f73020e++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: c */
    public final void m2583c(int i) {
        if (i == 8) {
            synchronized (C26187h.class) {
                try {
                    Object[] objArr = f73021f;
                    if (objArr != null) {
                        this.f73024b = objArr;
                        f73021f = (Object[]) objArr[0];
                        this.f73023a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f73022g--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C26187h.class) {
                try {
                    Object[] objArr2 = f73019d;
                    if (objArr2 != null) {
                        this.f73024b = objArr2;
                        f73019d = (Object[]) objArr2[0];
                        this.f73023a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f73020e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f73023a = new int[i];
        this.f73024b = new Object[i << 1];
    }

    public void clear() {
        int i = this.f73025c;
        if (i > 0) {
            int[] iArr = this.f73023a;
            Object[] objArr = this.f73024b;
            this.f73023a = C26178d.f72996a;
            this.f73024b = C26178d.f72998c;
            this.f73025c = 0;
            m2581g(iArr, objArr, i);
        }
        if (this.f73025c <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(Object obj) {
        return m2579i(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m2577k(obj) >= 0;
    }

    /* renamed from: d */
    public void m2582d(int i) {
        int i2 = this.f73025c;
        int[] iArr = this.f73023a;
        if (iArr.length < i) {
            Object[] objArr = this.f73024b;
            m2583c(i);
            if (this.f73025c > 0) {
                System.arraycopy(iArr, 0, this.f73023a, 0, i2);
                System.arraycopy(objArr, 0, this.f73024b, 0, i2 << 1);
            }
            m2581g(iArr, objArr, i2);
        }
        if (this.f73025c == i2) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C26187h) {
            C26187h c26187h = (C26187h) obj;
            if (this.f73025c != c26187h.f73025c) {
                return false;
            }
            for (int i = 0; i < this.f73025c; i++) {
                try {
                    K m2576l = m2576l(i);
                    V m2572p = m2572p(i);
                    Object obj2 = c26187h.get(m2576l);
                    if (m2572p == null) {
                        if (obj2 != null || !c26187h.containsKey(m2576l)) {
                            return false;
                        }
                    } else if (!m2572p.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e) {
                    return false;
                }
            }
            return true;
        } else if (!(obj instanceof Map)) {
            return false;
        } else {
            Map map = (Map) obj;
            if (this.f73025c != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f73025c; i2++) {
                try {
                    K m2576l2 = m2576l(i2);
                    V m2572p2 = m2572p(i2);
                    Object obj3 = map.get(m2576l2);
                    if (m2572p2 == null) {
                        if (obj3 != null || !map.containsKey(m2576l2)) {
                            return false;
                        }
                    } else if (!m2572p2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public V getOrDefault(Object obj, V v) {
        int m2579i = m2579i(obj);
        if (m2579i >= 0) {
            v = this.f73024b[(m2579i << 1) + 1];
        }
        return v;
    }

    /* renamed from: h */
    public int m2580h(Object obj, int i) {
        int i2 = this.f73025c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int m2615a = C26178d.m2615a(this.f73023a, i2, i);
            if (m2615a >= 0 && !obj.equals(this.f73024b[m2615a << 1])) {
                int i3 = m2615a + 1;
                while (i3 < i2 && this.f73023a[i3] == i) {
                    if (obj.equals(this.f73024b[i3 << 1])) {
                        return i3;
                    }
                    i3++;
                }
                for (int i4 = m2615a - 1; i4 >= 0 && this.f73023a[i4] == i; i4--) {
                    if (obj.equals(this.f73024b[i4 << 1])) {
                        return i4;
                    }
                }
                return i3 ^ (-1);
            }
            return m2615a;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    public int hashCode() {
        int[] iArr = this.f73023a;
        Object[] objArr = this.f73024b;
        int i = this.f73025c;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    /* renamed from: i */
    public int m2579i(Object obj) {
        return obj == null ? m2578j() : m2580h(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.f73025c <= 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        return r8 ^ (-1);
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m2578j() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f73025c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r4
            int[] r0 = r0.f73023a
            r6 = r0
            r0 = r6
            r1 = r5
            r2 = 0
            int r0 = p1727n3.p1788g.C26178d.m2615a(r0, r1, r2)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L7c
            r7 = r0
            r0 = r7
            if (r0 >= 0) goto L1d
            r0 = r7
            return r0
        L1d:
            r0 = r4
            java.lang.Object[] r0 = r0.f73024b
            r1 = r7
            r2 = 1
            int r1 = r1 << r2
            r0 = r0[r1]
            if (r0 != 0) goto L2a
            r0 = r7
            return r0
        L2a:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
        L2f:
            r0 = r8
            r1 = r5
            if (r0 >= r1) goto L54
            r0 = r4
            int[] r0 = r0.f73023a
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L54
            r0 = r4
            java.lang.Object[] r0 = r0.f73024b
            r1 = r8
            r2 = 1
            int r1 = r1 << r2
            r0 = r0[r1]
            if (r0 != 0) goto L4e
            r0 = r8
            return r0
        L4e:
            int r8 = r8 + 1
            goto L2f
        L54:
            int r7 = r7 + (-1)
        L57:
            r0 = r7
            if (r0 < 0) goto L77
            r0 = r4
            int[] r0 = r0.f73023a
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L77
            r0 = r4
            java.lang.Object[] r0 = r0.f73024b
            r1 = r7
            r2 = 1
            int r1 = r1 << r2
            r0 = r0[r1]
            if (r0 != 0) goto L71
            r0 = r7
            return r0
        L71:
            int r7 = r7 + (-1)
            goto L57
        L77:
            r0 = r8
            r1 = -1
            r0 = r0 ^ r1
            return r0
        L7c:
            r6 = move-exception
            java.util.ConcurrentModificationException r0 = new java.util.ConcurrentModificationException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1788g.C26187h.m2578j():int");
    }

    /* renamed from: k */
    public int m2577k(Object obj) {
        int i = this.f73025c * 2;
        Object[] objArr = this.f73024b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public K m2576l(int i) {
        return (K) this.f73024b[i << 1];
    }

    /* renamed from: m */
    public void m2575m(C26187h<? extends K, ? extends V> c26187h) {
        int i = c26187h.f73025c;
        m2582d(this.f73025c + i);
        if (this.f73025c != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c26187h.m2576l(i2), c26187h.m2572p(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c26187h.f73023a, 0, this.f73023a, 0, i);
            System.arraycopy(c26187h.f73024b, 0, this.f73024b, 0, i << 1);
            this.f73025c = i;
        }
    }

    /* renamed from: n */
    public V m2574n(int i) {
        int i2;
        Object[] objArr = this.f73024b;
        int i3 = i << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.f73025c;
        if (i4 <= 1) {
            m2581g(this.f73023a, objArr, i4);
            this.f73023a = C26178d.f72996a;
            this.f73024b = C26178d.f72998c;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            int[] iArr = this.f73023a;
            int i6 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr, i7, iArr, i, i8);
                    Object[] objArr2 = this.f73024b;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f73024b;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i4 > 8) {
                    i6 = i4 + (i4 >> 1);
                }
                m2583c(i6);
                if (i4 != this.f73025c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f73023a, 0, i);
                    System.arraycopy(objArr, 0, this.f73024b, 0, i3);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr, i10, this.f73023a, i, i11);
                    System.arraycopy(objArr, i10 << 1, this.f73024b, i3, i11 << 1);
                }
            }
            i2 = i5;
        }
        if (i4 == this.f73025c) {
            this.f73025c = i2;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: o */
    public V m2573o(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f73024b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: p */
    public V m2572p(int i) {
        return (V) this.f73024b[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f73025c;
        if (k == null) {
            i2 = m2578j();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m2580h(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f73024b;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        int[] iArr = this.f73023a;
        if (i3 >= iArr.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.f73024b;
            m2583c(i6);
            if (i3 != this.f73025c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f73023a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f73024b, 0, objArr2.length);
            }
            m2581g(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f73023a;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f73024b;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f73025c - i5) << 1);
        }
        int i8 = this.f73025c;
        if (i3 == i8) {
            int[] iArr4 = this.f73023a;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f73024b;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f73025c = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k, V v) {
        V orDefault = getOrDefault(k, null);
        V v2 = orDefault;
        if (orDefault == null) {
            v2 = put(k, v);
        }
        return v2;
    }

    public V remove(Object obj) {
        int m2579i = m2579i(obj);
        if (m2579i >= 0) {
            return m2574n(m2579i);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int m2579i = m2579i(obj);
        if (m2579i >= 0) {
            V m2572p = m2572p(m2579i);
            if (obj2 != m2572p && (obj2 == null || !obj2.equals(m2572p))) {
                return false;
            }
            m2574n(m2579i);
            return true;
        }
        return false;
    }

    public V replace(K k, V v) {
        int m2579i = m2579i(k);
        if (m2579i >= 0) {
            return m2573o(m2579i, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int m2579i = m2579i(k);
        if (m2579i >= 0) {
            V m2572p = m2572p(m2579i);
            if (m2572p != v && (v == null || !v.equals(m2572p))) {
                return false;
            }
            m2573o(m2579i, v2);
            return true;
        }
        return false;
    }

    public int size() {
        return this.f73025c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f73025c * 28);
        sb.append('{');
        for (int i = 0; i < this.f73025c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m2576l = m2576l(i);
            if (m2576l != this) {
                sb.append(m2576l);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m2572p = m2572p(i);
            if (m2572p != this) {
                sb.append(m2572p);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
