package p020b.p036e;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: b.e.g */
/* loaded from: classes-dex2jar.jar:b/e/g.class */
public class C1502g<K, V> {

    /* renamed from: d */
    static Object[] f5973d;

    /* renamed from: e */
    static int f5974e;

    /* renamed from: f */
    static Object[] f5975f;

    /* renamed from: g */
    static int f5976g;

    /* renamed from: h */
    int[] f5977h;

    /* renamed from: i */
    Object[] f5978i;

    /* renamed from: j */
    int f5979j;

    public C1502g() {
        this.f5977h = C1493c.f5942a;
        this.f5978i = C1493c.f5944c;
        this.f5979j = 0;
    }

    public C1502g(int i) {
        if (i == 0) {
            this.f5977h = C1493c.f5942a;
            this.f5978i = C1493c.f5944c;
        } else {
            m29918a(i);
        }
        this.f5979j = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1502g(C1502g<K, V> c1502g) {
        this();
        if (c1502g != 0) {
            mo22747j(c1502g);
        }
    }

    /* renamed from: a */
    private void m29918a(int i) {
        if (i == 8) {
            synchronized (C1502g.class) {
                try {
                    Object[] objArr = f5975f;
                    if (objArr != null) {
                        this.f5978i = objArr;
                        f5975f = (Object[]) objArr[0];
                        this.f5977h = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f5976g--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C1502g.class) {
                try {
                    Object[] objArr2 = f5973d;
                    if (objArr2 != null) {
                        this.f5978i = objArr2;
                        f5973d = (Object[]) objArr2[0];
                        this.f5977h = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f5974e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f5977h = new int[i];
        this.f5978i = new Object[i << 1];
    }

    /* renamed from: b */
    private static int m29917b(int[] iArr, int i, int i2) {
        try {
            return C1493c.m29964a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: d */
    private static void m29915d(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C1502g.class) {
                try {
                    if (f5976g < 10) {
                        objArr[0] = f5975f;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f5975f = objArr;
                        f5976g++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C1502g.class) {
                try {
                    if (f5974e < 10) {
                        objArr[0] = f5973d;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f5973d = objArr;
                        f5974e++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: c */
    public void m29916c(int i) {
        int i2 = this.f5979j;
        int[] iArr = this.f5977h;
        if (iArr.length < i) {
            Object[] objArr = this.f5978i;
            m29918a(i);
            if (this.f5979j > 0) {
                System.arraycopy(iArr, 0, this.f5977h, 0, i2);
                System.arraycopy(objArr, 0, this.f5978i, 0, i2 << 1);
            }
            m29915d(iArr, objArr, i2);
        }
        if (this.f5979j == i2) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public void clear() {
        int i = this.f5979j;
        if (i > 0) {
            int[] iArr = this.f5977h;
            Object[] objArr = this.f5978i;
            this.f5977h = C1493c.f5942a;
            this.f5978i = C1493c.f5944c;
            this.f5979j = 0;
            m29915d(iArr, objArr, i);
        }
        if (this.f5979j <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(Object obj) {
        return m29913f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m29911h(obj) >= 0;
    }

    /* renamed from: e */
    int m29914e(Object obj, int i) {
        int i2 = this.f5979j;
        if (i2 == 0) {
            return -1;
        }
        int m29917b = m29917b(this.f5977h, i2, i);
        if (m29917b >= 0 && !obj.equals(this.f5978i[m29917b << 1])) {
            int i3 = m29917b + 1;
            while (i3 < i2 && this.f5977h[i3] == i) {
                if (obj.equals(this.f5978i[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m29917b - 1; i4 >= 0 && this.f5977h[i4] == i; i4--) {
                if (obj.equals(this.f5978i[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m29917b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1502g) {
            C1502g c1502g = (C1502g) obj;
            if (size() != c1502g.size()) {
                return false;
            }
            for (int i = 0; i < this.f5979j; i++) {
                try {
                    K m29910i = m29910i(i);
                    V m29909m = m29909m(i);
                    Object obj2 = c1502g.get(m29910i);
                    if (m29909m == null) {
                        if (obj2 != null || !c1502g.containsKey(m29910i)) {
                            return false;
                        }
                    } else if (!m29909m.equals(obj2)) {
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
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f5979j; i2++) {
                try {
                    K m29910i2 = m29910i(i2);
                    V m29909m2 = m29909m(i2);
                    Object obj3 = map.get(m29910i2);
                    if (m29909m2 == null) {
                        if (obj3 != null || !map.containsKey(m29910i2)) {
                            return false;
                        }
                    } else if (!m29909m2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: f */
    public int m29913f(Object obj) {
        return obj == null ? m29912g() : m29914e(obj, obj.hashCode());
    }

    /* renamed from: g */
    int m29912g() {
        int i = this.f5979j;
        if (i == 0) {
            return -1;
        }
        int m29917b = m29917b(this.f5977h, i, 0);
        if (m29917b >= 0 && this.f5978i[m29917b << 1] != null) {
            int i2 = m29917b + 1;
            while (i2 < i && this.f5977h[i2] == 0) {
                if (this.f5978i[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            while (true) {
                m29917b--;
                if (m29917b < 0 || this.f5977h[m29917b] != 0) {
                    break;
                } else if (this.f5978i[m29917b << 1] == null) {
                    return m29917b;
                }
            }
            return i2 ^ (-1);
        }
        return m29917b;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public V getOrDefault(Object obj, V v) {
        int m29913f = m29913f(obj);
        if (m29913f >= 0) {
            v = this.f5978i[(m29913f << 1) + 1];
        }
        return v;
    }

    /* renamed from: h */
    public int m29911h(Object obj) {
        int i = this.f5979j * 2;
        Object[] objArr = this.f5978i;
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

    public int hashCode() {
        int[] iArr = this.f5977h;
        Object[] objArr = this.f5978i;
        int i = this.f5979j;
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
    public K m29910i(int i) {
        return (K) this.f5978i[i << 1];
    }

    public boolean isEmpty() {
        return this.f5979j <= 0;
    }

    /* renamed from: j */
    public void mo22747j(C1502g<? extends K, ? extends V> c1502g) {
        int i = c1502g.f5979j;
        m29916c(this.f5979j + i);
        if (this.f5979j != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c1502g.m29910i(i2), c1502g.m29909m(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c1502g.f5977h, 0, this.f5977h, 0, i);
            System.arraycopy(c1502g.f5978i, 0, this.f5978i, 0, i << 1);
            this.f5979j = i;
        }
    }

    /* renamed from: k */
    public V mo22746k(int i) {
        int i2;
        Object[] objArr = this.f5978i;
        int i3 = i << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.f5979j;
        if (i4 <= 1) {
            m29915d(this.f5977h, objArr, i4);
            this.f5977h = C1493c.f5942a;
            this.f5978i = C1493c.f5944c;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            int[] iArr = this.f5977h;
            int i6 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr, i7, iArr, i, i8);
                    Object[] objArr2 = this.f5978i;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f5978i;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i4 > 8) {
                    i6 = i4 + (i4 >> 1);
                }
                m29918a(i6);
                if (i4 != this.f5979j) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f5977h, 0, i);
                    System.arraycopy(objArr, 0, this.f5978i, 0, i3);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr, i10, this.f5977h, i, i11);
                    System.arraycopy(objArr, i10 << 1, this.f5978i, i3, i11 << 1);
                }
            }
            i2 = i5;
        }
        if (i4 == this.f5979j) {
            this.f5979j = i2;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: l */
    public V mo22745l(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f5978i;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: m */
    public V m29909m(int i) {
        return (V) this.f5978i[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f5979j;
        if (k == null) {
            i2 = m29912g();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m29914e(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f5978i;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        int[] iArr = this.f5977h;
        if (i3 >= iArr.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.f5978i;
            m29918a(i6);
            if (i3 != this.f5979j) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f5977h;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f5978i, 0, objArr2.length);
            }
            m29915d(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f5977h;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f5978i;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f5979j - i5) << 1);
        }
        int i8 = this.f5979j;
        if (i3 == i8) {
            int[] iArr4 = this.f5977h;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f5978i;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f5979j = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        V v3 = v2;
        if (v2 == null) {
            v3 = put(k, v);
        }
        return v3;
    }

    public V remove(Object obj) {
        int m29913f = m29913f(obj);
        if (m29913f >= 0) {
            return mo22746k(m29913f);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int m29913f = m29913f(obj);
        if (m29913f >= 0) {
            V m29909m = m29909m(m29913f);
            if (obj2 != m29909m && (obj2 == null || !obj2.equals(m29909m))) {
                return false;
            }
            mo22746k(m29913f);
            return true;
        }
        return false;
    }

    public V replace(K k, V v) {
        int m29913f = m29913f(k);
        if (m29913f >= 0) {
            return mo22745l(m29913f, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int m29913f = m29913f(k);
        if (m29913f >= 0) {
            V m29909m = m29909m(m29913f);
            if (m29909m != v && (v == null || !v.equals(m29909m))) {
                return false;
            }
            mo22745l(m29913f, v2);
            return true;
        }
        return false;
    }

    public int size() {
        return this.f5979j;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5979j * 28);
        sb.append('{');
        for (int i = 0; i < this.f5979j; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m29910i = m29910i(i);
            if (m29910i != this) {
                sb.append(m29910i);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m29909m = m29909m(i);
            if (m29909m != this) {
                sb.append(m29909m);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
