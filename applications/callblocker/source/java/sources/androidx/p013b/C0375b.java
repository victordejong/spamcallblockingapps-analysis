package androidx.p013b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.b.b */
/* loaded from: classes-dex2jar.jar:androidx/b/b.class */
public final class C0375b<E> implements Collection<E>, Set<E> {

    /* renamed from: c */
    private static final int[] f1546c = new int[0];

    /* renamed from: d */
    private static final Object[] f1547d = new Object[0];

    /* renamed from: e */
    private static Object[] f1548e;

    /* renamed from: f */
    private static int f1549f;

    /* renamed from: g */
    private static Object[] f1550g;

    /* renamed from: h */
    private static int f1551h;

    /* renamed from: a */
    Object[] f1552a;

    /* renamed from: b */
    int f1553b;

    /* renamed from: i */
    private int[] f1554i;

    /* renamed from: j */
    private AbstractC0380f<E, E> f1555j;

    public C0375b() {
        this(0);
    }

    public C0375b(int i) {
        if (i == 0) {
            this.f1554i = f1546c;
            this.f1552a = f1547d;
        } else {
            m21140d(i);
        }
        this.f1553b = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        r6 = r8 ^ (-1);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m21148a() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f1553b
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Ld
            r0 = -1
            r6 = r0
        Lb:
            r0 = r6
            return r0
        Ld:
            r0 = r4
            int[] r0 = r0.f1554i
            r1 = r5
            r2 = 0
            int r0 = androidx.p013b.C0377c.m21137a(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 < 0) goto Lb
            r0 = r7
            r6 = r0
            r0 = r4
            java.lang.Object[] r0 = r0.f1552a
            r1 = r7
            r0 = r0[r1]
            if (r0 == 0) goto Lb
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
        L2d:
            r0 = r8
            r1 = r5
            if (r0 >= r1) goto L53
            r0 = r4
            int[] r0 = r0.f1554i
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L53
            r0 = r4
            java.lang.Object[] r0 = r0.f1552a
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L4d
            r0 = r8
            r6 = r0
            goto Lb
        L4d:
            int r8 = r8 + 1
            goto L2d
        L53:
            int r7 = r7 + (-1)
        L56:
            r0 = r7
            if (r0 < 0) goto L74
            r0 = r4
            int[] r0 = r0.f1554i
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L74
            r0 = r7
            r6 = r0
            r0 = r4
            java.lang.Object[] r0 = r0.f1552a
            r1 = r7
            r0 = r0[r1]
            if (r0 == 0) goto Lb
            int r7 = r7 + (-1)
            goto L56
        L74:
            r0 = r8
            r1 = -1
            r0 = r0 ^ r1
            r6 = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p013b.C0375b.m21148a():int");
    }

