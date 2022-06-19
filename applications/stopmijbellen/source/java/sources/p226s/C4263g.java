package p226s;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ConcurrentModificationException;
import java.util.Map;
import p029c4.C0821e;
/* renamed from: s.g */
/* loaded from: classes-dex2jar.jar:s/g.class */
public class C4263g<K, V> {

    /* renamed from: d */
    public static Object[] f13359d;

    /* renamed from: e */
    public static int f13360e;

    /* renamed from: f */
    public static Object[] f13361f;

    /* renamed from: g */
    public static int f13362g;

    /* renamed from: a */
    public int[] f13363a;

    /* renamed from: b */
    public Object[] f13364b;

    /* renamed from: c */
    public int f13365c;

    public C4263g() {
        this.f13363a = C0821e.f3005f;
        this.f13364b = C0821e.f3007h;
        this.f13365c = 0;
    }

    public C4263g(int i) {
        if (i == 0) {
            this.f13363a = C0821e.f3005f;
            this.f13364b = C0821e.f3007h;
        } else {
            m1202a(i);
        }
        this.f13365c = 0;
    }

    public C4263g(C4263g<K, V> c4263g) {
        this();
        if (c4263g != null) {
            int i = c4263g.f13365c;
            m1201b(this.f13365c + i);
            if (this.f13365c != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(c4263g.m1195h(i2), c4263g.m1192k(i2));
                }
            } else if (i > 0) {
                System.arraycopy(c4263g.f13363a, 0, this.f13363a, 0, i);
                System.arraycopy(c4263g.f13364b, 0, this.f13364b, 0, i << 1);
                this.f13365c = i;
            }
        }
    }

    /* renamed from: a */
    private void m1202a(int i) {
        if (i == 8) {
            synchronized (C4263g.class) {
                try {
                    Object[] objArr = f13361f;
                    if (objArr != null) {
                        this.f13364b = objArr;
                        f13361f = (Object[]) objArr[0];
                        this.f13363a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f13362g--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C4263g.class) {
                try {
                    Object[] objArr2 = f13359d;
                    if (objArr2 != null) {
                        this.f13364b = objArr2;
                        f13359d = (Object[]) objArr2[0];
                        this.f13363a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f13360e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f13363a = new int[i];
        this.f13364b = new Object[i << 1];
    }

    /* renamed from: c */
    public static void m1200c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C4263g.class) {
                try {
                    if (f13362g < 10) {
                        objArr[0] = f13361f;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f13361f = objArr;
                        f13362g++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C4263g.class) {
                try {
                    if (f13360e < 10) {
                        objArr[0] = f13359d;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f13359d = objArr;
                        f13360e++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: b */
    public void m1201b(int i) {
        int i2 = this.f13365c;
        int[] iArr = this.f13363a;
        if (iArr.length < i) {
            Object[] objArr = this.f13364b;
            m1202a(i);
            if (this.f13365c > 0) {
                System.arraycopy(iArr, 0, this.f13363a, 0, i2);
                System.arraycopy(objArr, 0, this.f13364b, 0, i2 << 1);
            }
            m1200c(iArr, objArr, i2);
        }
        if (this.f13365c == i2) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public void clear() {
        int i = this.f13365c;
        if (i > 0) {
            int[] iArr = this.f13363a;
            Object[] objArr = this.f13364b;
            this.f13363a = C0821e.f3005f;
            this.f13364b = C0821e.f3007h;
            this.f13365c = 0;
            m1200c(iArr, objArr, i);
        }
        if (this.f13365c <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(Object obj) {
        return m1198e(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m1196g(obj) >= 0;
    }

    /* renamed from: d */
    public int m1199d(Object obj, int i) {
        int i2 = this.f13365c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int m7343a = C0821e.m7343a(this.f13363a, i2, i);
            if (m7343a >= 0 && !obj.equals(this.f13364b[m7343a << 1])) {
                int i3 = m7343a + 1;
                while (i3 < i2 && this.f13363a[i3] == i) {
                    if (obj.equals(this.f13364b[i3 << 1])) {
                        return i3;
                    }
                    i3++;
                }
                while (true) {
                    m7343a--;
                    if (m7343a < 0 || this.f13363a[m7343a] != i) {
                        break;
                    } else if (obj.equals(this.f13364b[m7343a << 1])) {
                        return m7343a;
                    }
                }
                return i3 ^ (-1);
            }
            return m7343a;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: e */
    public int m1198e(Object obj) {
        return obj == null ? m1197f() : m1199d(obj, obj.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4263g) {
            C4263g c4263g = (C4263g) obj;
            if (this.f13365c != c4263g.f13365c) {
                return false;
            }
            for (int i = 0; i < this.f13365c; i++) {
                try {
                    K m1195h = m1195h(i);
                    V m1192k = m1192k(i);
                    Object obj2 = c4263g.get(m1195h);
                    if (m1192k == null) {
                        if (obj2 != null || !c4263g.containsKey(m1195h)) {
                            return false;
                        }
                    } else if (!m1192k.equals(obj2)) {
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
            if (this.f13365c != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f13365c; i2++) {
                try {
                    K m1195h2 = m1195h(i2);
                    V m1192k2 = m1192k(i2);
                    Object obj3 = map.get(m1195h2);
                    if (m1192k2 == null) {
                        if (obj3 != null || !map.containsKey(m1195h2)) {
                            return false;
                        }
                    } else if (!m1192k2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        return r8 ^ (-1);
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m1197f() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f13365c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r4
            int[] r0 = r0.f13363a
            r6 = r0
            r0 = r6
            r1 = r5
            r2 = 0
            int r0 = p029c4.C0821e.m7343a(r0, r1, r2)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L7c
            r7 = r0
            r0 = r7
            if (r0 >= 0) goto L1d
            r0 = r7
            return r0
        L1d:
            r0 = r4
            java.lang.Object[] r0 = r0.f13364b
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
            int[] r0 = r0.f13363a
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L54
            r0 = r4
            java.lang.Object[] r0 = r0.f13364b
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
            int[] r0 = r0.f13363a
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L77
            r0 = r4
            java.lang.Object[] r0 = r0.f13364b
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
        throw new UnsupportedOperationException("Method not decompiled: p226s.C4263g.m1197f():int");
    }

    /* renamed from: g */
    public int m1196g(Object obj) {
        int i = this.f13365c * 2;
        Object[] objArr = this.f13364b;
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

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public V getOrDefault(Object obj, V v) {
        int m1198e = m1198e(obj);
        if (m1198e >= 0) {
            v = this.f13364b[(m1198e << 1) + 1];
        }
        return v;
    }

    /* renamed from: h */
    public K m1195h(int i) {
        return (K) this.f13364b[i << 1];
    }

    public int hashCode() {
        int[] iArr = this.f13363a;
        Object[] objArr = this.f13364b;
        int i = this.f13365c;
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
    public V m1194i(int i) {
        int i2;
        Object[] objArr = this.f13364b;
        int i3 = i << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.f13365c;
        if (i4 <= 1) {
            m1200c(this.f13363a, objArr, i4);
            this.f13363a = C0821e.f3005f;
            this.f13364b = C0821e.f3007h;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            int[] iArr = this.f13363a;
            int i6 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr, i7, iArr, i, i8);
                    Object[] objArr2 = this.f13364b;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f13364b;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i4 > 8) {
                    i6 = i4 + (i4 >> 1);
                }
                m1202a(i6);
                if (i4 != this.f13365c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f13363a, 0, i);
                    System.arraycopy(objArr, 0, this.f13364b, 0, i3);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr, i10, this.f13363a, i, i11);
                    System.arraycopy(objArr, i10 << 1, this.f13364b, i3, i11 << 1);
                }
            }
            i2 = i5;
        }
        if (i4 == this.f13365c) {
            this.f13365c = i2;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public boolean isEmpty() {
        return this.f13365c <= 0;
    }

    /* renamed from: j */
    public V m1193j(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f13364b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: k */
    public V m1192k(int i) {
        return (V) this.f13364b[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f13365c;
        if (k == null) {
            i2 = m1197f();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m1199d(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f13364b;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        int[] iArr = this.f13363a;
        if (i3 >= iArr.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.f13364b;
            m1202a(i6);
            if (i3 != this.f13365c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f13363a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f13364b, 0, objArr2.length);
            }
            m1200c(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f13363a;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f13364b;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f13365c - i5) << 1);
        }
        int i8 = this.f13365c;
        if (i3 == i8) {
            int[] iArr4 = this.f13363a;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f13364b;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f13365c = i8 + 1;
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
        int m1198e = m1198e(obj);
        if (m1198e >= 0) {
            return m1194i(m1198e);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int m1198e = m1198e(obj);
        if (m1198e >= 0) {
            V m1192k = m1192k(m1198e);
            if (obj2 != m1192k && (obj2 == null || !obj2.equals(m1192k))) {
                return false;
            }
            m1194i(m1198e);
            return true;
        }
        return false;
    }

    public V replace(K k, V v) {
        int m1198e = m1198e(k);
        if (m1198e >= 0) {
            return m1193j(m1198e, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int m1198e = m1198e(k);
        if (m1198e >= 0) {
            V m1192k = m1192k(m1198e);
            if (m1192k != v && (v == null || !v.equals(m1192k))) {
                return false;
            }
            m1193j(m1198e, v2);
            return true;
        }
        return false;
    }

    public int size() {
        return this.f13365c;
    }

    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb = new StringBuilder(this.f13365c * 28);
        sb.append('{');
        for (int i = 0; i < this.f13365c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m1195h = m1195h(i);
            if (m1195h != this) {
                sb.append(m1195h);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m1192k = m1192k(i);
            if (m1192k != this) {
                sb.append(m1192k);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
