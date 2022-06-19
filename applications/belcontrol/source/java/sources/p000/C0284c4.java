package p000;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* renamed from: c4 */
/* loaded from: classes-dex2jar.jar:c4.class */
public final class C0284c4<E> implements Collection<E>, Set<E> {

    /* renamed from: f */
    public static final int[] f2142f = new int[0];

    /* renamed from: g */
    public static final Object[] f2143g = new Object[0];

    /* renamed from: h */
    public static Object[] f2144h;

    /* renamed from: j */
    public static int f2145j;

    /* renamed from: k */
    public static Object[] f2146k;

    /* renamed from: l */
    public static int f2147l;

    /* renamed from: a */
    public int[] f2148a;

    /* renamed from: b */
    public Object[] f2149b;

    /* renamed from: c */
    public int f2150c;

    /* renamed from: d */
    public g4<E, E> f2151d;

    public C0284c4() {
        this(0);
    }

    public C0284c4(int i) {
        if (i == 0) {
            this.f2148a = f2142f;
            this.f2149b = f2143g;
        } else {
            m5463a(i);
        }
        this.f2150c = 0;
    }

    /* renamed from: c */
    public static void m5461c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0284c4.class) {
                try {
                    if (f2147l < 10) {
                        objArr[0] = f2146k;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f2146k = objArr;
                        f2147l++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C0284c4.class) {
                try {
                    if (f2145j < 10) {
                        objArr[0] = f2144h;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f2144h = objArr;
                        f2145j++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public final void m5463a(int i) {
        if (i == 8) {
            synchronized (C0284c4.class) {
                try {
                    Object[] objArr = f2146k;
                    if (objArr != null) {
                        this.f2149b = objArr;
                        f2146k = (Object[]) objArr[0];
                        this.f2148a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f2147l--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0284c4.class) {
                try {
                    Object[] objArr2 = f2144h;
                    if (objArr2 != null) {
                        this.f2149b = objArr2;
                        f2144h = (Object[]) objArr2[0];
                        this.f2148a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f2145j--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f2148a = new int[i];
        this.f2149b = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m5458f();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m5459e(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f2150c;
        int[] iArr = this.f2148a;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f2149b;
            m5463a(i5);
            int[] iArr2 = this.f2148a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f2149b, 0, objArr.length);
            }
            m5461c(iArr, objArr, this.f2150c);
        }
        int i6 = this.f2150c;
        if (i3 < i6) {
            int[] iArr3 = this.f2148a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f2149b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f2150c - i3);
        }
        this.f2148a[i3] = i;
        this.f2149b[i3] = e;
        this.f2150c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m5462b(this.f2150c + collection.size());
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
    public void m5462b(int i) {
        int[] iArr = this.f2148a;
        if (iArr.length < i) {
            Object[] objArr = this.f2149b;
            m5463a(i);
            int i2 = this.f2150c;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f2148a, 0, i2);
                System.arraycopy(objArr, 0, this.f2149b, 0, this.f2150c);
            }
            m5461c(iArr, objArr, this.f2150c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f2150c;
        if (i != 0) {
            m5461c(this.f2148a, this.f2149b, i);
            this.f2148a = f2142f;
            this.f2149b = f2143g;
            this.f2150c = 0;
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
    public final g4<E, E> m5460d() {
        if (this.f2151d == null) {
            this.f2151d = new a(this);
        }
        return this.f2151d;
    }

    /* renamed from: e */
    public final int m5459e(Object obj, int i) {
        int i2 = this.f2150c;
        if (i2 == 0) {
            return -1;
        }
        int m2895a = C1274d4.m2895a(this.f2148a, i2, i);
        if (m2895a >= 0 && !obj.equals(this.f2149b[m2895a])) {
            int i3 = m2895a + 1;
            while (i3 < i2 && this.f2148a[i3] == i) {
                if (obj.equals(this.f2149b[i3])) {
                    return i3;
                }
                i3++;
            }
            while (true) {
                m2895a--;
                if (m2895a < 0 || this.f2148a[m2895a] != i) {
                    break;
                } else if (obj.equals(this.f2149b[m2895a])) {
                    return m2895a;
                }
            }
            return i3 ^ (-1);
        }
        return m2895a;
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
        for (int i = 0; i < this.f2150c; i++) {
            try {
                if (!set.contains(m5456h(i))) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
        return r7 ^ (-1);
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m5458f() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f2150c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r4
            int[] r0 = r0.f2148a
            r1 = r5
            r2 = 0
            int r0 = p000.C1274d4.m2895a(r0, r1, r2)
            r6 = r0
            r0 = r6
            if (r0 >= 0) goto L1b
            r0 = r6
            return r0
        L1b:
            r0 = r4
            java.lang.Object[] r0 = r0.f2149b
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L26
            r0 = r6
            return r0
        L26:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L2a:
            r0 = r7
            r1 = r5
            if (r0 >= r1) goto L49
            r0 = r4
            int[] r0 = r0.f2148a
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L49
            r0 = r4
            java.lang.Object[] r0 = r0.f2149b
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L43
            r0 = r7
            return r0
        L43:
            int r7 = r7 + 1
            goto L2a
        L49:
            int r6 = r6 + (-1)
        L4c:
            r0 = r6
            if (r0 < 0) goto L6a
            r0 = r4
            int[] r0 = r0.f2148a
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L6a
            r0 = r4
            java.lang.Object[] r0 = r0.f2149b
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L64
            r0 = r6
            return r0
        L64:
            int r6 = r6 + (-1)
            goto L4c
        L6a:
            r0 = r7
            r1 = -1
            r0 = r0 ^ r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0284c4.m5458f():int");
    }

    /* renamed from: g */
    public E m5457g(int i) {
        Object[] objArr = this.f2149b;
        E e = (E) objArr[i];
        int i2 = this.f2150c;
        if (i2 <= 1) {
            m5461c(this.f2148a, objArr, i2);
            this.f2148a = f2142f;
            this.f2149b = f2143g;
            this.f2150c = 0;
        } else {
            int[] iArr = this.f2148a;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = i2 - 1;
                this.f2150c = i4;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, iArr, i, i4 - i);
                    Object[] objArr2 = this.f2149b;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f2150c - i);
                }
                this.f2149b[this.f2150c] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                m5463a(i3);
                this.f2150c--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f2148a, 0, i);
                    System.arraycopy(objArr, 0, this.f2149b, 0, i);
                }
                int i6 = this.f2150c;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, this.f2148a, i, i6 - i);
                    System.arraycopy(objArr, i7, this.f2149b, i, this.f2150c - i);
                }
            }
        }
        return e;
    }

    /* renamed from: h */
    public E m5456h(int i) {
        return (E) this.f2149b[i];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f2148a;
        int i = this.f2150c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? m5458f() : m5459e(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f2150c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m5460d().m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m5457g(indexOf);
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
        for (int i = this.f2150c - 1; i >= 0; i--) {
            if (!collection.contains(this.f2149b[i])) {
                m5457g(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f2150c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f2150c;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f2149b, 0, objArr, 0, i);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f2150c) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f2150c);
        }
        System.arraycopy(this.f2149b, 0, tArr2, 0, this.f2150c);
        int length = tArr2.length;
        int i = this.f2150c;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2150c * 14);
        sb.append('{');
        for (int i = 0; i < this.f2150c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E m5456h = m5456h(i);
            if (m5456h != this) {
                sb.append(m5456h);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