    /* renamed from: a */
    private int m21145a(Object obj, int i) {
        int i2;
        int i3 = this.f1553b;
        if (i3 == 0) {
            i2 = -1;
        } else {
            int m21137a = C0377c.m21137a(this.f1554i, i3, i);
            i2 = m21137a;
            if (m21137a >= 0) {
                i2 = m21137a;
                if (!obj.equals(this.f1552a[m21137a])) {
                    int i4 = m21137a + 1;
                    while (i4 < i3 && this.f1554i[i4] == i) {
                        if (obj.equals(this.f1552a[i4])) {
                            i2 = i4;
                            break;
                        }
                        i4++;
                    }
                    while (true) {
                        m21137a--;
                        if (m21137a >= 0 && this.f1554i[m21137a] == i) {
                            i2 = m21137a;
                            if (obj.equals(this.f1552a[m21137a])) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i2 = i4 ^ (-1);
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static void m21144a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0375b.class) {
                try {
                    if (f1551h < 10) {
                        objArr[0] = f1550g;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f1550g = objArr;
                        f1551h++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C0375b.class) {
                try {
                    if (f1549f < 10) {
                        objArr[0] = f1548e;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f1548e = objArr;
                        f1549f++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: b */
    private AbstractC0380f<E, E> m21143b() {
        if (this.f1555j == null) {
            this.f1555j = new AbstractC0380f<E, E>() { // from class: androidx.b.b.1
                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected int mo21111a() {
                    return C0375b.this.f1553b;
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected int mo21107a(Object obj) {
                    return C0375b.this.m21146a(obj);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected Object mo21109a(int i, int i2) {
                    return C0375b.this.f1552a[i];
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected E mo21108a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected void mo21110a(int i) {
                    C0375b.this.m21141c(i);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected void mo21106a(E e, E e2) {
                    C0375b.this.add(e);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: b */
                protected int mo21100b(Object obj) {
                    return C0375b.this.m21146a(obj);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: b */
                protected Map<E, E> mo21102b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: c */
                protected void mo21098c() {
                    C0375b.this.clear();
                }
            };
        }
        return this.f1555j;
    }

    /* renamed from: d */
    private void m21140d(int i) {
        if (i == 8) {
            synchronized (C0375b.class) {
                try {
                    if (f1550g != null) {
                        Object[] objArr = f1550g;
                        this.f1552a = objArr;
                        f1550g = (Object[]) objArr[0];
                        this.f1554i = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f1551h--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C0375b.class) {
                try {
                    if (f1548e != null) {
                        Object[] objArr2 = f1548e;
                        this.f1552a = objArr2;
                        f1548e = (Object[]) objArr2[0];
                        this.f1554i = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f1549f--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f1554i = new int[i];
        this.f1552a = new Object[i];
    }

    /* renamed from: a */
    public int m21146a(Object obj) {
        return obj == null ? m21148a() : m21145a(obj, obj.hashCode());
    }

    /* renamed from: a */
    public void m21147a(int i) {
        if (this.f1554i.length < i) {
            int[] iArr = this.f1554i;
            Object[] objArr = this.f1552a;
            m21140d(i);
            if (this.f1553b > 0) {
                System.arraycopy(iArr, 0, this.f1554i, 0, this.f1553b);
                System.arraycopy(objArr, 0, this.f1552a, 0, this.f1553b);
            }
            m21144a(iArr, objArr, this.f1553b);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int hashCode;
        int m21145a;
        boolean z;
        int i;
        if (e == null) {
            m21145a = m21148a();
            hashCode = 0;
        } else {
            hashCode = e.hashCode();
            m21145a = m21145a(e, hashCode);
        }
        if (m21145a >= 0) {
            z = false;
        } else {
            int i2 = m21145a ^ (-1);
            if (this.f1553b >= this.f1554i.length) {
                if (this.f1553b >= 8) {
                    i = this.f1553b + (this.f1553b >> 1);
                } else {
                    i = 8;
                    if (this.f1553b < 4) {
                        i = 4;
                    }
                }
                int[] iArr = this.f1554i;
                Object[] objArr = this.f1552a;
                m21140d(i);
                if (this.f1554i.length > 0) {
                    System.arraycopy(iArr, 0, this.f1554i, 0, iArr.length);
                    System.arraycopy(objArr, 0, this.f1552a, 0, objArr.length);
                }
                m21144a(iArr, objArr, this.f1553b);
            }
            if (i2 < this.f1553b) {
                System.arraycopy(this.f1554i, i2, this.f1554i, i2 + 1, this.f1553b - i2);
                System.arraycopy(this.f1552a, i2, this.f1552a, i2 + 1, this.f1553b - i2);
            }
            this.f1554i[i2] = hashCode;
            this.f1552a[i2] = e;
            this.f1553b++;
            z = true;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m21147a(this.f1553b + collection.size());
        boolean z = false;
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    /* renamed from: b */
    public E m21142b(int i) {
        return (E) this.f1552a[i];
    }

    /* renamed from: c */
    public E m21141c(int i) {
        int i2 = 8;
        E e = (E) this.f1552a[i];
        if (this.f1553b <= 1) {
            m21144a(this.f1554i, this.f1552a, this.f1553b);
            this.f1554i = f1546c;
            this.f1552a = f1547d;
            this.f1553b = 0;
        } else if (this.f1554i.length <= 8 || this.f1553b >= this.f1554i.length / 3) {
            this.f1553b--;
            if (i < this.f1553b) {
                System.arraycopy(this.f1554i, i + 1, this.f1554i, i, this.f1553b - i);
                System.arraycopy(this.f1552a, i + 1, this.f1552a, i, this.f1553b - i);
            }
            this.f1552a[this.f1553b] = null;
        } else {
            if (this.f1553b > 8) {
                i2 = this.f1553b + (this.f1553b >> 1);
            }
            int[] iArr = this.f1554i;
            Object[] objArr = this.f1552a;
            m21140d(i2);
            this.f1553b--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f1554i, 0, i);
                System.arraycopy(objArr, 0, this.f1552a, 0, i);
            }
            if (i < this.f1553b) {
                System.arraycopy(iArr, i + 1, this.f1554i, i, this.f1553b - i);
                System.arraycopy(objArr, i + 1, this.f1552a, i, this.f1553b - i);
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (this.f1553b != 0) {
            m21144a(this.f1554i, this.f1552a, this.f1553b);
            this.f1554i = f1546c;
            this.f1552a = f1547d;
            this.f1553b = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return m21146a(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        boolean z;
        Iterator<?> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            } else if (!contains(it.next())) {
                z = false;
                break;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                z = false;
            } else {
                int i = 0;
                while (true) {
                    z = true;
                    try {
                        if (i >= this.f1553b) {
                            break;
                        } else if (!set.contains(m21142b(i))) {
                            z = false;
                            break;
                        } else {
                            i++;
                        }
                    } catch (ClassCastException e) {
                        z = false;
                    } catch (NullPointerException e2) {
                        z = false;
                    }
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f1554i;
        int i = this.f1553b;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < i) {
                i2++;
                i3 = iArr[i2] + i4;
            } else {
                return i4;
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f1553b <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m21143b().m21095e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        boolean z;
        int m21146a = m21146a(obj);
        if (m21146a >= 0) {
            m21141c(m21146a);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f1553b - 1; i >= 0; i--) {
            if (!collection.contains(this.f1552a[i])) {
                m21141c(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f1553b;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        Object[] objArr = new Object[this.f1553b];
        System.arraycopy(this.f1552a, 0, objArr, 0, this.f1553b);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f1553b) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1553b);
        }
        System.arraycopy(this.f1552a, 0, tArr, 0, this.f1553b);
        if (tArr.length > this.f1553b) {
            tArr[this.f1553b] = null;
        }
        return tArr;
    }

    public String toString() {
        String sb;
        if (isEmpty()) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.f1553b * 14);
            sb2.append('{');
            for (int i = 0; i < this.f1553b; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                E m21142b = m21142b(i);
                if (m21142b != this) {
                    sb2.append(m21142b);
                } else {
                    sb2.append("(this Set)");
                }
            }
            sb2.append('}');
            sb = sb2.toString();
        }
        return sb;
    }
}
