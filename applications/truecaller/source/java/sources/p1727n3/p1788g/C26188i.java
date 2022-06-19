package p1727n3.p1788g;
/* renamed from: n3.g.i */
/* loaded from: classes-dex2jar.jar:n3/g/i.class */
public class C26188i<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f73026e = new Object();

    /* renamed from: a */
    public boolean f73027a = false;

    /* renamed from: b */
    public int[] f73028b;

    /* renamed from: c */
    public Object[] f73029c;

    /* renamed from: d */
    public int f73030d;

    public C26188i() {
        int m2611e = C26178d.m2611e(10);
        this.f73028b = new int[m2611e];
        this.f73029c = new Object[m2611e];
    }

    /* renamed from: a */
    public void m2571a(int i, E e) {
        int i2 = this.f73030d;
        if (i2 != 0 && i <= this.f73028b[i2 - 1]) {
            m2564i(i, e);
            return;
        }
        if (this.f73027a && i2 >= this.f73028b.length) {
            m2568e();
        }
        int i3 = this.f73030d;
        if (i3 >= this.f73028b.length) {
            int m2611e = C26178d.m2611e(i3 + 1);
            int[] iArr = new int[m2611e];
            Object[] objArr = new Object[m2611e];
            int[] iArr2 = this.f73028b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f73029c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f73028b = iArr;
            this.f73029c = objArr;
        }
        this.f73028b[i3] = i;
        this.f73029c[i3] = e;
        this.f73030d = i3 + 1;
    }

    /* renamed from: b */
    public void m2570b() {
        int i = this.f73030d;
        Object[] objArr = this.f73029c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f73030d = 0;
        this.f73027a = false;
    }

    /* renamed from: c */
    public C26188i<E> clone() {
        try {
            C26188i<E> c26188i = (C26188i) super.clone();
            c26188i.f73028b = (int[]) this.f73028b.clone();
            c26188i.f73029c = (Object[]) this.f73029c.clone();
            return c26188i;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: e */
    public final void m2568e() {
        int i = this.f73030d;
        int[] iArr = this.f73028b;
        Object[] objArr = this.f73029c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f73027a = false;
                this.f73030d = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f73026e) {
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

    /* renamed from: f */
    public E m2567f(int i) {
        return m2566g(i, null);
    }

    /* renamed from: g */
    public E m2566g(int i, E e) {
        int m2615a = C26178d.m2615a(this.f73028b, this.f73030d, i);
        if (m2615a >= 0) {
            Object[] objArr = this.f73029c;
            if (objArr[m2615a] != f73026e) {
                return (E) objArr[m2615a];
            }
        }
        return e;
    }

    /* renamed from: h */
    public int m2565h(int i) {
        if (this.f73027a) {
            m2568e();
        }
        return this.f73028b[i];
    }

    /* renamed from: i */
    public void m2564i(int i, E e) {
        int m2615a = C26178d.m2615a(this.f73028b, this.f73030d, i);
        if (m2615a >= 0) {
            this.f73029c[m2615a] = e;
            return;
        }
        int i2 = m2615a ^ (-1);
        int i3 = this.f73030d;
        if (i2 < i3) {
            Object[] objArr = this.f73029c;
            if (objArr[i2] == f73026e) {
                this.f73028b[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i4 = i2;
        if (this.f73027a) {
            i4 = i2;
            if (i3 >= this.f73028b.length) {
                m2568e();
                i4 = C26178d.m2615a(this.f73028b, this.f73030d, i) ^ (-1);
            }
        }
        int i5 = this.f73030d;
        if (i5 >= this.f73028b.length) {
            int m2611e = C26178d.m2611e(i5 + 1);
            int[] iArr = new int[m2611e];
            Object[] objArr2 = new Object[m2611e];
            int[] iArr2 = this.f73028b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f73029c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f73028b = iArr;
            this.f73029c = objArr2;
        }
        int i6 = this.f73030d;
        if (i6 - i4 != 0) {
            int[] iArr3 = this.f73028b;
            int i7 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i7, i6 - i4);
            Object[] objArr4 = this.f73029c;
            System.arraycopy(objArr4, i4, objArr4, i7, this.f73030d - i4);
        }
        this.f73028b[i4] = i;
        this.f73029c[i4] = e;
        this.f73030d++;
    }

    /* renamed from: j */
    public int m2563j() {
        if (this.f73027a) {
            m2568e();
        }
        return this.f73030d;
    }

    /* renamed from: k */
    public E m2562k(int i) {
        if (this.f73027a) {
            m2568e();
        }
        return (E) this.f73029c[i];
    }

    public String toString() {
        if (m2563j() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f73030d * 28);
        sb.append('{');
        for (int i = 0; i < this.f73030d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m2565h(i));
            sb.append('=');
            E m2562k = m2562k(i);
            if (m2562k != this) {
                sb.append(m2562k);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
