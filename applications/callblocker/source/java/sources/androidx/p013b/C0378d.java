package androidx.p013b;
/* renamed from: androidx.b.d */
/* loaded from: classes-dex2jar.jar:androidx/b/d.class */
public class C0378d<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f1560a = new Object();

    /* renamed from: b */
    private boolean f1561b;

    /* renamed from: c */
    private long[] f1562c;

    /* renamed from: d */
    private Object[] f1563d;

    /* renamed from: e */
    private int f1564e;

    public C0378d() {
        this(10);
    }

    public C0378d(int i) {
        this.f1561b = false;
        if (i == 0) {
            this.f1562c = C0377c.f1558b;
            this.f1563d = C0377c.f1559c;
            return;
        }
        int m21135b = C0377c.m21135b(i);
        this.f1562c = new long[m21135b];
        this.f1563d = new Object[m21135b];
    }

    /* renamed from: e */
    private void m21119e() {
        int i = this.f1564e;
        long[] jArr = this.f1562c;
        Object[] objArr = this.f1563d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f1561b = false;
                this.f1564e = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f1560a) {
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
    public C0378d<E> clone() {
        try {
            C0378d<E> c0378d = (C0378d) super.clone();
            c0378d.f1562c = (long[]) this.f1562c.clone();
            c0378d.f1563d = (Object[]) this.f1563d.clone();
            return c0378d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public E m21131a(long j) {
        return m21130a(j, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* renamed from: a */
    public E m21130a(long j, E e) {
        int m21136a = C0377c.m21136a(this.f1562c, this.f1564e, j);
        E e2 = e;
        if (m21136a >= 0) {
            e2 = this.f1563d[m21136a] == f1560a ? e : this.f1563d[m21136a];
        }
        return e2;
    }

    /* renamed from: a */
    public void m21132a(int i) {
        if (this.f1563d[i] != f1560a) {
            this.f1563d[i] = f1560a;
            this.f1561b = true;
        }
    }

    /* renamed from: b */
    public int m21129b() {
        if (this.f1561b) {
            m21119e();
        }
        return this.f1564e;
    }

    /* renamed from: b */
    public long m21128b(int i) {
        if (this.f1561b) {
            m21119e();
        }
        return this.f1562c[i];
    }

    @Deprecated
    /* renamed from: b */
    public void m21127b(long j) {
        m21123c(j);
    }

    /* renamed from: b */
    public void m21126b(long j, E e) {
        int m21136a = C0377c.m21136a(this.f1562c, this.f1564e, j);
        if (m21136a >= 0) {
            this.f1563d[m21136a] = e;
            return;
        }
        int i = m21136a ^ (-1);
        if (i < this.f1564e && this.f1563d[i] == f1560a) {
            this.f1562c[i] = j;
            this.f1563d[i] = e;
            return;
        }
        int i2 = i;
        if (this.f1561b) {
            i2 = i;
            if (this.f1564e >= this.f1562c.length) {
                m21119e();
                i2 = C0377c.m21136a(this.f1562c, this.f1564e, j) ^ (-1);
            }
        }
        if (this.f1564e >= this.f1562c.length) {
            int m21135b = C0377c.m21135b(this.f1564e + 1);
            long[] jArr = new long[m21135b];
            Object[] objArr = new Object[m21135b];
            System.arraycopy(this.f1562c, 0, jArr, 0, this.f1562c.length);
            System.arraycopy(this.f1563d, 0, objArr, 0, this.f1563d.length);
            this.f1562c = jArr;
            this.f1563d = objArr;
        }
        if (this.f1564e - i2 != 0) {
            System.arraycopy(this.f1562c, i2, this.f1562c, i2 + 1, this.f1564e - i2);
            System.arraycopy(this.f1563d, i2, this.f1563d, i2 + 1, this.f1564e - i2);
        }
        this.f1562c[i2] = j;
        this.f1563d[i2] = e;
        this.f1564e++;
    }

    /* renamed from: c */
    public E m21124c(int i) {
        if (this.f1561b) {
            m21119e();
        }
        return (E) this.f1563d[i];
    }

    /* renamed from: c */
    public void m21123c(long j) {
        int m21136a = C0377c.m21136a(this.f1562c, this.f1564e, j);
        if (m21136a < 0 || this.f1563d[m21136a] == f1560a) {
            return;
        }
        this.f1563d[m21136a] = f1560a;
        this.f1561b = true;
    }

    /* renamed from: c */
    public void m21122c(long j, E e) {
        if (this.f1564e != 0 && j <= this.f1562c[this.f1564e - 1]) {
            m21126b(j, e);
            return;
        }
        if (this.f1561b && this.f1564e >= this.f1562c.length) {
            m21119e();
        }
        int i = this.f1564e;
        if (i >= this.f1562c.length) {
            int m21135b = C0377c.m21135b(i + 1);
            long[] jArr = new long[m21135b];
            Object[] objArr = new Object[m21135b];
            System.arraycopy(this.f1562c, 0, jArr, 0, this.f1562c.length);
            System.arraycopy(this.f1563d, 0, objArr, 0, this.f1563d.length);
            this.f1562c = jArr;
            this.f1563d = objArr;
        }
        this.f1562c[i] = j;
        this.f1563d[i] = e;
        this.f1564e = i + 1;
    }

    /* renamed from: c */
    public boolean m21125c() {
        return m21129b() == 0;
    }

    /* renamed from: d */
    public int m21120d(long j) {
        if (this.f1561b) {
            m21119e();
        }
        return C0377c.m21136a(this.f1562c, this.f1564e, j);
    }

    /* renamed from: d */
    public void m21121d() {
        int i = this.f1564e;
        Object[] objArr = this.f1563d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1564e = 0;
        this.f1561b = false;
    }

    public String toString() {
        String sb;
        if (m21129b() <= 0) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.f1564e * 28);
            sb2.append('{');
            for (int i = 0; i < this.f1564e; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                sb2.append(m21128b(i));
                sb2.append('=');
                E m21124c = m21124c(i);
                if (m21124c != this) {
                    sb2.append(m21124c);
                } else {
                    sb2.append("(this Map)");
                }
            }
            sb2.append('}');
            sb = sb2.toString();
        }
        return sb;
    }
}
