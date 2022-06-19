package p1727n3.p1788g;
/* renamed from: n3.g.e */
/* loaded from: classes-dex2jar.jar:n3/g/e.class */
public class C26179e<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f72999e = new Object();

    /* renamed from: a */
    public boolean f73000a;

    /* renamed from: b */
    public long[] f73001b;

    /* renamed from: c */
    public Object[] f73002c;

    /* renamed from: d */
    public int f73003d;

    public C26179e() {
        this(10);
    }

    public C26179e(int i) {
        this.f73000a = false;
        if (i == 0) {
            this.f73001b = C26178d.f72997b;
            this.f73002c = C26178d.f72998c;
            return;
        }
        int m2610f = C26178d.m2610f(i);
        this.f73001b = new long[m2610f];
        this.f73002c = new Object[m2610f];
    }

    /* renamed from: a */
    public void m2609a(long j, E e) {
        int i = this.f73003d;
        if (i != 0 && j <= this.f73001b[i - 1]) {
            m2600k(j, e);
            return;
        }
        if (this.f73000a && i >= this.f73001b.length) {
            m2605f();
        }
        int i2 = this.f73003d;
        if (i2 >= this.f73001b.length) {
            int m2610f = C26178d.m2610f(i2 + 1);
            long[] jArr = new long[m2610f];
            Object[] objArr = new Object[m2610f];
            long[] jArr2 = this.f73001b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f73002c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f73001b = jArr;
            this.f73002c = objArr;
        }
        this.f73001b[i2] = j;
        this.f73002c[i2] = e;
        this.f73003d = i2 + 1;
    }

    /* renamed from: b */
    public void m2608b() {
        int i = this.f73003d;
        Object[] objArr = this.f73002c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f73003d = 0;
        this.f73000a = false;
    }

    /* renamed from: c */
    public C26179e<E> clone() {
        try {
            C26179e<E> c26179e = (C26179e) super.clone();
            c26179e.f73001b = (long[]) this.f73001b.clone();
            c26179e.f73002c = (Object[]) this.f73002c.clone();
            return c26179e;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: e */
    public boolean m2606e(long j) {
        if (this.f73000a) {
            m2605f();
        }
        return C26178d.m2614b(this.f73001b, this.f73003d, j) >= 0;
    }

    /* renamed from: f */
    public final void m2605f() {
        int i = this.f73003d;
        long[] jArr = this.f73001b;
        Object[] objArr = this.f73002c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f73000a = false;
                this.f73003d = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f72999e) {
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

    /* renamed from: g */
    public E m2604g(long j) {
        return m2603h(j, null);
    }

    /* renamed from: h */
    public E m2603h(long j, E e) {
        int m2614b = C26178d.m2614b(this.f73001b, this.f73003d, j);
        if (m2614b >= 0) {
            Object[] objArr = this.f73002c;
            if (objArr[m2614b] != f72999e) {
                return (E) objArr[m2614b];
            }
        }
        return e;
    }

    /* renamed from: i */
    public boolean m2602i() {
        return m2598m() == 0;
    }

    /* renamed from: j */
    public long m2601j(int i) {
        if (this.f73000a) {
            m2605f();
        }
        return this.f73001b[i];
    }

    /* renamed from: k */
    public void m2600k(long j, E e) {
        int m2614b = C26178d.m2614b(this.f73001b, this.f73003d, j);
        if (m2614b >= 0) {
            this.f73002c[m2614b] = e;
            return;
        }
        int i = m2614b ^ (-1);
        int i2 = this.f73003d;
        if (i < i2) {
            Object[] objArr = this.f73002c;
            if (objArr[i] == f72999e) {
                this.f73001b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i3 = i;
        if (this.f73000a) {
            i3 = i;
            if (i2 >= this.f73001b.length) {
                m2605f();
                i3 = C26178d.m2614b(this.f73001b, this.f73003d, j) ^ (-1);
            }
        }
        int i4 = this.f73003d;
        if (i4 >= this.f73001b.length) {
            int m2610f = C26178d.m2610f(i4 + 1);
            long[] jArr = new long[m2610f];
            Object[] objArr2 = new Object[m2610f];
            long[] jArr2 = this.f73001b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f73002c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f73001b = jArr;
            this.f73002c = objArr2;
        }
        int i5 = this.f73003d;
        if (i5 - i3 != 0) {
            long[] jArr3 = this.f73001b;
            int i6 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i6, i5 - i3);
            Object[] objArr4 = this.f73002c;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f73003d - i3);
        }
        this.f73001b[i3] = j;
        this.f73002c[i3] = e;
        this.f73003d++;
    }

    /* renamed from: l */
    public void m2599l(long j) {
        int m2614b = C26178d.m2614b(this.f73001b, this.f73003d, j);
        if (m2614b >= 0) {
            Object[] objArr = this.f73002c;
            Object obj = objArr[m2614b];
            Object obj2 = f72999e;
            if (obj == obj2) {
                return;
            }
            objArr[m2614b] = obj2;
            this.f73000a = true;
        }
    }

    /* renamed from: m */
    public int m2598m() {
        if (this.f73000a) {
            m2605f();
        }
        return this.f73003d;
    }

    /* renamed from: n */
    public E m2597n(int i) {
        if (this.f73000a) {
            m2605f();
        }
        return (E) this.f73002c[i];
    }

    public String toString() {
        if (m2598m() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f73003d * 28);
        sb.append('{');
        for (int i = 0; i < this.f73003d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m2601j(i));
            sb.append('=');
            E m2597n = m2597n(i);
            if (m2597n != this) {
                sb.append(m2597n);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
