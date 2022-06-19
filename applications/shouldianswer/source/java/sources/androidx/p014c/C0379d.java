package androidx.p014c;
/* renamed from: androidx.c.d */
/* loaded from: classes-dex2jar.jar:androidx/c/d.class */
public class C0379d<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f1488a = new Object();

    /* renamed from: b */
    private boolean f1489b;

    /* renamed from: c */
    private long[] f1490c;

    /* renamed from: d */
    private Object[] f1491d;

    /* renamed from: e */
    private int f1492e;

    public C0379d() {
        this(10);
    }

    public C0379d(int i) {
        this.f1489b = false;
        if (i == 0) {
            this.f1490c = C0378c.f1486b;
            this.f1491d = C0378c.f1487c;
            return;
        }
        int m6856b = C0378c.m6856b(i);
        this.f1490c = new long[m6856b];
        this.f1491d = new Object[m6856b];
    }

    /* renamed from: d */
    private void m6842d() {
        int i = this.f1492e;
        long[] jArr = this.f1490c;
        Object[] objArr = this.f1491d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f1489b = false;
                this.f1492e = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f1488a) {
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
    public C0379d<E> clone() {
        try {
            C0379d<E> c0379d = (C0379d) super.clone();
            c0379d.f1490c = (long[]) this.f1490c.clone();
            c0379d.f1491d = (Object[]) this.f1491d.clone();
            return c0379d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public E m6852a(long j) {
        return m6851a(j, null);
    }

    /* renamed from: a */
    public E m6851a(long j, E e) {
        int m6857a = C0378c.m6857a(this.f1490c, this.f1492e, j);
        if (m6857a >= 0) {
            Object[] objArr = this.f1491d;
            if (objArr[m6857a] != f1488a) {
                return (E) objArr[m6857a];
            }
        }
        return e;
    }

    /* renamed from: a */
    public void m6853a(int i) {
        Object[] objArr = this.f1491d;
        Object obj = objArr[i];
        Object obj2 = f1488a;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f1489b = true;
        }
    }

    /* renamed from: b */
    public int m6850b() {
        if (this.f1489b) {
            m6842d();
        }
        return this.f1492e;
    }

    /* renamed from: b */
    public long m6849b(int i) {
        if (this.f1489b) {
            m6842d();
        }
        return this.f1490c[i];
    }

    @Deprecated
    /* renamed from: b */
    public void m6848b(long j) {
        m6844c(j);
    }

    /* renamed from: b */
    public void m6847b(long j, E e) {
        int m6857a = C0378c.m6857a(this.f1490c, this.f1492e, j);
        if (m6857a >= 0) {
            this.f1491d[m6857a] = e;
            return;
        }
        int i = m6857a ^ (-1);
        if (i < this.f1492e) {
            Object[] objArr = this.f1491d;
            if (objArr[i] == f1488a) {
                this.f1490c[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i2 = i;
        if (this.f1489b) {
            i2 = i;
            if (this.f1492e >= this.f1490c.length) {
                m6842d();
                i2 = C0378c.m6857a(this.f1490c, this.f1492e, j) ^ (-1);
            }
        }
        int i3 = this.f1492e;
        if (i3 >= this.f1490c.length) {
            int m6856b = C0378c.m6856b(i3 + 1);
            long[] jArr = new long[m6856b];
            Object[] objArr2 = new Object[m6856b];
            long[] jArr2 = this.f1490c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1491d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1490c = jArr;
            this.f1491d = objArr2;
        }
        int i4 = this.f1492e;
        if (i4 - i2 != 0) {
            long[] jArr3 = this.f1490c;
            int i5 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
            Object[] objArr4 = this.f1491d;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f1492e - i2);
        }
        this.f1490c[i2] = j;
        this.f1491d[i2] = e;
        this.f1492e++;
    }

    /* renamed from: c */
    public E m6845c(int i) {
        if (this.f1489b) {
            m6842d();
        }
        return (E) this.f1491d[i];
    }

    /* renamed from: c */
    public void m6846c() {
        int i = this.f1492e;
        Object[] objArr = this.f1491d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1492e = 0;
        this.f1489b = false;
    }

    /* renamed from: c */
    public void m6844c(long j) {
        int m6857a = C0378c.m6857a(this.f1490c, this.f1492e, j);
        if (m6857a >= 0) {
            Object[] objArr = this.f1491d;
            Object obj = objArr[m6857a];
            Object obj2 = f1488a;
            if (obj == obj2) {
                return;
            }
            objArr[m6857a] = obj2;
            this.f1489b = true;
        }
    }

    /* renamed from: c */
    public void m6843c(long j, E e) {
        int i = this.f1492e;
        if (i != 0 && j <= this.f1490c[i - 1]) {
            m6847b(j, e);
            return;
        }
        if (this.f1489b && this.f1492e >= this.f1490c.length) {
            m6842d();
        }
        int i2 = this.f1492e;
        if (i2 >= this.f1490c.length) {
            int m6856b = C0378c.m6856b(i2 + 1);
            long[] jArr = new long[m6856b];
            Object[] objArr = new Object[m6856b];
            long[] jArr2 = this.f1490c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f1491d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1490c = jArr;
            this.f1491d = objArr;
        }
        this.f1490c[i2] = j;
        this.f1491d[i2] = e;
        this.f1492e = i2 + 1;
    }

    /* renamed from: d */
    public int m6841d(long j) {
        if (this.f1489b) {
            m6842d();
        }
        return C0378c.m6857a(this.f1490c, this.f1492e, j);
    }

    /* renamed from: e */
    public boolean m6840e(long j) {
        return m6841d(j) >= 0;
    }

    public String toString() {
        if (m6850b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1492e * 28);
        sb.append('{');
        for (int i = 0; i < this.f1492e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m6849b(i));
            sb.append('=');
            E m6845c = m6845c(i);
            if (m6845c != this) {
                sb.append(m6845c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
