package androidx.p014c;
/* renamed from: androidx.c.h */
/* loaded from: classes-dex2jar.jar:androidx/c/h.class */
public class C0388h<E> implements Cloneable {

    /* renamed from: a */
    private static final Object f1515a = new Object();

    /* renamed from: b */
    private boolean f1516b;

    /* renamed from: c */
    private int[] f1517c;

    /* renamed from: d */
    private Object[] f1518d;

    /* renamed from: e */
    private int f1519e;

    public C0388h() {
        this(10);
    }

    public C0388h(int i) {
        this.f1516b = false;
        if (i == 0) {
            this.f1517c = C0378c.f1485a;
            this.f1518d = C0378c.f1487c;
            return;
        }
        int m6860a = C0378c.m6860a(i);
        this.f1517c = new int[m6860a];
        this.f1518d = new Object[m6860a];
    }

    /* renamed from: d */
    private void m6796d() {
        int i = this.f1519e;
        int[] iArr = this.f1517c;
        Object[] objArr = this.f1518d;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f1516b = false;
                this.f1519e = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f1515a) {
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
    public int m6803a(E e) {
        if (this.f1516b) {
            m6796d();
        }
        for (int i = 0; i < this.f1519e; i++) {
            if (this.f1518d[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public C0388h<E> clone() {
        try {
            C0388h<E> c0388h = (C0388h) super.clone();
            c0388h.f1517c = (int[]) this.f1517c.clone();
            c0388h.f1518d = (Object[]) this.f1518d.clone();
            return c0388h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public E m6805a(int i) {
        return m6804a(i, null);
    }

    /* renamed from: a */
    public E m6804a(int i, E e) {
        int m6858a = C0378c.m6858a(this.f1517c, this.f1519e, i);
        if (m6858a >= 0) {
            Object[] objArr = this.f1518d;
            if (objArr[m6858a] != f1515a) {
                return (E) objArr[m6858a];
            }
        }
        return e;
    }

    /* renamed from: b */
    public int m6802b() {
        if (this.f1516b) {
            m6796d();
        }
        return this.f1519e;
    }

    /* renamed from: b */
    public void m6801b(int i) {
        int m6858a = C0378c.m6858a(this.f1517c, this.f1519e, i);
        if (m6858a >= 0) {
            Object[] objArr = this.f1518d;
            Object obj = objArr[m6858a];
            Object obj2 = f1515a;
            if (obj == obj2) {
                return;
            }
            objArr[m6858a] = obj2;
            this.f1516b = true;
        }
    }

    /* renamed from: b */
    public void m6800b(int i, E e) {
        int m6858a = C0378c.m6858a(this.f1517c, this.f1519e, i);
        if (m6858a >= 0) {
            this.f1518d[m6858a] = e;
            return;
        }
        int i2 = m6858a ^ (-1);
        if (i2 < this.f1519e) {
            Object[] objArr = this.f1518d;
            if (objArr[i2] == f1515a) {
                this.f1517c[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i3 = i2;
        if (this.f1516b) {
            i3 = i2;
            if (this.f1519e >= this.f1517c.length) {
                m6796d();
                i3 = C0378c.m6858a(this.f1517c, this.f1519e, i) ^ (-1);
            }
        }
        int i4 = this.f1519e;
        if (i4 >= this.f1517c.length) {
            int m6860a = C0378c.m6860a(i4 + 1);
            int[] iArr = new int[m6860a];
            Object[] objArr2 = new Object[m6860a];
            int[] iArr2 = this.f1517c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1518d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1517c = iArr;
            this.f1518d = objArr2;
        }
        int i5 = this.f1519e;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f1517c;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Object[] objArr4 = this.f1518d;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f1519e - i3);
        }
        this.f1517c[i3] = i;
        this.f1518d[i3] = e;
        this.f1519e++;
    }

    /* renamed from: c */
    public int m6798c(int i) {
        if (this.f1516b) {
            m6796d();
        }
        return this.f1517c[i];
    }

    /* renamed from: c */
    public void m6799c() {
        int i = this.f1519e;
        Object[] objArr = this.f1518d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1519e = 0;
        this.f1516b = false;
    }

    /* renamed from: c */
    public void m6797c(int i, E e) {
        int i2 = this.f1519e;
        if (i2 != 0 && i <= this.f1517c[i2 - 1]) {
            m6800b(i, e);
            return;
        }
        if (this.f1516b && this.f1519e >= this.f1517c.length) {
            m6796d();
        }
        int i3 = this.f1519e;
        if (i3 >= this.f1517c.length) {
            int m6860a = C0378c.m6860a(i3 + 1);
            int[] iArr = new int[m6860a];
            Object[] objArr = new Object[m6860a];
            int[] iArr2 = this.f1517c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f1518d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1517c = iArr;
            this.f1518d = objArr;
        }
        this.f1517c[i3] = i;
        this.f1518d[i3] = e;
        this.f1519e = i3 + 1;
    }

    /* renamed from: d */
    public E m6795d(int i) {
        if (this.f1516b) {
            m6796d();
        }
        return (E) this.f1518d[i];
    }

    /* renamed from: e */
    public int m6794e(int i) {
        if (this.f1516b) {
            m6796d();
        }
        return C0378c.m6858a(this.f1517c, this.f1519e, i);
    }

    public String toString() {
        if (m6802b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1519e * 28);
        sb.append('{');
        for (int i = 0; i < this.f1519e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m6798c(i));
            sb.append('=');
            E m6795d = m6795d(i);
            if (m6795d != this) {
                sb.append(m6795d);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
