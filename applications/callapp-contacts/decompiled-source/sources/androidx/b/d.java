package androidx.b;
/* loaded from: classes-dex2jar.jar:androidx/b/d.class */
public final class d<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1166a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f1167b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f1168c;

    /* renamed from: d  reason: collision with root package name */
    private Object[] f1169d;
    private int e;

    public d() {
        this(10);
    }

    public d(int i) {
        this.f1167b = false;
        if (i == 0) {
            this.f1168c = c.f1164b;
            this.f1169d = c.f1165c;
            return;
        }
        int b2 = c.b(i);
        this.f1168c = new long[b2];
        this.f1169d = new Object[b2];
    }

    private void e() {
        int i = this.e;
        long[] jArr = this.f1168c;
        Object[] objArr = this.f1169d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f1166a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1167b = false;
        this.e = i2;
    }

    /* renamed from: a */
    public final d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f1168c = (long[]) this.f1168c.clone();
            dVar.f1169d = (Object[]) this.f1169d.clone();
            return dVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final E a(long j, E e) {
        int a2 = c.a(this.f1168c, this.e, j);
        if (a2 >= 0) {
            Object[] objArr = this.f1169d;
            if (objArr[a2] != f1166a) {
                return (E) objArr[a2];
            }
        }
        return e;
    }

    public final void a(int i) {
        Object[] objArr = this.f1169d;
        Object obj = objArr[i];
        Object obj2 = f1166a;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f1167b = true;
        }
    }

    public final void a(long j) {
        int a2 = c.a(this.f1168c, this.e, j);
        if (a2 >= 0) {
            Object[] objArr = this.f1169d;
            Object obj = objArr[a2];
            Object obj2 = f1166a;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f1167b = true;
            }
        }
    }

    public final int b() {
        if (this.f1167b) {
            e();
        }
        return this.e;
    }

    public final int b(long j) {
        if (this.f1167b) {
            e();
        }
        return c.a(this.f1168c, this.e, j);
    }

    public final long b(int i) {
        if (this.f1167b) {
            e();
        }
        return this.f1168c[i];
    }

    public final void b(long j, E e) {
        int a2 = c.a(this.f1168c, this.e, j);
        if (a2 >= 0) {
            this.f1169d[a2] = e;
            return;
        }
        int i = a2 ^ (-1);
        int i2 = this.e;
        if (i < i2) {
            Object[] objArr = this.f1169d;
            if (objArr[i] == f1166a) {
                this.f1168c[i] = j;
                objArr[i] = e;
                return;
            }
        }
        int i3 = i;
        if (this.f1167b) {
            i3 = i;
            if (i2 >= this.f1168c.length) {
                e();
                i3 = c.a(this.f1168c, this.e, j) ^ (-1);
            }
        }
        int i4 = this.e;
        if (i4 >= this.f1168c.length) {
            int b2 = c.b(i4 + 1);
            long[] jArr = new long[b2];
            Object[] objArr2 = new Object[b2];
            long[] jArr2 = this.f1168c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1169d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1168c = jArr;
            this.f1169d = objArr2;
        }
        int i5 = this.e;
        if (i5 - i3 != 0) {
            long[] jArr3 = this.f1168c;
            int i6 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i6, i5 - i3);
            Object[] objArr4 = this.f1169d;
            System.arraycopy(objArr4, i3, objArr4, i6, this.e - i3);
        }
        this.f1168c[i3] = j;
        this.f1169d[i3] = e;
        this.e++;
    }

    public final E c(int i) {
        if (this.f1167b) {
            e();
        }
        return (E) this.f1169d[i];
    }

    public final void c(long j, E e) {
        int i = this.e;
        if (i == 0 || j > this.f1168c[i - 1]) {
            if (this.f1167b && i >= this.f1168c.length) {
                e();
            }
            int i2 = this.e;
            if (i2 >= this.f1168c.length) {
                int b2 = c.b(i2 + 1);
                long[] jArr = new long[b2];
                Object[] objArr = new Object[b2];
                long[] jArr2 = this.f1168c;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.f1169d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f1168c = jArr;
                this.f1169d = objArr;
            }
            this.f1168c[i2] = j;
            this.f1169d[i2] = e;
            this.e = i2 + 1;
            return;
        }
        b(j, e);
    }

    public final boolean c() {
        return b() == 0;
    }

    public final boolean c(long j) {
        return b(j) >= 0;
    }

    public final void d() {
        int i = this.e;
        Object[] objArr = this.f1169d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f1167b = false;
    }

    public final String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(b(i));
            sb.append('=');
            E c2 = c(i);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
