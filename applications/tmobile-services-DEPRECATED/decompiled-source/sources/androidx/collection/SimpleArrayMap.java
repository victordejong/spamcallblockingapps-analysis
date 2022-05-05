package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/collection/SimpleArrayMap.class */
public class SimpleArrayMap<K, V> {
    @Nullable

    /* renamed from: i */
    static Object[] f1573i;

    /* renamed from: j */
    static int f1574j;
    @Nullable

    /* renamed from: k */
    static Object[] f1575k;

    /* renamed from: l */
    static int f1576l;

    /* renamed from: f */
    int[] f1577f;

    /* renamed from: g */
    Object[] f1578g;

    /* renamed from: h */
    int f1579h;

    public SimpleArrayMap() {
        this.f1577f = ContainerHelpers.f1550a;
        this.f1578g = ContainerHelpers.f1552c;
        this.f1579h = 0;
    }

    public SimpleArrayMap(int i) {
        if (i == 0) {
            this.f1577f = ContainerHelpers.f1550a;
            this.f1578g = ContainerHelpers.f1552c;
        } else {
            m21015a(i);
        }
        this.f1579h = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            m21006l(simpleArrayMap);
        }
    }

    /* renamed from: a */
    private void m21015a(int i) {
        if (i == 8) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (f1575k != null) {
                        Object[] objArr = f1575k;
                        this.f1578g = objArr;
                        f1575k = (Object[]) objArr[0];
                        this.f1577f = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1576l--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (f1573i != null) {
                        Object[] objArr2 = f1573i;
                        this.f1578g = objArr2;
                        f1573i = (Object[]) objArr2[0];
                        this.f1577f = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1574j--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1577f = new int[i];
        this.f1578g = new Object[i << 1];
    }

    /* renamed from: b */
    private static int m21014b(int[] iArr, int i, int i2) {
        try {
            return ContainerHelpers.m21056a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: f */
    private static void m21012f(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (f1576l < 10) {
                        objArr[0] = f1575k;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f1575k = objArr;
                        f1576l++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (f1574j < 10) {
                        objArr[0] = f1573i;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f1573i = objArr;
                        f1574j++;
                    }
                } finally {
                }
            }
        }
    }

    public void clear() {
        int i = this.f1579h;
        if (i > 0) {
            int[] iArr = this.f1577f;
            Object[] objArr = this.f1578g;
            this.f1577f = ContainerHelpers.f1550a;
            this.f1578g = ContainerHelpers.f1552c;
            this.f1579h = 0;
            m21012f(iArr, objArr, i);
        }
        if (this.f1579h > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        return m21010h(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m21008j(obj) >= 0;
    }

    /* renamed from: e */
    public void m21013e(int i) {
        int i2 = this.f1579h;
        int[] iArr = this.f1577f;
        if (iArr.length < i) {
            Object[] objArr = this.f1578g;
            m21015a(i);
            if (this.f1579h > 0) {
                System.arraycopy(iArr, 0, this.f1577f, 0, i2);
                System.arraycopy(objArr, 0, this.f1578g, 0, i2 << 1);
            }
            m21012f(iArr, objArr, i2);
        }
        if (this.f1579h != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int i = 0; i < this.f1579h; i++) {
                try {
                    K k = m21007k(i);
                    V o = m21005o(i);
                    Object obj2 = simpleArrayMap.get(k);
                    if (o == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(k)) {
                            return false;
                        }
                    } else if (!o.equals(obj2)) {
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
            for (int i2 = 0; i2 < this.f1579h; i2++) {
                try {
                    K k2 = m21007k(i2);
                    V o2 = m21005o(i2);
                    Object obj3 = map.get(k2);
                    if (o2 == null) {
                        if (obj3 != null || !map.containsKey(k2)) {
                            return false;
                        }
                    } else if (!o2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: g */
    int m21011g(Object obj, int i) {
        int i2 = this.f1579h;
        if (i2 == 0) {
            return -1;
        }
        int b = m21014b(this.f1577f, i2, i);
        if (b >= 0 && !obj.equals(this.f1578g[b << 1])) {
            int i3 = b + 1;
            while (i3 < i2 && this.f1577f[i3] == i) {
                if (obj.equals(this.f1578g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            while (true) {
                b--;
                if (b < 0 || this.f1577f[b] != i) {
                    break;
                } else if (obj.equals(this.f1578g[b << 1])) {
                    return b;
                }
            }
            return i3 ^ (-1);
        }
        return b;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int h = m21010h(obj);
        if (h >= 0) {
            v = (V) this.f1578g[(h << 1) + 1];
        }
        return v;
    }

    /* renamed from: h */
    public int m21010h(@Nullable Object obj) {
        return obj == null ? m21009i() : m21011g(obj, obj.hashCode());
    }

    public int hashCode() {
        int[] iArr = this.f1577f;
        Object[] objArr = this.f1578g;
        int i = this.f1579h;
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
    int m21009i() {
        int i = this.f1579h;
        if (i == 0) {
            return -1;
        }
        int b = m21014b(this.f1577f, i, 0);
        if (b >= 0 && this.f1578g[b << 1] != null) {
            int i2 = b + 1;
            while (i2 < i && this.f1577f[i2] == 0) {
                if (this.f1578g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            while (true) {
                b--;
                if (b < 0 || this.f1577f[b] != 0) {
                    break;
                } else if (this.f1578g[b << 1] == null) {
                    return b;
                }
            }
            return i2 ^ (-1);
        }
        return b;
    }

    public boolean isEmpty() {
        return this.f1579h <= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public int m21008j(Object obj) {
        int i = this.f1579h * 2;
        Object[] objArr = this.f1578g;
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

    /* renamed from: k */
    public K m21007k(int i) {
        return (K) this.f1578g[i << 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public void m21006l(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i = simpleArrayMap.f1579h;
        m21013e(this.f1579h + i);
        if (this.f1579h != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(simpleArrayMap.m21007k(i2), simpleArrayMap.m21005o(i2));
            }
        } else if (i > 0) {
            System.arraycopy(simpleArrayMap.f1577f, 0, this.f1577f, 0, i);
            System.arraycopy(simpleArrayMap.f1578g, 0, this.f1578g, 0, i << 1);
            this.f1579h = i;
        }
    }

    /* renamed from: m */
    public V mo18659m(int i) {
        Object[] objArr = this.f1578g;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f1579h;
        int i4 = 0;
        if (i3 <= 1) {
            m21012f(this.f1577f, objArr, i3);
            this.f1577f = ContainerHelpers.f1550a;
            this.f1578g = ContainerHelpers.f1552c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f1577f;
            int i6 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.f1577f;
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr2, i7, iArr2, i, i8);
                    Object[] objArr2 = this.f1578g;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i2, i8 << 1);
                }
                Object[] objArr3 = this.f1578g;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i3 > 8) {
                    i6 = i3 + (i3 >> 1);
                }
                int[] iArr3 = this.f1577f;
                Object[] objArr4 = this.f1578g;
                m21015a(i6);
                if (i3 == this.f1579h) {
                    if (i > 0) {
                        System.arraycopy(iArr3, 0, this.f1577f, 0, i);
                        System.arraycopy(objArr4, 0, this.f1578g, 0, i2);
                    }
                    if (i < i5) {
                        int i10 = i + 1;
                        int i11 = i5 - i;
                        System.arraycopy(iArr3, i10, this.f1577f, i, i11);
                        System.arraycopy(objArr4, i10 << 1, this.f1578g, i2, i11 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            }
            i4 = i5;
        }
        if (i3 == this.f1579h) {
            this.f1579h = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: n */
    public V mo18658n(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f1578g;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: o */
    public V m21005o(int i) {
        return (V) this.f1578g[(i << 1) + 1];
    }

    @Nullable
    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f1579h;
        if (k == null) {
            i2 = m21009i();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m21011g(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f1578g;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        if (i3 >= this.f1577f.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f1577f;
            Object[] objArr2 = this.f1578g;
            m21015a(i6);
            if (i3 == this.f1579h) {
                int[] iArr2 = this.f1577f;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f1578g, 0, objArr2.length);
                }
                m21012f(iArr, objArr2, i3);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i5 < i3) {
            int[] iArr3 = this.f1577f;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f1578g;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f1579h - i5) << 1);
        }
        int i8 = this.f1579h;
        if (i3 == i8) {
            int[] iArr4 = this.f1577f;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f1578g;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f1579h = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Nullable
    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        V v3 = v2;
        if (v2 == null) {
            v3 = put(k, v);
        }
        return v3;
    }

    @Nullable
    public V remove(Object obj) {
        int h = m21010h(obj);
        if (h >= 0) {
            return mo18659m(h);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int h = m21010h(obj);
        if (h < 0) {
            return false;
        }
        V o = m21005o(h);
        if (obj2 != o && (obj2 == null || !obj2.equals(o))) {
            return false;
        }
        mo18659m(h);
        return true;
    }

    @Nullable
    public V replace(K k, V v) {
        int h = m21010h(k);
        if (h >= 0) {
            return mo18658n(h, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int h = m21010h(k);
        if (h < 0) {
            return false;
        }
        V o = m21005o(h);
        if (o != v && (v == null || !v.equals(o))) {
            return false;
        }
        mo18658n(h, v2);
        return true;
    }

    public int size() {
        return this.f1579h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1579h * 28);
        sb.append('{');
        for (int i = 0; i < this.f1579h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K k = m21007k(i);
            if (k != this) {
                sb.append(k);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V o = m21005o(i);
            if (o != this) {
                sb.append(o);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
