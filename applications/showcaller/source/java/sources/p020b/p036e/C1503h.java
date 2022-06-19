package p020b.p036e;
/* renamed from: b.e.h */
/* loaded from: classes-dex2jar.jar:b/e/h.class */
public class C1503h<E> implements Cloneable {

    /* renamed from: d */
    private static final Object f5980d = new Object();

    /* renamed from: e */
    private boolean f5981e;

    /* renamed from: f */
    private int[] f5982f;

    /* renamed from: g */
    private Object[] f5983g;

    /* renamed from: h */
    private int f5984h;

    public C1503h() {
        this(10);
    }

    public C1503h(int i) {
        this.f5981e = false;
        if (i == 0) {
            this.f5982f = C1493c.f5942a;
            this.f5983g = C1493c.f5944c;
            return;
        }
        int m29960e = C1493c.m29960e(i);
        this.f5982f = new int[m29960e];
        this.f5983g = new Object[m29960e];
    }

    /* renamed from: d */
    private void m29905d() {
        int i = this.f5984h;
        int[] iArr = this.f5982f;
        Object[] objArr = this.f5983g;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f5981e = false;
                this.f5984h = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f5980d) {
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
    public void m29908a(int i, E e) {
        int i2 = this.f5984h;
        if (i2 != 0 && i <= this.f5982f[i2 - 1]) {
            m29900l(i, e);
            return;
        }
        if (this.f5981e && i2 >= this.f5982f.length) {
            m29905d();
        }
        int i3 = this.f5984h;
        if (i3 >= this.f5982f.length) {
            int m29960e = C1493c.m29960e(i3 + 1);
            int[] iArr = new int[m29960e];
            Object[] objArr = new Object[m29960e];
            int[] iArr2 = this.f5982f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f5983g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f5982f = iArr;
            this.f5983g = objArr;
        }
        this.f5982f[i3] = i;
        this.f5983g[i3] = e;
        this.f5984h = i3 + 1;
    }

    /* renamed from: b */
    public void m29907b() {
        int i = this.f5984h;
        Object[] objArr = this.f5983g;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f5984h = 0;
        this.f5981e = false;
    }

    /* renamed from: c */
    public C1503h<E> clone() {
        try {
            C1503h<E> c1503h = (C1503h) super.clone();
            c1503h.f5982f = (int[]) this.f5982f.clone();
            c1503h.f5983g = (Object[]) this.f5983g.clone();
            return c1503h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: g */
    public E m29904g(int i) {
        return m29903h(i, null);
    }

    /* renamed from: h */
    public E m29903h(int i, E e) {
        int m29964a = C1493c.m29964a(this.f5982f, this.f5984h, i);
        if (m29964a >= 0) {
            Object[] objArr = this.f5983g;
            if (objArr[m29964a] != f5980d) {
                return (E) objArr[m29964a];
            }
        }
        return e;
    }

    /* renamed from: i */
    public int m29902i(E e) {
        if (this.f5981e) {
            m29905d();
        }
        for (int i = 0; i < this.f5984h; i++) {
            if (this.f5983g[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public int m29901j(int i) {
        if (this.f5981e) {
            m29905d();
        }
        return this.f5982f[i];
    }

    /* renamed from: l */
    public void m29900l(int i, E e) {
        int m29964a = C1493c.m29964a(this.f5982f, this.f5984h, i);
        if (m29964a >= 0) {
            this.f5983g[m29964a] = e;
            return;
        }
        int i2 = m29964a ^ (-1);
        int i3 = this.f5984h;
        if (i2 < i3) {
            Object[] objArr = this.f5983g;
            if (objArr[i2] == f5980d) {
                this.f5982f[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i4 = i2;
        if (this.f5981e) {
            i4 = i2;
            if (i3 >= this.f5982f.length) {
                m29905d();
                i4 = C1493c.m29964a(this.f5982f, this.f5984h, i) ^ (-1);
            }
        }
        int i5 = this.f5984h;
        if (i5 >= this.f5982f.length) {
            int m29960e = C1493c.m29960e(i5 + 1);
            int[] iArr = new int[m29960e];
            Object[] objArr2 = new Object[m29960e];
            int[] iArr2 = this.f5982f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f5983g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f5982f = iArr;
            this.f5983g = objArr2;
        }
        int i6 = this.f5984h;
        if (i6 - i4 != 0) {
            int[] iArr3 = this.f5982f;
            int i7 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i7, i6 - i4);
            Object[] objArr4 = this.f5983g;
            System.arraycopy(objArr4, i4, objArr4, i7, this.f5984h - i4);
        }
        this.f5982f[i4] = i;
        this.f5983g[i4] = e;
        this.f5984h++;
    }

    /* renamed from: m */
    public int m29899m() {
        if (this.f5981e) {
            m29905d();
        }
        return this.f5984h;
    }

    /* renamed from: n */
    public E m29898n(int i) {
        if (this.f5981e) {
            m29905d();
        }
        return (E) this.f5983g[i];
    }

    public String toString() {
        if (m29899m() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5984h * 28);
        sb.append('{');
        for (int i = 0; i < this.f5984h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m29901j(i));
            sb.append('=');
            E m29898n = m29898n(i);
            if (m29898n != this) {
                sb.append(m29898n);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
