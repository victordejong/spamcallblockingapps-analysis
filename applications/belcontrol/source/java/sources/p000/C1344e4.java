package p000;
/* renamed from: e4 */
/* loaded from: classes-dex2jar.jar:e4.class */
public class C1344e4<E> implements Cloneable {

    /* renamed from: f */
    public static final Object f6261f = new Object();

    /* renamed from: a */
    public boolean f6262a;

    /* renamed from: b */
    public long[] f6263b;

    /* renamed from: c */
    public Object[] f6264c;

    /* renamed from: d */
    public int f6265d;

    public C1344e4() {
        this(10);
    }

    public C1344e4(int i) {
        this.f6262a = false;
        if (i == 0) {
            this.f6263b = C1274d4.f5750b;
            this.f6264c = C1274d4.f5751c;
            return;
        }
        int m2890f = C1274d4.m2890f(i);
        this.f6263b = new long[m2890f];
        this.f6264c = new Object[m2890f];
    }

    /* renamed from: b */
    public void m2260b(long j, E e) {
        int i = this.f6265d;
        if (i != 0 && j <= this.f6263b[i - 1]) {
            m2251l(j, e);
            return;
        }
        if (this.f6262a && i >= this.f6263b.length) {
            m2256g();
        }
        int i2 = this.f6265d;
        if (i2 >= this.f6263b.length) {
            int m2890f = C1274d4.m2890f(i2 + 1);
            long[] jArr = new long[m2890f];
            Object[] objArr = new Object[m2890f];
            long[] jArr2 = this.f6263b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f6264c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f6263b = jArr;
            this.f6264c = objArr;
        }
        this.f6263b[i2] = j;
        this.f6264c[i2] = e;
        this.f6265d = i2 + 1;
    }

    /* renamed from: c */
    public void m2259c() {
        int i = this.f6265d;
        Object[] objArr = this.f6264c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f6265d = 0;
        this.f6262a = false;
    }

    /* renamed from: d */
    public C1344e4<E> clone() {
        try {
            C1344e4<E> c1344e4 = (C1344e4) super.clone();
            c1344e4.f6263b = (long[]) this.f6263b.clone();
            c1344e4.f6264c = (Object[]) this.f6264c.clone();
            return c1344e4;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Deprecated
    /* renamed from: f */
    public void m2257f(long j) {
        m2250m(j);
    }

    /* renamed from: g */
    public final void m2256g() {
        int i = this.f6265d;
        long[] jArr = this.f6263b;
        Object[] objArr = this.f6264c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f6262a = false;
                this.f6265d = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f6261f) {
                if (i2 != i4) {
                    jArr[i4] = jArr[i2];
                    objArr[i4] = obj;
                    objArr[i2] = null;
                }
                i5 = i4 + 1;
            }
            i2++;
            i3 = i5;
        }
    }

    /* renamed from: h */
    public E m2255h(long j) {
        return m2254i(j, null);
    }

    /* renamed from: i */
    public E m2254i(long j, E e) {
        int m2894b = C1274d4.m2894b(this.f6263b, this.f6265d, j);
        if (m2894b >= 0) {
            Object[] objArr = this.f6264c;
            if (objArr[m2894b] != f6261f) {
                return (E) objArr[m2894b];
            }
        }
        return e;
    }

    /* renamed from: j */
    public int m2253j(long j) {
        if (this.f6262a) {
            m2256g();
        }
        return C1274d4.m2894b(this.f6263b, this.f6265d, j);
    }

    /* renamed from: k */
    public long m2252k(int i) {
        if (this.f6262a) {
            m2256g();
        }
        return this.f6263b[i];
    }

    /* renamed from: l */
    public void m2251l(long j, E e) {
        int m2894b = C1274d4.m2894b(this.f6263b, this.f6265d, j);
        if (m2894b >= 0) {
            this.f6264c[m2894b] = e;
            return;
        }
        int i = m2894b ^ (-1);
        int i2 = this.f6265d;
        if (i < i2) {
            Object[] objArr = this.f6264c;
            if (objArr[i] == f6261f) {
                this.f6263b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i3 = i;
        if (this.f6262a) {
            i3 = i;
            if (i2 >= this.f6263b.length) {
                m2256g();
                i3 = C1274d4.m2894b(this.f6263b, this.f6265d, j) ^ (-1);
            }
        }
        int i4 = this.f6265d;
        if (i4 >= this.f6263b.length) {
            int m2890f = C1274d4.m2890f(i4 + 1);
            long[] jArr = new long[m2890f];
            Object[] objArr2 = new Object[m2890f];
            long[] jArr2 = this.f6263b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f6264c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f6263b = jArr;
            this.f6264c = objArr2;
        }
        int i5 = this.f6265d;
        if (i5 - i3 != 0) {
            long[] jArr3 = this.f6263b;
            int i6 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i6, i5 - i3);
            Object[] objArr4 = this.f6264c;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f6265d - i3);
        }
        this.f6263b[i3] = j;
        this.f6264c[i3] = e;
        this.f6265d++;
    }

    /* renamed from: m */
    public void m2250m(long j) {
        int m2894b = C1274d4.m2894b(this.f6263b, this.f6265d, j);
        if (m2894b >= 0) {
            Object[] objArr = this.f6264c;
            Object obj = objArr[m2894b];
            Object obj2 = f6261f;
            if (obj == obj2) {
                return;
            }
            objArr[m2894b] = obj2;
            this.f6262a = true;
        }
    }

    /* renamed from: n */
    public void m2249n(int i) {
        Object[] objArr = this.f6264c;
        Object obj = objArr[i];
        Object obj2 = f6261f;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f6262a = true;
        }
    }

    /* renamed from: o */
    public int m2248o() {
        if (this.f6262a) {
            m2256g();
        }
        return this.f6265d;
    }

    /* renamed from: p */
    public E m2247p(int i) {
        if (this.f6262a) {
            m2256g();
        }
        return (E) this.f6264c[i];
    }

    public String toString() {
        if (m2248o() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f6265d * 28);
        sb.append('{');
        for (int i = 0; i < this.f6265d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m2252k(i));
            sb.append('=');
            E m2247p = m2247p(i);
            if (m2247p != this) {
                sb.append(m2247p);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
