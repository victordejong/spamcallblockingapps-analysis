package p226s;

import com.applovin.impl.sdk.utils.JsonUtils;
import p029c4.C0821e;
/* renamed from: s.d */
/* loaded from: classes-dex2jar.jar:s/d.class */
public class C4255d<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f13339e = new Object();

    /* renamed from: a */
    public boolean f13340a = false;

    /* renamed from: b */
    public long[] f13341b;

    /* renamed from: c */
    public Object[] f13342c;

    /* renamed from: d */
    public int f13343d;

    public C4255d() {
        int m7334k = C0821e.m7334k(10);
        this.f13341b = new long[m7334k];
        this.f13342c = new Object[m7334k];
    }

    /* renamed from: a */
    public void m1224a(long j, E e) {
        int i = this.f13343d;
        if (i != 0 && j <= this.f13341b[i - 1]) {
            m1218g(j, e);
            return;
        }
        if (this.f13340a && i >= this.f13341b.length) {
            m1221d();
        }
        int i2 = this.f13343d;
        if (i2 >= this.f13341b.length) {
            int m7334k = C0821e.m7334k(i2 + 1);
            long[] jArr = new long[m7334k];
            Object[] objArr = new Object[m7334k];
            long[] jArr2 = this.f13341b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f13342c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f13341b = jArr;
            this.f13342c = objArr;
        }
        this.f13341b[i2] = j;
        this.f13342c[i2] = e;
        this.f13343d = i2 + 1;
    }

    /* renamed from: b */
    public void m1223b() {
        int i = this.f13343d;
        Object[] objArr = this.f13342c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f13343d = 0;
        this.f13340a = false;
    }

    /* renamed from: c */
    public C4255d<E> clone() {
        try {
            C4255d<E> c4255d = (C4255d) super.clone();
            c4255d.f13341b = (long[]) this.f13341b.clone();
            c4255d.f13342c = (Object[]) this.f13342c.clone();
            return c4255d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: d */
    public final void m1221d() {
        int i = this.f13343d;
        long[] jArr = this.f13341b;
        Object[] objArr = this.f13342c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 >= i) {
                this.f13340a = false;
                this.f13343d = i4;
                return;
            }
            Object obj = objArr[i2];
            int i5 = i4;
            if (obj != f13339e) {
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

    /* renamed from: e */
    public E m1220e(long j) {
        return m1219f(j, null);
    }

    /* renamed from: f */
    public E m1219f(long j, E e) {
        int m7342c = C0821e.m7342c(this.f13341b, this.f13343d, j);
        if (m7342c >= 0) {
            Object[] objArr = this.f13342c;
            if (objArr[m7342c] != f13339e) {
                return (E) objArr[m7342c];
            }
        }
        return e;
    }

    /* renamed from: g */
    public void m1218g(long j, E e) {
        int m7342c = C0821e.m7342c(this.f13341b, this.f13343d, j);
        if (m7342c >= 0) {
            this.f13342c[m7342c] = e;
            return;
        }
        int i = m7342c ^ (-1);
        int i2 = this.f13343d;
        if (i < i2) {
            Object[] objArr = this.f13342c;
            if (objArr[i] == f13339e) {
                this.f13341b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i3 = i;
        if (this.f13340a) {
            i3 = i;
            if (i2 >= this.f13341b.length) {
                m1221d();
                i3 = C0821e.m7342c(this.f13341b, this.f13343d, j) ^ (-1);
            }
        }
        int i4 = this.f13343d;
        if (i4 >= this.f13341b.length) {
            int m7334k = C0821e.m7334k(i4 + 1);
            long[] jArr = new long[m7334k];
            Object[] objArr2 = new Object[m7334k];
            long[] jArr2 = this.f13341b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f13342c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f13341b = jArr;
            this.f13342c = objArr2;
        }
        int i5 = this.f13343d;
        if (i5 - i3 != 0) {
            long[] jArr3 = this.f13341b;
            int i6 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i6, i5 - i3);
            Object[] objArr4 = this.f13342c;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f13343d - i3);
        }
        this.f13341b[i3] = j;
        this.f13342c[i3] = e;
        this.f13343d++;
    }

    /* renamed from: h */
    public int m1217h() {
        if (this.f13340a) {
            m1221d();
        }
        return this.f13343d;
    }

    /* renamed from: i */
    public E m1216i(int i) {
        if (this.f13340a) {
            m1221d();
        }
        return (E) this.f13342c[i];
    }

    public String toString() {
        if (m1217h() <= 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb = new StringBuilder(this.f13343d * 28);
        sb.append('{');
        for (int i = 0; i < this.f13343d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.f13340a) {
                m1221d();
            }
            sb.append(this.f13341b[i]);
            sb.append('=');
            E m1216i = m1216i(i);
            if (m1216i != this) {
                sb.append(m1216i);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
