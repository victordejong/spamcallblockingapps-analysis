package p226s;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p029c4.C0821e;
import p226s.AbstractC4257f;
/* renamed from: s.c */
/* loaded from: classes-dex2jar.jar:s/c.class */
public final class C4254c<E> implements Collection<E>, Set<E> {

    /* renamed from: e */
    public static final int[] f13329e = new int[0];

    /* renamed from: f */
    public static final Object[] f13330f = new Object[0];

    /* renamed from: g */
    public static Object[] f13331g;

    /* renamed from: h */
    public static int f13332h;

    /* renamed from: i */
    public static Object[] f13333i;

    /* renamed from: j */
    public static int f13334j;

    /* renamed from: a */
    public int[] f13335a;

    /* renamed from: b */
    public Object[] f13336b;

    /* renamed from: c */
    public int f13337c;

    /* renamed from: d */
    public AbstractC4257f<E, E> f13338d;

    public C4254c() {
        this(0);
    }

    public C4254c(int i) {
        if (i == 0) {
            this.f13335a = f13329e;
            this.f13336b = f13330f;
        } else {
            m1229a(i);
        }
        this.f13337c = 0;
    }

    /* renamed from: b */
    public static void m1228b(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C4254c.class) {
                try {
                    if (f13334j < 10) {
                        objArr[0] = f13333i;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f13333i = objArr;
                        f13334j++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C4254c.class) {
                try {
                    if (f13332h < 10) {
                        objArr[0] = f13331g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f13331g = objArr;
                        f13332h++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public final void m1229a(int i) {
        if (i == 8) {
            synchronized (C4254c.class) {
                try {
                    Object[] objArr = f13333i;
                    if (objArr != null) {
                        this.f13336b = objArr;
                        f13333i = (Object[]) objArr[0];
                        this.f13335a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f13334j--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C4254c.class) {
                try {
                    Object[] objArr2 = f13331g;
                    if (objArr2 != null) {
                        this.f13336b = objArr2;
                        f13331g = (Object[]) objArr2[0];
                        this.f13335a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f13332h--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f13335a = new int[i];
        this.f13336b = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m1226d();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m1227c(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f13337c;
        int[] iArr = this.f13335a;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f13336b;
            m1229a(i5);
            int[] iArr2 = this.f13335a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f13336b, 0, objArr.length);
            }
            m1228b(iArr, objArr, this.f13337c);
        }
        int i6 = this.f13337c;
        if (i3 < i6) {
            int[] iArr3 = this.f13335a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f13336b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f13337c - i3);
        }
        this.f13335a[i3] = i;
        this.f13336b[i3] = e;
        this.f13337c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.f13337c;
        int[] iArr = this.f13335a;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f13336b;
            m1229a(size);
            int i = this.f13337c;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f13335a, 0, i);
                System.arraycopy(objArr, 0, this.f13336b, 0, this.f13337c);
            }
            m1228b(iArr, objArr, this.f13337c);
        }
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    /* renamed from: c */
    public final int m1227c(Object obj, int i) {
        int i2 = this.f13337c;
        if (i2 == 0) {
            return -1;
        }
        int m7343a = C0821e.m7343a(this.f13335a, i2, i);
        if (m7343a >= 0 && !obj.equals(this.f13336b[m7343a])) {
            int i3 = m7343a + 1;
            while (i3 < i2 && this.f13335a[i3] == i) {
                if (obj.equals(this.f13336b[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m7343a - 1; i4 >= 0 && this.f13335a[i4] == i; i4--) {
                if (obj.equals(this.f13336b[i4])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return m7343a;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f13337c;
        if (i != 0) {
            m1228b(this.f13335a, this.f13336b, i);
            this.f13335a = f13329e;
            this.f13336b = f13330f;
            this.f13337c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
        return r7 ^ (-1);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1226d() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f13337c
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r4
            int[] r0 = r0.f13335a
            r1 = r5
            r2 = 0
            int r0 = p029c4.C0821e.m7343a(r0, r1, r2)
            r6 = r0
            r0 = r6
            if (r0 >= 0) goto L1b
            r0 = r6
            return r0
        L1b:
            r0 = r4
            java.lang.Object[] r0 = r0.f13336b
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
            int[] r0 = r0.f13335a
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L49
            r0 = r4
            java.lang.Object[] r0 = r0.f13336b
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
            int[] r0 = r0.f13335a
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L6a
            r0 = r4
            java.lang.Object[] r0 = r0.f13336b
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
        throw new UnsupportedOperationException("Method not decompiled: p226s.C4254c.m1226d():int");
    }

    /* renamed from: e */
    public E m1225e(int i) {
        Object[] objArr = this.f13336b;
        E e = (E) objArr[i];
        int i2 = this.f13337c;
        if (i2 <= 1) {
            m1228b(this.f13335a, objArr, i2);
            this.f13335a = f13329e;
            this.f13336b = f13330f;
            this.f13337c = 0;
        } else {
            int[] iArr = this.f13335a;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = i2 - 1;
                this.f13337c = i4;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, iArr, i, i4 - i);
                    Object[] objArr2 = this.f13336b;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f13337c - i);
                }
                this.f13336b[this.f13337c] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                m1229a(i3);
                this.f13337c--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f13335a, 0, i);
                    System.arraycopy(objArr, 0, this.f13336b, 0, i);
                }
                int i6 = this.f13337c;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, this.f13335a, i, i6 - i);
                    System.arraycopy(objArr, i7, this.f13336b, i, this.f13337c - i);
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
        if (this.f13337c != set.size()) {
            return false;
        }
        for (int i = 0; i < this.f13337c; i++) {
            try {
                if (!set.contains(this.f13336b[i])) {
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
        int[] iArr = this.f13335a;
        int i = this.f13337c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? m1226d() : m1227c(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f13337c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        if (this.f13338d == null) {
            this.f13338d = new C4253b(this);
        }
        AbstractC4257f<E, E> abstractC4257f = this.f13338d;
        if (abstractC4257f.f13345b == null) {
            abstractC4257f.f13345b = new AbstractC4257f.C4260c();
        }
        return abstractC4257f.f13345b.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m1225e(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
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
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f13337c - 1; i >= 0; i--) {
            if (!collection.contains(this.f13336b[i])) {
                m1225e(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f13337c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f13337c;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f13336b, 0, objArr, 0, i);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f13337c) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f13337c);
        }
        System.arraycopy(this.f13336b, 0, tArr2, 0, this.f13337c);
        int length = tArr2.length;
        int i = this.f13337c;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb = new StringBuilder(this.f13337c * 14);
        sb.append('{');
        for (int i = 0; i < this.f13337c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f13336b[i];
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
