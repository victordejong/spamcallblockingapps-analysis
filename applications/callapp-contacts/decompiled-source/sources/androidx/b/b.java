package androidx.b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/b/b.class */
public final class b<E> implements Collection<E>, Set<E> {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f1158c = new int[0];

    /* renamed from: d  reason: collision with root package name */
    private static final Object[] f1159d = new Object[0];
    private static Object[] e;
    private static int f;
    private static Object[] g;
    private static int h;

    /* renamed from: a  reason: collision with root package name */
    public Object[] f1160a;

    /* renamed from: b  reason: collision with root package name */
    int f1161b;
    private int[] i;
    private f<E, E> j;

    public b() {
        this(0);
    }

    public b(int i) {
        if (i == 0) {
            this.i = f1158c;
            this.f1160a = f1159d;
        } else {
            b(i);
        }
        this.f1161b = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(b<E> bVar) {
        this();
        if (bVar != null) {
            int i = bVar.f1161b;
            c(this.f1161b + i);
            if (this.f1161b != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    add(bVar.f1160a[i2]);
                }
            } else if (i > 0) {
                System.arraycopy(bVar.i, 0, this.i, 0, i);
                System.arraycopy(bVar.f1160a, 0, this.f1160a, 0, i);
                this.f1161b = i;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    private int a() {
        int i = this.f1161b;
        if (i == 0) {
            return -1;
        }
        int a2 = c.a(this.i, i, 0);
        if (a2 >= 0 && this.f1160a[a2] != null) {
            int i2 = a2 + 1;
            while (i2 < i && this.i[i2] == 0) {
                if (this.f1160a[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a2 - 1; i3 >= 0 && this.i[i3] == 0; i3--) {
                if (this.f1160a[i3] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return a2;
    }

    private int a(Object obj, int i) {
        int i2 = this.f1161b;
        if (i2 == 0) {
            return -1;
        }
        int a2 = c.a(this.i, i2, i);
        if (a2 >= 0 && !obj.equals(this.f1160a[a2])) {
            int i3 = a2 + 1;
            while (i3 < i2 && this.i[i3] == i) {
                if (obj.equals(this.f1160a[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a2 - 1; i4 >= 0 && this.i[i4] == i; i4--) {
                if (obj.equals(this.f1160a[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return a2;
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                try {
                    if (h < 10) {
                        objArr[0] = g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        g = objArr;
                        h++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (b.class) {
                try {
                    if (f < 10) {
                        objArr[0] = e;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        e = objArr;
                        f++;
                    }
                } finally {
                }
            }
        }
    }

    private void b(int i) {
        if (i == 8) {
            synchronized (b.class) {
                try {
                    Object[] objArr = g;
                    if (objArr != null) {
                        this.f1160a = objArr;
                        g = (Object[]) objArr[0];
                        this.i = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        h--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (b.class) {
                try {
                    Object[] objArr2 = e;
                    if (objArr2 != null) {
                        this.f1160a = objArr2;
                        e = (Object[]) objArr2[0];
                        this.i = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.i = new int[i];
        this.f1160a = new Object[i];
    }

    private void c(int i) {
        int[] iArr = this.i;
        if (iArr.length < i) {
            Object[] objArr = this.f1160a;
            b(i);
            int i2 = this.f1161b;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.i, 0, i2);
                System.arraycopy(objArr, 0, this.f1160a, 0, this.f1161b);
            }
            a(iArr, objArr, this.f1161b);
        }
    }

    public final int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public final E a(int i) {
        Object[] objArr = this.f1160a;
        E e2 = (E) objArr[i];
        int i2 = this.f1161b;
        if (i2 <= 1) {
            a(this.i, objArr, i2);
            this.i = f1158c;
            this.f1160a = f1159d;
            this.f1161b = 0;
        } else {
            int[] iArr = this.i;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = i2 - 1;
                this.f1161b = i4;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, iArr, i, i4 - i);
                    Object[] objArr2 = this.f1160a;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f1161b - i);
                }
                this.f1160a[this.f1161b] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                b(i3);
                this.f1161b--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.i, 0, i);
                    System.arraycopy(objArr, 0, this.f1160a, 0, i);
                }
                int i6 = this.f1161b;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, this.i, i, i6 - i);
                    System.arraycopy(objArr, i7, this.f1160a, i, this.f1161b - i);
                }
            }
        }
        return e2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(E e2) {
        int i;
        int i2;
        if (e2 == null) {
            i2 = a();
            i = 0;
        } else {
            i = e2.hashCode();
            i2 = a(e2, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f1161b;
        int[] iArr = this.i;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f1160a;
            b(i5);
            int[] iArr2 = this.i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1160a, 0, objArr.length);
            }
            a(iArr, objArr, this.f1161b);
        }
        int i6 = this.f1161b;
        if (i3 < i6) {
            int[] iArr3 = this.i;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f1160a;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f1161b - i3);
        }
        this.i[i3] = i;
        this.f1160a[i3] = e2;
        this.f1161b++;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        c(this.f1161b + collection.size());
        Iterator<? extends E> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= add(it2.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.f1161b;
        if (i != 0) {
            a(this.i, this.f1160a, i);
            this.i = f1158c;
            this.f1160a = f1159d;
            this.f1161b = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return a(obj) >= 0;
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
        for (int i = 0; i < this.f1161b; i++) {
            try {
                if (!set.contains(this.f1160a[i])) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e2) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.i;
        int i = this.f1161b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f1161b <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        if (this.j == null) {
            this.j = new f<E, E>() { // from class: androidx.b.b.1
                @Override // androidx.b.f
                protected final int a() {
                    return b.this.f1161b;
                }

                @Override // androidx.b.f
                protected final int a(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.b.f
                protected final Object a(int i, int i2) {
                    return b.this.f1160a[i];
                }

                @Override // androidx.b.f
                protected final E a(int i, E e2) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.b.f
                protected final void a(int i) {
                    b.this.a(i);
                }

                @Override // androidx.b.f
                protected final void a(E e2, E e3) {
                    b.this.add(e2);
                }

                @Override // androidx.b.f
                protected final int b(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.b.f
                protected final Map<E, E> b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.b.f
                protected final void c() {
                    b.this.clear();
                }
            };
        }
        return this.j.d().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int a2 = a(obj);
        if (a2 < 0) {
            return false;
        }
        a(a2);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= remove(it2.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f1161b - 1; i >= 0; i--) {
            if (!collection.contains(this.f1160a[i])) {
                a(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f1161b;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i = this.f1161b;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f1160a, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f1161b) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1161b));
        }
        System.arraycopy(this.f1160a, 0, tArr2, 0, this.f1161b);
        int length = tArr2.length;
        int i = this.f1161b;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1161b * 14);
        sb.append('{');
        for (int i = 0; i < this.f1161b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f1160a[i];
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
