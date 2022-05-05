package android.support.v4.b;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/e.class */
public final class e<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f124a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f125b;
    private long[] c;
    private Object[] d;
    private int e;

    public e() {
        this((byte) 0);
    }

    private e(byte b2) {
        this.f125b = false;
        int b3 = b.b(10);
        this.c = new long[b3];
        this.d = new Object[b3];
        this.e = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public e<E> clone() {
        e<E> eVar;
        try {
            eVar = (e) super.clone();
            try {
                eVar.c = (long[]) this.c.clone();
                eVar.d = (Object[]) this.d.clone();
            } catch (CloneNotSupportedException e) {
            }
        } catch (CloneNotSupportedException e2) {
            eVar = null;
        }
        return eVar;
    }

    private void d() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f124a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f125b = false;
        this.e = i2;
    }

    public final int a() {
        if (this.f125b) {
            d();
        }
        return this.e;
    }

    public final long a(int i) {
        if (this.f125b) {
            d();
        }
        return this.c[i];
    }

    public final E a(long j) {
        int a2 = b.a(this.c, this.e, j);
        return (a2 < 0 || this.d[a2] == f124a) ? null : (E) this.d[a2];
    }

    public final void a(long j, E e) {
        int a2 = b.a(this.c, this.e, j);
        if (a2 >= 0) {
            this.d[a2] = e;
            return;
        }
        int i = a2 ^ (-1);
        if (i >= this.e || this.d[i] != f124a) {
            int i2 = i;
            if (this.f125b) {
                i2 = i;
                if (this.e >= this.c.length) {
                    d();
                    i2 = b.a(this.c, this.e, j) ^ (-1);
                }
            }
            if (this.e >= this.c.length) {
                int b2 = b.b(this.e + 1);
                long[] jArr = new long[b2];
                Object[] objArr = new Object[b2];
                System.arraycopy(this.c, 0, jArr, 0, this.c.length);
                System.arraycopy(this.d, 0, objArr, 0, this.d.length);
                this.c = jArr;
                this.d = objArr;
            }
            if (this.e - i2 != 0) {
                System.arraycopy(this.c, i2, this.c, i2 + 1, this.e - i2);
                System.arraycopy(this.d, i2, this.d, i2 + 1, this.e - i2);
            }
            this.c[i2] = j;
            this.d[i2] = e;
            this.e++;
            return;
        }
        this.c[i] = j;
        this.d[i] = e;
    }

    public final E b(int i) {
        if (this.f125b) {
            d();
        }
        return (E) this.d[i];
    }

    public final void b() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f125b = false;
    }

    public final void b(long j) {
        int a2 = b.a(this.c, this.e, j);
        if (a2 >= 0 && this.d[a2] != f124a) {
            this.d[a2] = f124a;
            this.f125b = true;
        }
    }

    public final String toString() {
        String sb;
        if (a() <= 0) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.e * 28);
            sb2.append('{');
            for (int i = 0; i < this.e; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                sb2.append(a(i));
                sb2.append('=');
                E b2 = b(i);
                if (b2 != this) {
                    sb2.append(b2);
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
