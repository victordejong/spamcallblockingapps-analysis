package androidx.p014c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.c.b */
/* loaded from: classes-dex2jar.jar:androidx/c/b.class */
public final class C0376b<E> implements Collection<E>, Set<E> {

    /* renamed from: c */
    private static final int[] f1474c = new int[0];

    /* renamed from: d */
    private static final Object[] f1475d = new Object[0];

    /* renamed from: e */
    private static Object[] f1476e;

    /* renamed from: f */
    private static int f1477f;

    /* renamed from: g */
    private static Object[] f1478g;

    /* renamed from: h */
    private static int f1479h;

    /* renamed from: a */
    Object[] f1480a;

    /* renamed from: b */
    int f1481b;

    /* renamed from: i */
    private int[] f1482i;

    /* renamed from: j */
    private AbstractC0381f<E, E> f1483j;

    public C0376b() {
        this(0);
    }

    public C0376b(int i) {
        if (i == 0) {
            this.f1482i = f1474c;
            this.f1480a = f1475d;
        } else {
            m6861d(i);
        }
        this.f1481b = 0;
    }

    /* renamed from: a */
    private int m6869a() {
        int i = this.f1481b;
        if (i == 0) {
            return -1;
        }
        int m6858a = C0378c.m6858a(this.f1482i, i, 0);
        if (m6858a >= 0 && this.f1480a[m6858a] != null) {
            int i2 = m6858a + 1;
            while (i2 < i && this.f1482i[i2] == 0) {
                if (this.f1480a[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m6858a - 1; i3 >= 0 && this.f1482i[i3] == 0; i3--) {
                if (this.f1480a[i3] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return m6858a;
    }

    /* renamed from: a */
    private int m6866a(Object obj, int i) {
        int i2 = this.f1481b;
        if (i2 == 0) {
            return -1;
        }
        int m6858a = C0378c.m6858a(this.f1482i, i2, i);
        if (m6858a >= 0 && !obj.equals(this.f1480a[m6858a])) {
            int i3 = m6858a + 1;
            while (i3 < i2 && this.f1482i[i3] == i) {
                if (obj.equals(this.f1480a[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m6858a - 1; i4 >= 0 && this.f1482i[i4] == i; i4--) {
                if (obj.equals(this.f1480a[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m6858a;
    }

    /* renamed from: a */
    private static void m6865a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0376b.class) {
                try {
                    if (f1479h < 10) {
                        objArr[0] = f1478g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f1478g = objArr;
                        f1479h++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C0376b.class) {
                try {
                    if (f1477f < 10) {
                        objArr[0] = f1476e;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f1476e = objArr;
                        f1477f++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: b */
    private AbstractC0381f<E, E> m6864b() {
        if (this.f1483j == null) {
            this.f1483j = new AbstractC0381f<E, E>() { // from class: androidx.c.b.1
                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected int mo6839a() {
                    return C0376b.this.f1481b;
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected int mo6835a(Object obj) {
                    return C0376b.this.m6867a(obj);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected Object mo6837a(int i, int i2) {
                    return C0376b.this.f1480a[i];
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected E mo6836a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected void mo6838a(int i) {
                    C0376b.this.m6862c(i);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected void mo6834a(E e, E e2) {
                    C0376b.this.add(e);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: b */
                protected int mo6828b(Object obj) {
                    return C0376b.this.m6867a(obj);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: b */
                protected Map<E, E> mo6830b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: c */
                protected void mo6826c() {
                    C0376b.this.clear();
                }
            };
        }
        return this.f1483j;
    }

    /* renamed from: d */
    private void m6861d(int i) {
        if (i == 8) {
            synchronized (C0376b.class) {
                try {
                    if (f1478g != null) {
                        Object[] objArr = f1478g;
                        this.f1480a = objArr;
                        f1478g = (Object[]) objArr[0];
                        this.f1482i = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1479h--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0376b.class) {
                try {
                    if (f1476e != null) {
                        Object[] objArr2 = f1476e;
                        this.f1480a = objArr2;
                        f1476e = (Object[]) objArr2[0];
                        this.f1482i = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1477f--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1482i = new int[i];
        this.f1480a = new Object[i];
    }

    /* renamed from: a */
    public int m6867a(Object obj) {
        return obj == null ? m6869a() : m6866a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public void m6868a(int i) {
        int[] iArr = this.f1482i;
        if (iArr.length < i) {
            Object[] objArr = this.f1480a;
            m6861d(i);
            int i2 = this.f1481b;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f1482i, 0, i2);
                System.arraycopy(objArr, 0, this.f1480a, 0, this.f1481b);
            }
            m6865a(iArr, objArr, this.f1481b);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m6869a();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m6866a(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f1481b;
        if (i4 >= this.f1482i.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f1482i;
            Object[] objArr = this.f1480a;
            m6861d(i5);
            int[] iArr2 = this.f1482i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1480a, 0, objArr.length);
            }
            m6865a(iArr, objArr, this.f1481b);
        }
        int i6 = this.f1481b;
        if (i3 < i6) {
            int[] iArr3 = this.f1482i;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f1480a;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f1481b - i3);
        }
        this.f1482i[i3] = i;
        this.f1480a[i3] = e;
        this.f1481b++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m6868a(this.f1481b + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = z2 | add(it.next());
            } else {
                return z2;
            }
        }
    }

    /* renamed from: b */
    public E m6863b(int i) {
        return (E) this.f1480a[i];
    }

    /* renamed from: c */
    public E m6862c(int i) {
        Object[] objArr = this.f1480a;
        E e = (E) objArr[i];
        int i2 = this.f1481b;
        if (i2 <= 1) {
            m6865a(this.f1482i, objArr, i2);
            this.f1482i = f1474c;
            this.f1480a = f1475d;
            this.f1481b = 0;
        } else {
            int[] iArr = this.f1482i;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                this.f1481b--;
                int i4 = this.f1481b;
                if (i < i4) {
                    int[] iArr2 = this.f1482i;
                    int i5 = i + 1;
                    System.arraycopy(iArr2, i5, iArr2, i, i4 - i);
                    Object[] objArr2 = this.f1480a;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f1481b - i);
                }
                this.f1480a[this.f1481b] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                int[] iArr3 = this.f1482i;
                Object[] objArr3 = this.f1480a;
                m6861d(i3);
                this.f1481b--;
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f1482i, 0, i);
                    System.arraycopy(objArr3, 0, this.f1480a, 0, i);
                }
                int i6 = this.f1481b;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr3, i7, this.f1482i, i, i6 - i);
                    System.arraycopy(objArr3, i7, this.f1480a, i, this.f1481b - i);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f1481b;
        if (i != 0) {
            m6865a(this.f1482i, this.f1480a, i);
            this.f1482i = f1474c;
            this.f1480a = f1475d;
            this.f1481b = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return m6867a(obj) >= 0;
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

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
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
        for (int i = 0; i < this.f1481b; i++) {
            try {
                if (!set.contains(m6863b(i))) {
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
        int[] iArr = this.f1482i;
        int i = this.f1481b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f1481b <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m6864b().m6823e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int m6867a = m6867a(obj);
        if (m6867a >= 0) {
            m6862c(m6867a);
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
        for (int i = this.f1481b - 1; i >= 0; i--) {
            if (!collection.contains(this.f1480a[i])) {
                m6862c(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f1481b;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f1481b;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f1480a, 0, objArr, 0, i);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f1481b) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1481b);
        }
        System.arraycopy(this.f1480a, 0, tArr2, 0, this.f1481b);
        int length = tArr2.length;
        int i = this.f1481b;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1481b * 14);
        sb.append('{');
        for (int i = 0; i < this.f1481b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E m6863b = m6863b(i);
            if (m6863b != this) {
                sb.append(m6863b);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
