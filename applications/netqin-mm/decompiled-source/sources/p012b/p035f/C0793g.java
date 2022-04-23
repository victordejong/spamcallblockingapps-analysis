package p012b.p035f;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: b.f.g */
/* loaded from: classes-dex2jar.jar:b/f/g.class */
public class C0793g<K, V> {

    /* renamed from: d */
    public static Object[] f3703d;

    /* renamed from: e */
    public static int f3704e;

    /* renamed from: f */
    public static Object[] f3705f;

    /* renamed from: g */
    public static int f3706g;

    /* renamed from: a */
    public int[] f3707a;

    /* renamed from: b */
    public Object[] f3708b;

    /* renamed from: c */
    public int f3709c;

    public C0793g() {
        this.f3707a = C0784c.f3672a;
        this.f3708b = C0784c.f3674c;
        this.f3709c = 0;
    }

    public C0793g(int i) {
        if (i == 0) {
            this.f3707a = C0784c.f3672a;
            this.f3708b = C0784c.f3674c;
        } else {
            m36022a(i);
        }
        this.f3709c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0793g(C0793g<K, V> gVar) {
        this();
        if (gVar != 0) {
            m36020a((C0793g) gVar);
        }
    }

    /* renamed from: a */
    public static int m36017a(int[] iArr, int i, int i2) {
        try {
            return C0784c.m36060a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    public static void m36016a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0793g.class) {
                try {
                    if (f3706g < 10) {
                        objArr[0] = f3705f;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f3705f = objArr;
                        f3706g++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C0793g.class) {
                try {
                    if (f3704e < 10) {
                        objArr[0] = f3703d;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f3703d = objArr;
                        f3704e++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public int m36023a() {
        int i = this.f3709c;
        if (i == 0) {
            return -1;
        }
        int a = m36017a(this.f3707a, i, 0);
        if (a >= 0 && this.f3708b[a << 1] != null) {
            int i2 = a + 1;
            while (i2 < i && this.f3707a[i2] == 0) {
                if (this.f3708b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            while (true) {
                a--;
                if (a < 0 || this.f3707a[a] != 0) {
                    break;
                } else if (this.f3708b[a << 1] == null) {
                    return a;
                }
            }
            return i2 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    public int m36019a(Object obj) {
        return obj == null ? m36023a() : m36018a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public int m36018a(Object obj, int i) {
        int i2 = this.f3709c;
        if (i2 == 0) {
            return -1;
        }
        int a = m36017a(this.f3707a, i2, i);
        if (a >= 0 && !obj.equals(this.f3708b[a << 1])) {
            int i3 = a + 1;
            while (i3 < i2 && this.f3707a[i3] == i) {
                if (obj.equals(this.f3708b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a - 1; i4 >= 0 && this.f3707a[i4] == i; i4--) {
                if (obj.equals(this.f3708b[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return a;
    }

    /* renamed from: a */
    public V m36021a(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f3708b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: a */
    public final void m36022a(int i) {
        if (i == 8) {
            synchronized (C0793g.class) {
                try {
                    if (f3705f != null) {
                        Object[] objArr = f3705f;
                        this.f3708b = objArr;
                        f3705f = (Object[]) objArr[0];
                        this.f3707a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f3706g--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0793g.class) {
                try {
                    if (f3703d != null) {
                        Object[] objArr2 = f3703d;
                        this.f3708b = objArr2;
                        f3703d = (Object[]) objArr2[0];
                        this.f3707a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f3704e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f3707a = new int[i];
        this.f3708b = new Object[i << 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m36020a(C0793g<? extends K, ? extends V> gVar) {
        int i = gVar.f3709c;
        m36015b(this.f3709c + i);
        if (this.f3709c != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(gVar.m36013c(i2), gVar.m36011e(i2));
            }
        } else if (i > 0) {
            System.arraycopy(gVar.f3707a, 0, this.f3707a, 0, i);
            System.arraycopy(gVar.f3708b, 0, this.f3708b, 0, i << 1);
            this.f3709c = i;
        }
    }

    /* renamed from: b */
    public int m36014b(Object obj) {
        int i = this.f3709c * 2;
        Object[] objArr = this.f3708b;
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
    public void m36015b(int i) {
        int i2 = this.f3709c;
        int[] iArr = this.f3707a;
        if (iArr.length < i) {
            Object[] objArr = this.f3708b;
            m36022a(i);
            if (this.f3709c > 0) {
                System.arraycopy(iArr, 0, this.f3707a, 0, i2);
                System.arraycopy(objArr, 0, this.f3708b, 0, i2 << 1);
            }
            m36016a(iArr, objArr, i2);
        }
        if (this.f3709c != i2) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: c */
    public K m36013c(int i) {
        return (K) this.f3708b[i << 1];
    }

    public void clear() {
        int i = this.f3709c;
        if (i > 0) {
            int[] iArr = this.f3707a;
            Object[] objArr = this.f3708b;
            this.f3707a = C0784c.f3672a;
            this.f3708b = C0784c.f3674c;
            this.f3709c = 0;
            m36016a(iArr, objArr, i);
        }
        if (this.f3709c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return m36019a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m36014b(obj) >= 0;
    }

    /* renamed from: d */
    public V m36012d(int i) {
        Object[] objArr = this.f3708b;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f3709c;
        int i4 = 0;
        if (i3 <= 1) {
            m36016a(this.f3707a, objArr, i3);
            this.f3707a = C0784c.f3672a;
            this.f3708b = C0784c.f3674c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f3707a;
            int i6 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.f3707a;
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr2, i7, iArr2, i, i8);
                    Object[] objArr2 = this.f3708b;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i2, i8 << 1);
                }
                Object[] objArr3 = this.f3708b;
                int i9 = i5 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                if (i3 > 8) {
                    i6 = i3 + (i3 >> 1);
                }
                int[] iArr3 = this.f3707a;
                Object[] objArr4 = this.f3708b;
                m36022a(i6);
                if (i3 == this.f3709c) {
                    if (i > 0) {
                        System.arraycopy(iArr3, 0, this.f3707a, 0, i);
                        System.arraycopy(objArr4, 0, this.f3708b, 0, i2);
                    }
                    if (i < i5) {
                        int i10 = i + 1;
                        int i11 = i5 - i;
                        System.arraycopy(iArr3, i10, this.f3707a, i, i11);
                        System.arraycopy(objArr4, i10 << 1, this.f3708b, i2, i11 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            }
            i4 = i5;
        }
        if (i3 == this.f3709c) {
            this.f3709c = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: e */
    public V m36011e(int i) {
        return (V) this.f3708b[(i << 1) + 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0793g) {
            C0793g gVar = (C0793g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i = 0; i < this.f3709c; i++) {
                try {
                    K c = m36013c(i);
                    V e = m36011e(i);
                    Object obj2 = gVar.get(c);
                    if (e == null) {
                        if (obj2 != null || !gVar.containsKey(c)) {
                            return false;
                        }
                    } else if (!e.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e2) {
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
            for (int i2 = 0; i2 < this.f3709c; i2++) {
                try {
                    K c2 = m36013c(i2);
                    V e3 = m36011e(i2);
                    Object obj3 = map.get(c2);
                    if (e3 == null) {
                        if (obj3 != null || !map.containsKey(c2)) {
                            return false;
                        }
                    } else if (!e3.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException e4) {
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
        int a = m36019a(obj);
        if (a >= 0) {
            v = (V) this.f3708b[(a << 1) + 1];
        }
        return v;
    }

    public int hashCode() {
        int[] iArr = this.f3707a;
        Object[] objArr = this.f3708b;
        int i = this.f3709c;
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
        return this.f3709c <= 0;
    }

    public V put(K k, V v) {
        int i;
        int i2;
        int i3 = this.f3709c;
        if (k == null) {
            i2 = m36023a();
            i = 0;
        } else {
            i = k.hashCode();
            i2 = m36018a(k, i);
        }
        if (i2 >= 0) {
            int i4 = (i2 << 1) + 1;
            Object[] objArr = this.f3708b;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = i2 ^ (-1);
        if (i3 >= this.f3707a.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f3707a;
            Object[] objArr2 = this.f3708b;
            m36022a(i6);
            if (i3 == this.f3709c) {
                int[] iArr2 = this.f3707a;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f3708b, 0, objArr2.length);
                }
                m36016a(iArr, objArr2, i3);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i5 < i3) {
            int[] iArr3 = this.f3707a;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f3708b;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f3709c - i5) << 1);
        }
        int i8 = this.f3709c;
        if (i3 == i8) {
            int[] iArr4 = this.f3707a;
            if (i5 < iArr4.length) {
                iArr4[i5] = i;
                Object[] objArr4 = this.f3708b;
                int i9 = i5 << 1;
                objArr4[i9] = k;
                objArr4[i9 + 1] = v;
                this.f3709c = i8 + 1;
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
        int a = m36019a(obj);
        if (a >= 0) {
            return m36012d(a);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int a = m36019a(obj);
        if (a < 0) {
            return false;
        }
        V e = m36011e(a);
        if (obj2 != e && (obj2 == null || !obj2.equals(e))) {
            return false;
        }
        m36012d(a);
        return true;
    }

    public V replace(K k, V v) {
        int a = m36019a(k);
        if (a >= 0) {
            return m36021a(a, (int) v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int a = m36019a(k);
        if (a < 0) {
            return false;
        }
        V e = m36011e(a);
        if (e != v && (v == null || !v.equals(e))) {
            return false;
        }
        m36021a(a, (int) v2);
        return true;
    }

    public int size() {
        return this.f3709c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3709c * 28);
        sb.append('{');
        for (int i = 0; i < this.f3709c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K c = m36013c(i);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V e = m36011e(i);
            if (e != this) {
                sb.append(e);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
