package androidx.p023b;
/* renamed from: androidx.b.d */
/* loaded from: classes-dex2jar.jar:androidx/b/d.class */
public final class C0433d<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f1717a = new Object();

    /* renamed from: b */
    private boolean f1718b;

    /* renamed from: c */
    private long[] f1719c;

    /* renamed from: d */
    private Object[] f1720d;

    /* renamed from: e */
    private int f1721e;

    public C0433d() {
        this(10);
    }

    public C0433d(int i) {
        this.f1718b = false;
        if (i == 0) {
            this.f1719c = C0432c.f1715b;
            this.f1720d = C0432c.f1716c;
            return;
        }
        int m45554b = C0432c.m45554b(i);
        this.f1719c = new long[m45554b];
        this.f1720d = new Object[m45554b];
    }

    /* renamed from: e */
    private void m45539e() {
        int i = this.f1721e;
        long[] jArr = this.f1719c;
        Object[] objArr = this.f1720d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f1718b = false;
                this.f1721e = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f1717a) {
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

    /* renamed from: a */
    public final C0433d<E> clone() {
        try {
            C0433d<E> c0433d = (C0433d) super.clone();
            c0433d.f1719c = (long[]) this.f1719c.clone();
            c0433d.f1720d = (Object[]) this.f1720d.clone();
            return c0433d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public final E m45549a(long j, E e) {
        int m45555a = C0432c.m45555a(this.f1719c, this.f1721e, j);
        if (m45555a >= 0) {
            Object[] objArr = this.f1720d;
            if (objArr[m45555a] != f1717a) {
                return (E) objArr[m45555a];
            }
        }
        return e;
    }

    /* renamed from: a */
    public final void m45551a(int i) {
        Object[] objArr = this.f1720d;
        Object obj = objArr[i];
        Object obj2 = f1717a;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f1718b = true;
        }
    }

    /* renamed from: a */
    public final void m45550a(long j) {
        int m45555a = C0432c.m45555a(this.f1719c, this.f1721e, j);
        if (m45555a >= 0) {
            Object[] objArr = this.f1720d;
            Object obj = objArr[m45555a];
            Object obj2 = f1717a;
            if (obj == obj2) {
                return;
            }
            objArr[m45555a] = obj2;
            this.f1718b = true;
        }
    }

    /* renamed from: b */
    public final int m45548b() {
        if (this.f1718b) {
            m45539e();
        }
        return this.f1721e;
    }

    /* renamed from: b */
    public final int m45546b(long j) {
        if (this.f1718b) {
            m45539e();
        }
        return C0432c.m45555a(this.f1719c, this.f1721e, j);
    }

    /* renamed from: b */
    public final long m45547b(int i) {
        if (this.f1718b) {
            m45539e();
        }
        return this.f1719c[i];
    }

    /* renamed from: b */
    public final void m45545b(long j, E e) {
        int m45555a = C0432c.m45555a(this.f1719c, this.f1721e, j);
        if (m45555a >= 0) {
            this.f1720d[m45555a] = e;
            return;
        }
        int i = m45555a ^ (-1);
        int i2 = this.f1721e;
        if (i < i2) {
            Object[] objArr = this.f1720d;
            if (objArr[i] == f1717a) {
                this.f1719c[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i3 = i;
        if (this.f1718b) {
            i3 = i;
            if (i2 >= this.f1719c.length) {
                m45539e();
                i3 = C0432c.m45555a(this.f1719c, this.f1721e, j) ^ (-1);
            }
        }
        int i4 = this.f1721e;
        if (i4 >= this.f1719c.length) {
            int m45554b = C0432c.m45554b(i4 + 1);
            long[] jArr = new long[m45554b];
            Object[] objArr2 = new Object[m45554b];
            long[] jArr2 = this.f1719c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1720d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1719c = jArr;
            this.f1720d = objArr2;
        }
        int i5 = this.f1721e;
        if (i5 - i3 != 0) {
            long[] jArr3 = this.f1719c;
            int i6 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i6, i5 - i3);
            Object[] objArr4 = this.f1720d;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f1721e - i3);
        }
        this.f1719c[i3] = j;
        this.f1720d[i3] = e;
        this.f1721e++;
    }

    /* renamed from: c */
    public final E m45543c(int i) {
        if (this.f1718b) {
            m45539e();
        }
        return (E) this.f1720d[i];
    }

    /* renamed from: c */
    public final void m45541c(long j, E e) {
        int i = this.f1721e;
        if (i != 0 && j <= this.f1719c[i - 1]) {
            m45545b(j, e);
            return;
        }
        if (this.f1718b && i >= this.f1719c.length) {
            m45539e();
        }
        int i2 = this.f1721e;
        if (i2 >= this.f1719c.length) {
            int m45554b = C0432c.m45554b(i2 + 1);
            long[] jArr = new long[m45554b];
            Object[] objArr = new Object[m45554b];
            long[] jArr2 = this.f1719c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f1720d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1719c = jArr;
            this.f1720d = objArr;
        }
        this.f1719c[i2] = j;
        this.f1720d[i2] = e;
        this.f1721e = i2 + 1;
    }

    /* renamed from: c */
    public final boolean m45544c() {
        return m45548b() == 0;
    }

    /* renamed from: c */
    public final boolean m45542c(long j) {
        return m45546b(j) >= 0;
    }

    /* renamed from: d */
    public final void m45540d() {
        int i = this.f1721e;
        Object[] objArr = this.f1720d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1721e = 0;
        this.f1718b = false;
    }

    public final String toString() {
        if (m45548b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1721e * 28);
        sb.append('{');
        for (int i = 0; i < this.f1721e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m45547b(i));
            sb.append('=');
            E m45543c = m45543c(i);
            if (m45543c != this) {
                sb.append(m45543c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
