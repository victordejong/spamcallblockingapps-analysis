package p020b.p036e;
/* renamed from: b.e.d */
/* loaded from: classes-dex2jar.jar:b/e/d.class */
public class C1494d<E> implements Cloneable {

    /* renamed from: d */
    private static final Object f5945d = new Object();

    /* renamed from: e */
    private boolean f5946e;

    /* renamed from: f */
    private long[] f5947f;

    /* renamed from: g */
    private Object[] f5948g;

    /* renamed from: h */
    private int f5949h;

    public C1494d() {
        this(10);
    }

    public C1494d(int i) {
        this.f5946e = false;
        if (i == 0) {
            this.f5947f = C1493c.f5943b;
            this.f5948g = C1493c.f5944c;
            return;
        }
        int m29959f = C1493c.m29959f(i);
        this.f5947f = new long[m29959f];
        this.f5948g = new Object[m29959f];
    }

    /* renamed from: d */
    private void m29955d() {
        int i = this.f5949h;
        long[] jArr = this.f5947f;
        Object[] objArr = this.f5948g;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f5946e = false;
                this.f5949h = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f5945d) {
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
    public void m29958a(long j, E e) {
        int i = this.f5949h;
        if (i != 0 && j <= this.f5947f[i - 1]) {
            m29950l(j, e);
            return;
        }
        if (this.f5946e && i >= this.f5947f.length) {
            m29955d();
        }
        int i2 = this.f5949h;
        if (i2 >= this.f5947f.length) {
            int m29959f = C1493c.m29959f(i2 + 1);
            long[] jArr = new long[m29959f];
            Object[] objArr = new Object[m29959f];
            long[] jArr2 = this.f5947f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f5948g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f5947f = jArr;
            this.f5948g = objArr;
        }
        this.f5947f[i2] = j;
        this.f5948g[i2] = e;
        this.f5949h = i2 + 1;
    }

    /* renamed from: b */
    public void m29957b() {
        int i = this.f5949h;
        Object[] objArr = this.f5948g;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f5949h = 0;
        this.f5946e = false;
    }

    /* renamed from: c */
    public C1494d<E> clone() {
        try {
            C1494d<E> c1494d = (C1494d) super.clone();
            c1494d.f5947f = (long[]) this.f5947f.clone();
            c1494d.f5948g = (Object[]) this.f5948g.clone();
            return c1494d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: g */
    public E m29954g(long j) {
        return m29953h(j, null);
    }

    /* renamed from: h */
    public E m29953h(long j, E e) {
        int m29963b = C1493c.m29963b(this.f5947f, this.f5949h, j);
        if (m29963b >= 0) {
            Object[] objArr = this.f5948g;
            if (objArr[m29963b] != f5945d) {
                return (E) objArr[m29963b];
            }
        }
        return e;
    }

    /* renamed from: i */
    public int m29952i(long j) {
        if (this.f5946e) {
            m29955d();
        }
        return C1493c.m29963b(this.f5947f, this.f5949h, j);
    }

    /* renamed from: j */
    public long m29951j(int i) {
        if (this.f5946e) {
            m29955d();
        }
        return this.f5947f[i];
    }

    /* renamed from: l */
    public void m29950l(long j, E e) {
        int m29963b = C1493c.m29963b(this.f5947f, this.f5949h, j);
        if (m29963b >= 0) {
            this.f5948g[m29963b] = e;
            return;
        }
        int i = m29963b ^ (-1);
        int i2 = this.f5949h;
        if (i < i2) {
            Object[] objArr = this.f5948g;
            if (objArr[i] == f5945d) {
                this.f5947f[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i3 = i;
        if (this.f5946e) {
            i3 = i;
            if (i2 >= this.f5947f.length) {
                m29955d();
                i3 = C1493c.m29963b(this.f5947f, this.f5949h, j) ^ (-1);
            }
        }
        int i4 = this.f5949h;
        if (i4 >= this.f5947f.length) {
            int m29959f = C1493c.m29959f(i4 + 1);
            long[] jArr = new long[m29959f];
            Object[] objArr2 = new Object[m29959f];
            long[] jArr2 = this.f5947f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f5948g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f5947f = jArr;
            this.f5948g = objArr2;
        }
        int i5 = this.f5949h;
        if (i5 - i3 != 0) {
            long[] jArr3 = this.f5947f;
            int i6 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i6, i5 - i3);
            Object[] objArr4 = this.f5948g;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f5949h - i3);
        }
        this.f5947f[i3] = j;
        this.f5948g[i3] = e;
        this.f5949h++;
    }

    /* renamed from: m */
    public void m29949m(long j) {
        int m29963b = C1493c.m29963b(this.f5947f, this.f5949h, j);
        if (m29963b >= 0) {
            Object[] objArr = this.f5948g;
            Object obj = objArr[m29963b];
            Object obj2 = f5945d;
            if (obj == obj2) {
                return;
            }
            objArr[m29963b] = obj2;
            this.f5946e = true;
        }
    }

    /* renamed from: n */
    public void m29948n(int i) {
        Object[] objArr = this.f5948g;
        Object obj = objArr[i];
        Object obj2 = f5945d;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f5946e = true;
        }
    }

    /* renamed from: o */
    public int m29947o() {
        if (this.f5946e) {
            m29955d();
        }
        return this.f5949h;
    }

    /* renamed from: p */
    public E m29946p(int i) {
        if (this.f5946e) {
            m29955d();
        }
        return (E) this.f5948g[i];
    }

    public String toString() {
        if (m29947o() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5949h * 28);
        sb.append('{');
        for (int i = 0; i < this.f5949h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m29951j(i));
            sb.append('=');
            E m29946p = m29946p(i);
            if (m29946p != this) {
                sb.append(m29946p);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
