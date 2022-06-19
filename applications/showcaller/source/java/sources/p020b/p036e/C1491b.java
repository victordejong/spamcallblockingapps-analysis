package p020b.p036e;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: b.e.b */
/* loaded from: classes-dex2jar.jar:b/e/b.class */
public final class C1491b<E> implements Collection<E>, Set<E> {

    /* renamed from: d */
    private static final int[] f5931d = new int[0];

    /* renamed from: e */
    private static final Object[] f5932e = new Object[0];

    /* renamed from: f */
    private static Object[] f5933f;

    /* renamed from: g */
    private static int f5934g;

    /* renamed from: h */
    private static Object[] f5935h;

    /* renamed from: i */
    private static int f5936i;

    /* renamed from: j */
    private int[] f5937j;

    /* renamed from: k */
    Object[] f5938k;

    /* renamed from: l */
    int f5939l;

    /* renamed from: m */
    private AbstractC1496f<E, E> f5940m;

    /* renamed from: b.e.b$a */
    /* loaded from: classes-dex2jar.jar:b/e/b$a.class */
    public class C1492a extends AbstractC1496f<E, E> {
        C1492a() {
            C1491b.this = r4;
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: a */
        protected void mo29938a() {
            C1491b.this.clear();
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: b */
        protected Object mo29937b(int i, int i2) {
            return C1491b.this.f5938k[i];
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: c */
        protected Map<E, E> mo29936c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: d */
        protected int mo29935d() {
            return C1491b.this.f5939l;
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: e */
        protected int mo29934e(Object obj) {
            return C1491b.this.indexOf(obj);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: f */
        protected int mo29933f(Object obj) {
            return C1491b.this.indexOf(obj);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: g */
        protected void mo29932g(E e, E e2) {
            C1491b.this.add(e);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: h */
        protected void mo29931h(int i) {
            C1491b.this.m29966l(i);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: i */
        protected E mo29930i(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public C1491b() {
        this(0);
    }

    public C1491b(int i) {
        if (i == 0) {
            this.f5937j = f5931d;
            this.f5938k = f5932e;
        } else {
            m29972c(i);
        }
        this.f5939l = 0;
    }

    /* renamed from: c */
    private void m29972c(int i) {
        if (i == 8) {
            synchronized (C1491b.class) {
                try {
                    Object[] objArr = f5935h;
                    if (objArr != null) {
                        this.f5938k = objArr;
                        f5935h = (Object[]) objArr[0];
                        this.f5937j = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f5936i--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (C1491b.class) {
                try {
                    Object[] objArr2 = f5933f;
                    if (objArr2 != null) {
                        this.f5938k = objArr2;
                        f5933f = (Object[]) objArr2[0];
                        this.f5937j = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f5934g--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f5937j = new int[i];
        this.f5938k = new Object[i];
    }

    /* renamed from: e */
    private static void m29970e(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C1491b.class) {
                try {
                    if (f5936i < 10) {
                        objArr[0] = f5935h;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f5935h = objArr;
                        f5936i++;
                    }
                } finally {
                }
            }
        } else if (iArr.length != 4) {
        } else {
            synchronized (C1491b.class) {
                try {
                    if (f5934g < 10) {
                        objArr[0] = f5933f;
                        objArr[1] = iArr;
                        while (true) {
                            i--;
                            if (i < 2) {
                                break;
                            }
                            objArr[i] = null;
                        }
                        f5933f = objArr;
                        f5934g++;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: h */
    private AbstractC1496f<E, E> m29969h() {
        if (this.f5940m == null) {
            this.f5940m = new C1492a();
        }
        return this.f5940m;
    }

    /* renamed from: i */
    private int m29968i(Object obj, int i) {
        int i2 = this.f5939l;
        if (i2 == 0) {
            return -1;
        }
        int m29964a = C1493c.m29964a(this.f5937j, i2, i);
        if (m29964a >= 0 && !obj.equals(this.f5938k[m29964a])) {
            int i3 = m29964a + 1;
            while (i3 < i2 && this.f5937j[i3] == i) {
                if (obj.equals(this.f5938k[i3])) {
                    return i3;
                }
                i3++;
            }
            while (true) {
                m29964a--;
                if (m29964a < 0 || this.f5937j[m29964a] != i) {
                    break;
                } else if (obj.equals(this.f5938k[m29964a])) {
                    return m29964a;
                }
            }
            return i3 ^ (-1);
        }
        return m29964a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
        return r7 ^ (-1);
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m29967j() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f5939l
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r4
            int[] r0 = r0.f5937j
            r1 = r5
            r2 = 0
            int r0 = p020b.p036e.C1493c.m29964a(r0, r1, r2)
            r6 = r0
            r0 = r6
            if (r0 >= 0) goto L1b
            r0 = r6
            return r0
        L1b:
            r0 = r4
            java.lang.Object[] r0 = r0.f5938k
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
            int[] r0 = r0.f5937j
            r1 = r7
            r0 = r0[r1]
            if (r0 != 0) goto L49
            r0 = r4
            java.lang.Object[] r0 = r0.f5938k
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
            int[] r0 = r0.f5937j
            r1 = r6
            r0 = r0[r1]
            if (r0 != 0) goto L6a
            r0 = r4
            java.lang.Object[] r0 = r0.f5938k
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
        throw new UnsupportedOperationException("Method not decompiled: p020b.p036e.C1491b.m29967j():int");
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int i2;
        if (e == null) {
            i2 = m29967j();
            i = 0;
        } else {
            i = e.hashCode();
            i2 = m29968i(e, i);
        }
        if (i2 >= 0) {
            return false;
        }
        int i3 = i2 ^ (-1);
        int i4 = this.f5939l;
        int[] iArr = this.f5937j;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f5938k;
            m29972c(i5);
            int[] iArr2 = this.f5937j;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f5938k, 0, objArr.length);
            }
            m29970e(iArr, objArr, this.f5939l);
        }
        int i6 = this.f5939l;
        if (i3 < i6) {
            int[] iArr3 = this.f5937j;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f5938k;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f5939l - i3);
        }
        this.f5937j[i3] = i;
        this.f5938k[i3] = e;
        this.f5939l++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m29971d(this.f5939l + collection.size());
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

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f5939l;
        if (i != 0) {
            m29970e(this.f5937j, this.f5938k, i);
            this.f5937j = f5931d;
            this.f5938k = f5932e;
            this.f5939l = 0;
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
    public void m29971d(int i) {
        int[] iArr = this.f5937j;
        if (iArr.length < i) {
            Object[] objArr = this.f5938k;
            m29972c(i);
            int i2 = this.f5939l;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f5937j, 0, i2);
                System.arraycopy(objArr, 0, this.f5938k, 0, this.f5939l);
            }
            m29970e(iArr, objArr, this.f5939l);
        }
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
        for (int i = 0; i < this.f5939l; i++) {
            try {
                if (!set.contains(m29965m(i))) {
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
        int[] iArr = this.f5937j;
        int i = this.f5939l;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? m29967j() : m29968i(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f5939l <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m29969h().m29926m().iterator();
    }

    /* renamed from: l */
    public E m29966l(int i) {
        Object[] objArr = this.f5938k;
        E e = (E) objArr[i];
        int i2 = this.f5939l;
        if (i2 <= 1) {
            m29970e(this.f5937j, objArr, i2);
            this.f5937j = f5931d;
            this.f5938k = f5932e;
            this.f5939l = 0;
        } else {
            int[] iArr = this.f5937j;
            int i3 = 8;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i4 = i2 - 1;
                this.f5939l = i4;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, iArr, i, i4 - i);
                    Object[] objArr2 = this.f5938k;
                    System.arraycopy(objArr2, i5, objArr2, i, this.f5939l - i);
                }
                this.f5938k[this.f5939l] = null;
            } else {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                m29972c(i3);
                this.f5939l--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f5937j, 0, i);
                    System.arraycopy(objArr, 0, this.f5938k, 0, i);
                }
                int i6 = this.f5939l;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, this.f5937j, i, i6 - i);
                    System.arraycopy(objArr, i7, this.f5938k, i, this.f5939l - i);
                }
            }
        }
        return e;
    }

    /* renamed from: m */
    public E m29965m(int i) {
        return (E) this.f5938k[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m29966l(indexOf);
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
        for (int i = this.f5939l - 1; i >= 0; i--) {
            if (!collection.contains(this.f5938k[i])) {
                m29966l(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f5939l;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f5939l;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f5938k, 0, objArr, 0, i);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr;
        if (tArr.length < this.f5939l) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f5939l);
        }
        System.arraycopy(this.f5938k, 0, tArr2, 0, this.f5939l);
        int length = tArr2.length;
        int i = this.f5939l;
        if (length > i) {
            tArr2[i] = null;
        }
        return tArr2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5939l * 14);
        sb.append('{');
        for (int i = 0; i < this.f5939l; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E m29965m = m29965m(i);
            if (m29965m != this) {
                sb.append(m29965m);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
