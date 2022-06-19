package androidx.p023b;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: androidx.b.g */
/* loaded from: classes-dex2jar.jar:androidx/b/g.class */
public class C0441g<K, V> {

    /* renamed from: b */
    static Object[] f1745b;

    /* renamed from: c */
    static int f1746c;

    /* renamed from: d */
    static Object[] f1747d;

    /* renamed from: e */
    static int f1748e;

    /* renamed from: f */
    int[] f1749f;

    /* renamed from: g */
    Object[] f1750g;

    /* renamed from: h */
    int f1751h;

    public C0441g() {
        this.f1749f = C0432c.f1714a;
        this.f1750g = C0432c.f1716c;
        this.f1751h = 0;
    }

    public C0441g(int i) {
        if (i == 0) {
            this.f1749f = C0432c.f1714a;
            this.f1750g = C0432c.f1716c;
        } else {
            m45514e(i);
        }
        this.f1751h = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0441g(C0441g<K, V> c0441g) {
        this();
        if (c0441g != 0) {
            mo37601a((C0441g) c0441g);
        }
    }

    /* renamed from: a */
    private int m45523a() {
        int i = this.f1751h;
        if (i == 0) {
            return -1;
        }
        int m45519a = m45519a(this.f1749f, i, 0);
        if (m45519a >= 0 && this.f1750g[m45519a << 1] != null) {
            int i2 = m45519a + 1;
            while (i2 < i && this.f1749f[i2] == 0) {
                if (this.f1750g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            while (true) {
                m45519a--;
                if (m45519a < 0 || this.f1749f[m45519a] != 0) {
                    break;
                } else if (this.f1750g[m45519a << 1] == null) {
                    return m45519a;
                }
            }
            return i2 ^ (-1);
        }
        return m45519a;
    }

    /* renamed from: a */
    private int m45520a(Object obj, int i) {
        int i2 = this.f1751h;
        if (i2 == 0) {
            return -1;
        }
        int m45519a = m45519a(this.f1749f, i2, i);
        if (m45519a >= 0 && !obj.equals(this.f1750g[m45519a << 1])) {
            int i3 = m45519a + 1;
            while (i3 < i2 && this.f1749f[i3] == i) {
                if (obj.equals(this.f1750g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m45519a - 1; i4 >= 0 && this.f1749f[i4] == i; i4--) {
                if (obj.equals(this.f1750g[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m45519a;
    }

    /* renamed from: a */
    private static int m45519a(int[] iArr, int i, int i2) {
        try {
            return C0432c.m45556a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    private static void m45518a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0441g.class) {
                try {
                    if (f1748e < 10) {
                        objArr[0] = f1747d;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f1747d = objArr;
                        f1748e++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0441g.class) {
                try {
                    if (f1746c < 10) {
                        objArr[0] = f1745b;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f1745b = objArr;
                        f1746c++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: e */
    private void m45514e(int i) {
        if (i == 8) {
            synchronized (C0441g.class) {
                try {
                    Object[] objArr = f1747d;
                    if (objArr != null) {
                        this.f1750g = objArr;
                        f1747d = (Object[]) objArr[0];
                        this.f1749f = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1748e--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0441g.class) {
                try {
                    Object[] objArr2 = f1745b;
                    if (objArr2 != null) {
                        this.f1750g = objArr2;
                        f1745b = (Object[]) objArr2[0];
                        this.f1749f = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1746c--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1749f = new int[i];
        this.f1750g = new Object[i << 1];
    }

    /* renamed from: a */
    public final int m45521a(Object obj) {
        return obj == null ? m45523a() : m45520a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public V mo37602a(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f1750g;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: a */
    public final void m45522a(int i) {
        int i2 = this.f1751h;
        int[] iArr = this.f1749f;
        if (iArr.length < i) {
            Object[] objArr = this.f1750g;
            m45514e(i);
            if (this.f1751h > 0) {
                System.arraycopy(iArr, 0, this.f1749f, 0, i2);
                System.arraycopy(objArr, 0, this.f1750g, 0, i2 << 1);
            }
            m45518a(iArr, objArr, i2);
        }
        if (this.f1751h == i2) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: a */
    public void mo37601a(C0441g<? extends K, ? extends V> c0441g) {
        int i = c0441g.f1751h;
        m45522a(this.f1751h + i);
        if (this.f1751h != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c0441g.m45517b(i2), c0441g.m45515c(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c0441g.f1749f, 0, this.f1749f, 0, i);
            System.arraycopy(c0441g.f1750g, 0, this.f1750g, 0, i << 1);
            this.f1751h = i;
        }
    }

    /* renamed from: b */
    public final int m45516b(Object obj) {
        int i = this.f1751h * 2;
        Object[] objArr = this.f1750g;
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

    /* renamed from: b */
    public final K m45517b(int i) {
        return (K) this.f1750g[i << 1];
    }

    /* renamed from: c */
    public final V m45515c(int i) {
        return (V) this.f1750g[(i << 1) + 1];
    }

    public void clear() {
        int i = this.f1751h;
        if (i > 0) {
            int[] iArr = this.f1749f;
            Object[] objArr = this.f1750g;
            this.f1749f = C0432c.f1714a;
            this.f1750g = C0432c.f1716c;
            this.f1751h = 0;
            m45518a(iArr, objArr, i);
        }
        if (this.f1751h <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(Object obj) {
        return m45521a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m45516b(obj) >= 0;
    }

    /* renamed from: d */
    public V mo37600d(int i) {
        int i2;
        Object[] objArr = this.f1750g;
        int i3 = i << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.f1751h;
        if (i4 <= 1) {
            m45518a(this.f1749f, objArr, i4);
            this.f1749f = C0432c.f1714a;
            this.f1750g = C0432c.f1716c;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            int[] iArr = this.f1749f;
            int i6 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr, i7, iArr, i, i8);
                    Object[] objArr2 = this.f1750g;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f1750g;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i4 > 8) {
                    i6 = i4 + (i4 >> 1);
                }
                m45514e(i6);
                if (i4 != this.f1751h) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f1749f, 0, i);
                    System.arraycopy(objArr, 0, this.f1750g, 0, i3);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr, i10, this.f1749f, i, i11);
                    System.arraycopy(objArr, i10 << 1, this.f1750g, i3, i11 << 1);
                }
            }
            i2 = i5;
        }
        if (i4 == this.f1751h) {
            this.f1751h = i2;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0441g) {
            C0441g c0441g = (C0441g) obj;
            if (size() != c0441g.size()) {
                return false;
            }
            for (int i = 0; i < this.f1751h; i++) {
                try {
                    K m45517b = m45517b(i);
                    V m45515c = m45515c(i);
                    Object obj2 = c0441g.get(m45517b);
                    if (m45515c == null) {
                        if (obj2 != null || !c0441g.containsKey(m45517b)) {
                            return false;
                        }
                    } else if (!m45515c.equals(obj2)) {
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
            for (int i2 = 0; i2 < this.f1751h; i2++) {
                try {
                    K m45517b2 = m45517b(i2);
                    V m45515c2 = m45515c(i2);
                    Object obj3 = map.get(m45517b2);
                    if (m45515c2 == null) {
                        if (obj3 != null || !map.containsKey(m45517b2)) {
                            return false;
                        }
                    } else if (!m45515c2.equals(obj3)) {
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

    public V getOrDefault(Object obj, V v) {
        int m45521a = m45521a(obj);
        return m45521a >= 0 ? (V) this.f1750g[(m45521a << 1) + 1] : v;
    }

    public int hashCode() {
        int[] iArr = this.f1749f;
        Object[] objArr = this.f1750g;
        int i = this.f1751h;
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

    public boolean isEmpty() {
        return this.f1751h <= 0;
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f1751h;
        if (k == null) {
            i2 = m45523a();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m45520a(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f1750g;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        int[] iArr = this.f1749f;
        if (i3 >= iArr.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.f1750g;
            m45514e(i6);
            if (i3 != this.f1751h) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f1749f;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f1750g, 0, objArr2.length);
            }
            m45518a(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f1749f;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f1750g;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f1751h - i5) << 1);
        }
        int i8 = this.f1751h;
        if (i3 == i8) {
            int[] iArr4 = this.f1749f;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f1750g;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f1751h = i8 + 1;
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
        int m45521a = m45521a(obj);
        if (m45521a >= 0) {
            return mo37600d(m45521a);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int m45521a = m45521a(obj);
        if (m45521a >= 0) {
            V m45515c = m45515c(m45521a);
            if (obj2 != m45515c && (obj2 == null || !obj2.equals(m45515c))) {
                return false;
            }
            mo37600d(m45521a);
            return true;
        }
        return false;
    }

    public V replace(K k, V v) {
        int m45521a = m45521a(k);
        if (m45521a >= 0) {
            return mo37602a(m45521a, (int) v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int m45521a = m45521a(k);
        if (m45521a >= 0) {
            V m45515c = m45515c(m45521a);
            if (m45515c != v && (v == null || !v.equals(m45515c))) {
                return false;
            }
            mo37602a(m45521a, (int) v2);
            return true;
        }
        return false;
    }

    public int size() {
        return this.f1751h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1751h * 28);
        sb.append('{');
        for (int i = 0; i < this.f1751h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m45517b = m45517b(i);
            if (m45517b != this) {
                sb.append(m45517b);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m45515c = m45515c(i);
            if (m45515c != this) {
                sb.append(m45515c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
