package androidx.p013b;
/* renamed from: androidx.b.h */
/* loaded from: classes-dex2jar.jar:androidx/b/h.class */
public class C0387h<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f1595a = new Object();

    /* renamed from: b */
    private boolean f1596b;

    /* renamed from: c */
    private int[] f1597c;

    /* renamed from: d */
    private Object[] f1598d;

    /* renamed from: e */
    private int f1599e;

    public C0387h() {
        this(10);
    }

    public C0387h(int i) {
        this.f1596b = false;
        if (i == 0) {
            this.f1597c = C0377c.f1557a;
            this.f1598d = C0377c.f1559c;
            return;
        }
        int m21139a = C0377c.m21139a(i);
        this.f1597c = new int[m21139a];
        this.f1598d = new Object[m21139a];
    }

    /* renamed from: d */
    private void m21071d() {
        int i = this.f1599e;
        int[] iArr = this.f1597c;
        Object[] objArr = this.f1598d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f1596b = false;
                this.f1599e = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f1595a) {
                if (i2 != i4) {
                    iArr[i4] = iArr[i2];
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
    public int m21078a(E e) {
        if (this.f1596b) {
            m21071d();
        }
        int i = 0;
        while (true) {
            if (i >= this.f1599e) {
                i = -1;
                break;
            } else if (this.f1598d[i] == e) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public C0387h<E> clone() {
        try {
            C0387h<E> c0387h = (C0387h) super.clone();
            c0387h.f1597c = (int[]) this.f1597c.clone();
            c0387h.f1598d = (Object[]) this.f1598d.clone();
            return c0387h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public E m21080a(int i) {
        return m21079a(i, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* renamed from: a */
    public E m21079a(int i, E e) {
        int m21137a = C0377c.m21137a(this.f1597c, this.f1599e, i);
        E e2 = e;
        if (m21137a >= 0) {
            e2 = this.f1598d[m21137a] == f1595a ? e : this.f1598d[m21137a];
        }
        return e2;
    }

    /* renamed from: b */
    public int m21077b() {
        if (this.f1596b) {
            m21071d();
        }
        return this.f1599e;
    }

    /* renamed from: b */
    public void m21076b(int i) {
        int m21137a = C0377c.m21137a(this.f1597c, this.f1599e, i);
        if (m21137a < 0 || this.f1598d[m21137a] == f1595a) {
            return;
        }
        this.f1598d[m21137a] = f1595a;
        this.f1596b = true;
    }

    /* renamed from: b */
    public void m21075b(int i, E e) {
        int m21137a = C0377c.m21137a(this.f1597c, this.f1599e, i);
        if (m21137a >= 0) {
            this.f1598d[m21137a] = e;
            return;
        }
        int i2 = m21137a ^ (-1);
        if (i2 < this.f1599e && this.f1598d[i2] == f1595a) {
            this.f1597c[i2] = i;
            this.f1598d[i2] = e;
            return;
        }
        int i3 = i2;
        if (this.f1596b) {
            i3 = i2;
            if (this.f1599e >= this.f1597c.length) {
                m21071d();
                i3 = C0377c.m21137a(this.f1597c, this.f1599e, i) ^ (-1);
            }
        }
        if (this.f1599e >= this.f1597c.length) {
            int m21139a = C0377c.m21139a(this.f1599e + 1);
            int[] iArr = new int[m21139a];
            Object[] objArr = new Object[m21139a];
            System.arraycopy(this.f1597c, 0, iArr, 0, this.f1597c.length);
            System.arraycopy(this.f1598d, 0, objArr, 0, this.f1598d.length);
            this.f1597c = iArr;
            this.f1598d = objArr;
        }
        if (this.f1599e - i3 != 0) {
            System.arraycopy(this.f1597c, i3, this.f1597c, i3 + 1, this.f1599e - i3);
            System.arraycopy(this.f1598d, i3, this.f1598d, i3 + 1, this.f1599e - i3);
        }
        this.f1597c[i3] = i;
        this.f1598d[i3] = e;
        this.f1599e++;
    }

    /* renamed from: c */
    public int m21073c(int i) {
        if (this.f1596b) {
            m21071d();
        }
        return this.f1597c[i];
    }

    /* renamed from: c */
    public void m21074c() {
        int i = this.f1599e;
        Object[] objArr = this.f1598d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1599e = 0;
        this.f1596b = false;
    }

    /* renamed from: c */
    public void m21072c(int i, E e) {
        if (this.f1599e != 0 && i <= this.f1597c[this.f1599e - 1]) {
            m21075b(i, e);
            return;
        }
        if (this.f1596b && this.f1599e >= this.f1597c.length) {
            m21071d();
        }
        int i2 = this.f1599e;
        if (i2 >= this.f1597c.length) {
            int m21139a = C0377c.m21139a(i2 + 1);
            int[] iArr = new int[m21139a];
            Object[] objArr = new Object[m21139a];
            System.arraycopy(this.f1597c, 0, iArr, 0, this.f1597c.length);
            System.arraycopy(this.f1598d, 0, objArr, 0, this.f1598d.length);
            this.f1597c = iArr;
            this.f1598d = objArr;
        }
        this.f1597c[i2] = i;
        this.f1598d[i2] = e;
        this.f1599e = i2 + 1;
    }

    /* renamed from: d */
    public E m21070d(int i) {
        if (this.f1596b) {
            m21071d();
        }
        return (E) this.f1598d[i];
    }

    /* renamed from: e */
    public int m21069e(int i) {
        if (this.f1596b) {
            m21071d();
        }
        return C0377c.m21137a(this.f1597c, this.f1599e, i);
    }

    public String toString() {
        String sb;
        if (m21077b() <= 0) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.f1599e * 28);
            sb2.append('{');
            for (int i = 0; i < this.f1599e; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                sb2.append(m21073c(i));
                sb2.append('=');
                E m21070d = m21070d(i);
                if (m21070d != this) {
                    sb2.append(m21070d);
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
