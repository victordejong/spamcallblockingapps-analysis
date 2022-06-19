package p1727n3.p1788g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p1727n3.p1788g.AbstractC26181g;
/* renamed from: n3.g.c */
/* loaded from: classes-dex2jar.jar:n3/g/c.class */
public final class C26177c<E> implements Collection<E>, Set<E> {

    /* renamed from: e */
    public static final int[] f72986e = new int[0];

    /* renamed from: f */
    public static final Object[] f72987f = new Object[0];

    /* renamed from: g */
    public static Object[] f72988g;

    /* renamed from: h */
    public static int f72989h;

    /* renamed from: i */
    public static Object[] f72990i;

    /* renamed from: j */
    public static int f72991j;

    /* renamed from: a */
    public int[] f72992a;

    /* renamed from: b */
    public Object[] f72993b;

    /* renamed from: c */
    public int f72994c;

    /* renamed from: d */
    public AbstractC26181g<E, E> f72995d;

    public C26177c() {
        this(0);
    }

    public C26177c(int i) {
        if (i == 0) {
            this.f72992a = f72986e;
            this.f72993b = f72987f;
        } else {
            m2620a(i);
        }
        this.f72994c = 0;
    }

    /* renamed from: b */
    public static void m2619b(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C26177c.class) {
                try {
                    if (f72991j < 10) {
                        objArr[0] = f72990i;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f72990i = objArr;
                        f72991j++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C26177c.class) {
                try {
                    if (f72989h < 10) {
                        objArr[0] = f72988g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f72988g = objArr;
                        f72989h++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public final void m2620a(int i) {
        if (i == 8) {
            synchronized (C26177c.class) {
                try {
                    Object[] objArr = f72990i;
                    if (objArr != null) {
                        this.f72993b = objArr;
                        f72990i = (Object[]) objArr[0];
                        this.f72992a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f72991j--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C26177c.class) {
                try {
                    Object[] objArr2 = f72988g;
                    if (objArr2 != null) {
                        this.f72993b = objArr2;
                        f72988g = (Object[]) objArr2[0];
                        this.f72992a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f72989h--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f72992a = new int[i];
        this.f72993b = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m2617d();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m2618c(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f72994c;
        int[] iArr = this.f72992a;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f72993b;
            m2620a(i5);
            int[] iArr2 = this.f72992a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f72993b, 0, objArr.length);
            }
            m2619b(iArr, objArr, this.f72994c);
        }
        int i6 = this.f72994c;
        if (i3 < i6) {
            int[] iArr3 = this.f72992a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f72993b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f72994c - i3);
        }
        this.f72992a[i3] = i;
        this.f72993b[i3] = e;
        this.f72994c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.f72994c;
        int[] iArr = this.f72992a;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f72993b;
            m2620a(size);
            int i = this.f72994c;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f72992a, 0, i);
                System.arraycopy(objArr, 0, this.f72993b, 0, this.f72994c);
            }
            m2619b(iArr, objArr, this.f72994c);
        }
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    /* renamed from: c */
    public final int m2618c(Object obj, int i) {
        int i2 = this.f72994c;
        if (i2 == 0) {
            return -1;
        }
        int m2615a = C26178d.m2615a(this.f72992a, i2, i);
        if (m2615a >= 0 && !obj.equals(this.f72993b[m2615a])) {
            int i3 = m2615a + 1;
            while (i3 < i2 && this.f72992a[i3] == i) {
                if (obj.equals(this.f72993b[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m2615a - 1; i4 >= 0 && this.f72992a[i4] == i; i4--) {
                if (obj.equals(this.f72993b[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m2615a;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f72994c;
        if (i != 0) {
            m2619b(this.f72992a, this.f72993b, i);
            this.f72992a = f72986e;
            this.f72993b = f72987f;
            this.f72994c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public final int m2617d() {
        int i = this.f72994c;
        if (i == 0) {
            return -1;
        }
        int m2615a = C26178d.m2615a(this.f72992a, i, 0);
        if (m2615a >= 0 && this.f72993b[m2615a] != null) {
            int i2 = m2615a + 1;
            while (i2 < i && this.f72992a[i2] == 0) {
                if (this.f72993b[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m2615a - 1; i3 >= 0 && this.f72992a[i3] == 0; i3--) {
                if (this.f72993b[i3] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return m2615a;
    }

    /* renamed from: e */
    public E m2616e(int i) {
        Object[] objArr = this.f72993b;
        E e = (E) objArr[i];
        int i2 = this.f72994c;
        if (i2 <= 1) {
            m2619b(this.f72992a, objArr, i2);
            this.f72992a = f72986e;
            this.f72993b = f72987f;
            this.f72994c = 0;
        } else {
            int[] iArr = this.f72992a;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = i2 - 1;
                this.f72994c = i4;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, iArr, i, i4 - i);
                    Object[] objArr2 = this.f72993b;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f72994c - i);
                }
                this.f72993b[this.f72994c] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                m2620a(i3);
                this.f72994c--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f72992a, 0, i);
                    System.arraycopy(objArr, 0, this.f72993b, 0, i);
                }
                int i6 = this.f72994c;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, this.f72992a, i, i6 - i);
                    System.arraycopy(objArr, i7, this.f72993b, i, this.f72994c - i);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.f72994c != set.size()) {
            return false;
        }
        for (int i = 0; i < this.f72994c; i++) {
            try {
                if (!set.contains(this.f72993b[i])) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f72992a;
        int i = this.f72994c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? m2617d() : m2618c(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f72994c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        if (this.f72995d == null) {
            this.f72995d = new C26176b(this);
        }
        AbstractC26181g<E, E> abstractC26181g = this.f72995d;
        if (abstractC26181g.f73005b == null) {
            abstractC26181g.f73005b = new AbstractC26181g.C26184c();
        }
        return abstractC26181g.f73005b.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m2616e(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = z2 | remove(it.next());
            } else {
                return z2;
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f72994c - 1; i >= 0; i--) {
            if (!collection.contains(this.f72993b[i])) {
                m2616e(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f72994c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f72994c;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f72993b, 0, objArr, 0, i);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f72994c) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f72994c);
        }
        System.arraycopy(this.f72993b, 0, tArr2, 0, this.f72994c);
        int length = tArr2.length;
        int i = this.f72994c;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f72994c * 14);
        sb.append('{');
        for (int i = 0; i < this.f72994c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f72993b[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
