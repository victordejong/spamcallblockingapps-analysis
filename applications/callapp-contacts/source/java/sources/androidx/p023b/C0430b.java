package androidx.p023b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.b.b */
/* loaded from: classes-dex2jar.jar:androidx/b/b.class */
public final class C0430b<E> implements Collection<E>, Set<E> {

    /* renamed from: c */
    private static final int[] f1703c = new int[0];

    /* renamed from: d */
    private static final Object[] f1704d = new Object[0];

    /* renamed from: e */
    private static Object[] f1705e;

    /* renamed from: f */
    private static int f1706f;

    /* renamed from: g */
    private static Object[] f1707g;

    /* renamed from: h */
    private static int f1708h;

    /* renamed from: a */
    public Object[] f1709a;

    /* renamed from: b */
    int f1710b;

    /* renamed from: i */
    private int[] f1711i;

    /* renamed from: j */
    private AbstractC0435f<E, E> f1712j;

    public C0430b() {
        this(0);
    }

    public C0430b(int i) {
        if (i == 0) {
            this.f1711i = f1703c;
            this.f1709a = f1704d;
        } else {
            m45560b(i);
        }
        this.f1710b = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0430b(C0430b<E> c0430b) {
        this();
        if (c0430b != null) {
            int i = c0430b.f1710b;
            m45559c(this.f1710b + i);
            if (this.f1710b != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    add(c0430b.f1709a[i2]);
                }
            } else if (i > 0) {
                System.arraycopy(c0430b.f1711i, 0, this.f1711i, 0, i);
                System.arraycopy(c0430b.f1709a, 0, this.f1709a, 0, i);
                this.f1710b = i;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0430b(Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    /* renamed from: a */
    private int m45565a() {
        int i = this.f1710b;
        if (i == 0) {
            return -1;
        }
        int m45556a = C0432c.m45556a(this.f1711i, i, 0);
        if (m45556a >= 0 && this.f1709a[m45556a] != null) {
            int i2 = m45556a + 1;
            while (i2 < i && this.f1711i[i2] == 0) {
                if (this.f1709a[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m45556a - 1; i3 >= 0 && this.f1711i[i3] == 0; i3--) {
                if (this.f1709a[i3] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return m45556a;
    }

    /* renamed from: a */
    private int m45562a(Object obj, int i) {
        int i2 = this.f1710b;
        if (i2 == 0) {
            return -1;
        }
        int m45556a = C0432c.m45556a(this.f1711i, i2, i);
        if (m45556a >= 0 && !obj.equals(this.f1709a[m45556a])) {
            int i3 = m45556a + 1;
            while (i3 < i2 && this.f1711i[i3] == i) {
                if (obj.equals(this.f1709a[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m45556a - 1; i4 >= 0 && this.f1711i[i4] == i; i4--) {
                if (obj.equals(this.f1709a[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m45556a;
    }

    /* renamed from: a */
    private static void m45561a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0430b.class) {
                try {
                    if (f1708h < 10) {
                        objArr[0] = f1707g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f1707g = objArr;
                        f1708h++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C0430b.class) {
                try {
                    if (f1706f < 10) {
                        objArr[0] = f1705e;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f1705e = objArr;
                        f1706f++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: b */
    private void m45560b(int i) {
        if (i == 8) {
            synchronized (C0430b.class) {
                try {
                    Object[] objArr = f1707g;
                    if (objArr != null) {
                        this.f1709a = objArr;
                        f1707g = (Object[]) objArr[0];
                        this.f1711i = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1708h--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0430b.class) {
                try {
                    Object[] objArr2 = f1705e;
                    if (objArr2 != null) {
                        this.f1709a = objArr2;
                        f1705e = (Object[]) objArr2[0];
                        this.f1711i = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1706f--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1711i = new int[i];
        this.f1709a = new Object[i];
    }

    /* renamed from: c */
    private void m45559c(int i) {
        int[] iArr = this.f1711i;
        if (iArr.length < i) {
            Object[] objArr = this.f1709a;
            m45560b(i);
            int i2 = this.f1710b;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f1711i, 0, i2);
                System.arraycopy(objArr, 0, this.f1709a, 0, this.f1710b);
            }
            m45561a(iArr, objArr, this.f1710b);
        }
    }

    /* renamed from: a */
    public final int m45563a(Object obj) {
        return obj == null ? m45565a() : m45562a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public final E m45564a(int i) {
        Object[] objArr = this.f1709a;
        E e = (E) objArr[i];
        int i2 = this.f1710b;
        if (i2 <= 1) {
            m45561a(this.f1711i, objArr, i2);
            this.f1711i = f1703c;
            this.f1709a = f1704d;
            this.f1710b = 0;
        } else {
            int[] iArr = this.f1711i;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = i2 - 1;
                this.f1710b = i4;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, iArr, i, i4 - i);
                    Object[] objArr2 = this.f1709a;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f1710b - i);
                }
                this.f1709a[this.f1710b] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                m45560b(i3);
                this.f1710b--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f1711i, 0, i);
                    System.arraycopy(objArr, 0, this.f1709a, 0, i);
                }
                int i6 = this.f1710b;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, this.f1711i, i, i6 - i);
                    System.arraycopy(objArr, i7, this.f1709a, i, this.f1710b - i);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m45565a();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m45562a(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f1710b;
        int[] iArr = this.f1711i;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f1709a;
            m45560b(i5);
            int[] iArr2 = this.f1711i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1709a, 0, objArr.length);
            }
            m45561a(iArr, objArr, this.f1710b);
        }
        int i6 = this.f1710b;
        if (i3 < i6) {
            int[] iArr3 = this.f1711i;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f1709a;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f1710b - i3);
        }
        this.f1711i[i3] = i;
        this.f1709a[i3] = e;
        this.f1710b++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        m45559c(this.f1710b + collection.size());
        Iterator<? extends E> it2 = collection.iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                z = z2 | add(it2.next());
            } else {
                return z2;
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.f1710b;
        if (i != 0) {
            m45561a(this.f1711i, this.f1709a, i);
            this.f1711i = f1703c;
            this.f1709a = f1704d;
            this.f1710b = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return m45563a(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        for (int i = 0; i < this.f1710b; i++) {
            try {
                if (!set.contains(this.f1709a[i])) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f1711i;
        int i = this.f1710b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f1710b <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        if (this.f1712j == null) {
            this.f1712j = new AbstractC0435f<E, E>() { // from class: androidx.b.b.1
                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final int mo45537a() {
                    return C0430b.this.f1710b;
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final int mo45533a(Object obj) {
                    return C0430b.this.m45563a(obj);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final Object mo45535a(int i, int i2) {
                    return C0430b.this.f1709a[i];
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final E mo45534a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final void mo45536a(int i) {
                    C0430b.this.m45564a(i);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final void mo45532a(E e, E e2) {
                    C0430b.this.add(e);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: b */
                protected final int mo45526b(Object obj) {
                    return C0430b.this.m45563a(obj);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: b */
                protected final Map<E, E> mo45528b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: c */
                protected final void mo45525c() {
                    C0430b.this.clear();
                }
            };
        }
        return this.f1712j.m45524d().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int m45563a = m45563a(obj);
        if (m45563a >= 0) {
            m45564a(m45563a);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                z = z2 | remove(it2.next());
            } else {
                return z2;
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f1710b - 1; i >= 0; i--) {
            if (!collection.contains(this.f1709a[i])) {
                m45564a(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f1710b;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i = this.f1710b;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f1709a, 0, objArr, 0, i);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f1710b) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1710b);
        }
        System.arraycopy(this.f1709a, 0, tArr2, 0, this.f1710b);
        int length = tArr2.length;
        int i = this.f1710b;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1710b * 14);
        sb.append('{');
        for (int i = 0; i < this.f1710b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f1709a[i];
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
