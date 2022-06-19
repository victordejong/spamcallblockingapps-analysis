package androidx.p023b;
/* renamed from: androidx.b.h */
/* loaded from: classes-dex2jar.jar:androidx/b/h.class */
public final class C0442h<E> implements Cloneable {

    /* renamed from: d */
    private static final Object f1752d = new Object();

    /* renamed from: a */
    public boolean f1753a;

    /* renamed from: b */
    public Object[] f1754b;

    /* renamed from: c */
    public int f1755c;

    /* renamed from: e */
    private int[] f1756e;

    public C0442h() {
        this(10);
    }

    public C0442h(int i) {
        this.f1753a = false;
        if (i == 0) {
            this.f1756e = C0432c.f1714a;
            this.f1754b = C0432c.f1716c;
            return;
        }
        int m45558a = C0432c.m45558a(i);
        this.f1756e = new int[m45558a];
        this.f1754b = new Object[m45558a];
    }

    /* renamed from: c */
    private void m45506c() {
        int i = this.f1755c;
        int[] iArr = this.f1756e;
        Object[] objArr = this.f1754b;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f1753a = false;
                this.f1755c = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f1752d) {
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
    public final int m45512a(int i) {
        if (this.f1753a) {
            m45506c();
        }
        return this.f1756e[i];
    }

    /* renamed from: a */
    public final int m45510a(E e) {
        if (this.f1753a) {
            m45506c();
        }
        for (int i = 0; i < this.f1755c; i++) {
            if (this.f1754b[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final C0442h<E> clone() {
        try {
            C0442h<E> c0442h = (C0442h) super.clone();
            c0442h.f1756e = (int[]) this.f1756e.clone();
            c0442h.f1754b = (Object[]) this.f1754b.clone();
            return c0442h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public final E m45511a(int i, E e) {
        int m45556a = C0432c.m45556a(this.f1756e, this.f1755c, i);
        if (m45556a >= 0) {
            Object[] objArr = this.f1754b;
            if (objArr[m45556a] != f1752d) {
                return (E) objArr[m45556a];
            }
        }
        return e;
    }

    /* renamed from: b */
    public final int m45509b() {
        if (this.f1753a) {
            m45506c();
        }
        return this.f1755c;
    }

    /* renamed from: b */
    public final E m45508b(int i) {
        if (this.f1753a) {
            m45506c();
        }
        return (E) this.f1754b[i];
    }

    /* renamed from: b */
    public final void m45507b(int i, E e) {
        int m45556a = C0432c.m45556a(this.f1756e, this.f1755c, i);
        if (m45556a >= 0) {
            this.f1754b[m45556a] = e;
            return;
        }
        int i2 = m45556a ^ (-1);
        int i3 = this.f1755c;
        if (i2 < i3) {
            Object[] objArr = this.f1754b;
            if (objArr[i2] == f1752d) {
                this.f1756e[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i4 = i2;
        if (this.f1753a) {
            i4 = i2;
            if (i3 >= this.f1756e.length) {
                m45506c();
                i4 = C0432c.m45556a(this.f1756e, this.f1755c, i) ^ (-1);
            }
        }
        int i5 = this.f1755c;
        if (i5 >= this.f1756e.length) {
            int m45558a = C0432c.m45558a(i5 + 1);
            int[] iArr = new int[m45558a];
            Object[] objArr2 = new Object[m45558a];
            int[] iArr2 = this.f1756e;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1754b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1756e = iArr;
            this.f1754b = objArr2;
        }
        int i6 = this.f1755c;
        if (i6 - i4 != 0) {
            int[] iArr3 = this.f1756e;
            int i7 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i7, i6 - i4);
            Object[] objArr4 = this.f1754b;
            System.arraycopy(objArr4, i4, objArr4, i7, this.f1755c - i4);
        }
        this.f1756e[i4] = i;
        this.f1754b[i4] = e;
        this.f1755c++;
    }

    /* renamed from: c */
    public final void m45505c(int i, E e) {
        int i2 = this.f1755c;
        if (i2 != 0 && i <= this.f1756e[i2 - 1]) {
            m45507b(i, e);
            return;
        }
        if (this.f1753a && i2 >= this.f1756e.length) {
            m45506c();
        }
        int i3 = this.f1755c;
        if (i3 >= this.f1756e.length) {
            int m45558a = C0432c.m45558a(i3 + 1);
            int[] iArr = new int[m45558a];
            Object[] objArr = new Object[m45558a];
            int[] iArr2 = this.f1756e;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f1754b;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1756e = iArr;
            this.f1754b = objArr;
        }
        this.f1756e[i3] = i;
        this.f1754b[i3] = e;
        this.f1755c = i3 + 1;
    }

    public final String toString() {
        if (m45509b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1755c * 28);
        sb.append('{');
        for (int i = 0; i < this.f1755c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m45512a(i));
            sb.append('=');
            E m45508b = m45508b(i);
            if (m45508b != this) {
                sb.append(m45508b);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
