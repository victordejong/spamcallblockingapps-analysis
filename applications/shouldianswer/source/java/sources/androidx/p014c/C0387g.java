package androidx.p014c;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: androidx.c.g */
/* loaded from: classes-dex2jar.jar:androidx/c/g.class */
public class C0387g<K, V> {

    /* renamed from: b */
    static Object[] f1508b;

    /* renamed from: c */
    static int f1509c;

    /* renamed from: d */
    static Object[] f1510d;

    /* renamed from: e */
    static int f1511e;

    /* renamed from: f */
    int[] f1512f;

    /* renamed from: g */
    Object[] f1513g;

    /* renamed from: h */
    int f1514h;

    public C0387g() {
        this.f1512f = C0378c.f1485a;
        this.f1513g = C0378c.f1487c;
        this.f1514h = 0;
    }

    public C0387g(int i) {
        if (i == 0) {
            this.f1512f = C0378c.f1485a;
            this.f1513g = C0378c.f1487c;
        } else {
            m6807e(i);
        }
        this.f1514h = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0387g(C0387g<K, V> c0387g) {
        this();
        if (c0387g != 0) {
            m6816a((C0387g) c0387g);
        }
    }

    /* renamed from: a */
    private static int m6813a(int[] iArr, int i, int i2) {
        try {
            return C0378c.m6858a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    private static void m6812a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0387g.class) {
                try {
                    if (f1511e < 10) {
                        objArr[0] = f1510d;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f1510d = objArr;
                        f1511e++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0387g.class) {
                try {
                    if (f1509c < 10) {
                        objArr[0] = f1508b;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f1508b = objArr;
                        f1509c++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: e */
    private void m6807e(int i) {
        if (i == 8) {
            synchronized (C0387g.class) {
                try {
                    if (f1510d != null) {
                        Object[] objArr = f1510d;
                        this.f1513g = objArr;
                        f1510d = (Object[]) objArr[0];
                        this.f1512f = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1511e--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0387g.class) {
                try {
                    if (f1508b != null) {
                        Object[] objArr2 = f1508b;
                        this.f1513g = objArr2;
                        f1508b = (Object[]) objArr2[0];
                        this.f1512f = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1509c--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1512f = new int[i];
        this.f1513g = new Object[i << 1];
    }

    /* renamed from: a */
    int m6819a() {
        int i = this.f1514h;
        if (i == 0) {
            return -1;
        }
        int m6813a = m6813a(this.f1512f, i, 0);
        if (m6813a >= 0 && this.f1513g[m6813a << 1] != null) {
            int i2 = m6813a + 1;
            while (i2 < i && this.f1512f[i2] == 0) {
                if (this.f1513g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            while (true) {
                m6813a--;
                if (m6813a < 0 || this.f1512f[m6813a] != 0) {
                    break;
                } else if (this.f1513g[m6813a << 1] == null) {
                    return m6813a;
                }
            }
            return i2 ^ (-1);
        }
        return m6813a;
    }

    /* renamed from: a */
    public int m6815a(Object obj) {
        return obj == null ? m6819a() : m6814a(obj, obj.hashCode());
    }

    /* renamed from: a */
    int m6814a(Object obj, int i) {
        int i2 = this.f1514h;
        if (i2 == 0) {
            return -1;
        }
        int m6813a = m6813a(this.f1512f, i2, i);
        if (m6813a >= 0 && !obj.equals(this.f1513g[m6813a << 1])) {
            int i3 = m6813a + 1;
            while (i3 < i2 && this.f1512f[i3] == i) {
                if (obj.equals(this.f1513g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m6813a - 1; i4 >= 0 && this.f1512f[i4] == i; i4--) {
                if (obj.equals(this.f1513g[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m6813a;
    }

    /* renamed from: a */
    public V m6817a(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f1513g;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: a */
    public void m6818a(int i) {
        int i2 = this.f1514h;
        int[] iArr = this.f1512f;
        if (iArr.length < i) {
            Object[] objArr = this.f1513g;
            m6807e(i);
            if (this.f1514h > 0) {
                System.arraycopy(iArr, 0, this.f1512f, 0, i2);
                System.arraycopy(objArr, 0, this.f1513g, 0, i2 << 1);
            }
            m6812a(iArr, objArr, i2);
        }
        if (this.f1514h == i2) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: a */
    public void m6816a(C0387g<? extends K, ? extends V> c0387g) {
        int i = c0387g.f1514h;
        m6818a(this.f1514h + i);
        if (this.f1514h != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c0387g.m6811b(i2), c0387g.m6809c(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c0387g.f1512f, 0, this.f1512f, 0, i);
            System.arraycopy(c0387g.f1513g, 0, this.f1513g, 0, i << 1);
            this.f1514h = i;
        }
    }

    /* renamed from: b */
    public int m6810b(Object obj) {
        int i = this.f1514h * 2;
        Object[] objArr = this.f1513g;
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
    public K m6811b(int i) {
        return (K) this.f1513g[i << 1];
    }

    /* renamed from: c */
    public V m6809c(int i) {
        return (V) this.f1513g[(i << 1) + 1];
    }

    public void clear() {
        int i = this.f1514h;
        if (i > 0) {
            int[] iArr = this.f1512f;
            Object[] objArr = this.f1513g;
            this.f1512f = C0378c.f1485a;
            this.f1513g = C0378c.f1487c;
            this.f1514h = 0;
            m6812a(iArr, objArr, i);
        }
        if (this.f1514h <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public boolean containsKey(Object obj) {
        return m6815a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m6810b(obj) >= 0;
    }

    /* renamed from: d */
    public V m6808d(int i) {
        int i2;
        Object[] objArr = this.f1513g;
        int i3 = i << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.f1514h;
        if (i4 <= 1) {
            m6812a(this.f1512f, objArr, i4);
            this.f1512f = C0378c.f1485a;
            this.f1513g = C0378c.f1487c;
            i2 = 0;
        } else {
            int i5 = i4 - 1;
            int[] iArr = this.f1512f;
            int i6 = 8;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.f1512f;
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr2, i7, iArr2, i, i8);
                    Object[] objArr2 = this.f1513g;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f1513g;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
                i2 = i5;
            } else {
                if (i4 > 8) {
                    i6 = i4 + (i4 >> 1);
                }
                int[] iArr3 = this.f1512f;
                Object[] objArr4 = this.f1513g;
                m6807e(i6);
                if (i4 != this.f1514h) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f1512f, 0, i);
                    System.arraycopy(objArr4, 0, this.f1513g, 0, i3);
                }
                i2 = i5;
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr3, i10, this.f1512f, i, i11);
                    System.arraycopy(objArr4, i10 << 1, this.f1513g, i3, i11 << 1);
                    i2 = i5;
                }
            }
        }
        if (i4 == this.f1514h) {
            this.f1514h = i2;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0387g) {
            C0387g c0387g = (C0387g) obj;
            if (size() != c0387g.size()) {
                return false;
            }
            for (int i = 0; i < this.f1514h; i++) {
                try {
                    K m6811b = m6811b(i);
                    V m6809c = m6809c(i);
                    Object obj2 = c0387g.get(m6811b);
                    if (m6809c == null) {
                        if (obj2 != null || !c0387g.containsKey(m6811b)) {
                            return false;
                        }
                    } else if (!m6809c.equals(obj2)) {
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
            for (int i2 = 0; i2 < this.f1514h; i2++) {
                try {
                    K m6811b2 = m6811b(i2);
                    V m6809c2 = m6809c(i2);
                    Object obj3 = map.get(m6811b2);
                    if (m6809c2 == null) {
                        if (obj3 != null || !map.containsKey(m6811b2)) {
                            return false;
                        }
                    } else if (!m6809c2.equals(obj3)) {
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
        int m6815a = m6815a(obj);
        if (m6815a >= 0) {
            v = this.f1513g[(m6815a << 1) + 1];
        }
        return v;
    }

    public int hashCode() {
        int[] iArr = this.f1512f;
        Object[] objArr = this.f1513g;
        int i = this.f1514h;
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
        return this.f1514h <= 0;
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f1514h;
        if (k == null) {
            i2 = m6819a();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m6814a(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f1513g;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        if (i3 >= this.f1512f.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f1512f;
            Object[] objArr2 = this.f1513g;
            m6807e(i6);
            if (i3 != this.f1514h) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f1512f;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f1513g, 0, objArr2.length);
            }
            m6812a(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f1512f;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f1513g;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f1514h - i5) << 1);
        }
        int i8 = this.f1514h;
        if (i3 == i8) {
            int[] iArr4 = this.f1512f;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f1513g;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f1514h = i8 + 1;
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
        int m6815a = m6815a(obj);
        if (m6815a >= 0) {
            return m6808d(m6815a);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int m6815a = m6815a(obj);
        if (m6815a >= 0) {
            V m6809c = m6809c(m6815a);
            if (obj2 != m6809c && (obj2 == null || !obj2.equals(m6809c))) {
                return false;
            }
            m6808d(m6815a);
            return true;
        }
        return false;
    }

    public V replace(K k, V v) {
        int m6815a = m6815a(k);
        if (m6815a >= 0) {
            return m6817a(m6815a, (int) v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int m6815a = m6815a(k);
        if (m6815a >= 0) {
            V m6809c = m6809c(m6815a);
            if (m6809c != v && (v == null || !v.equals(m6809c))) {
                return false;
            }
            m6817a(m6815a, (int) v2);
            return true;
        }
        return false;
    }

    public int size() {
        return this.f1514h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1514h * 28);
        sb.append('{');
        for (int i = 0; i < this.f1514h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m6811b = m6811b(i);
            if (m6811b != this) {
                sb.append(m6811b);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m6809c = m6809c(i);
            if (m6809c != this) {
                sb.append(m6809c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
