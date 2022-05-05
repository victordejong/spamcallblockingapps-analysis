package android.support.v4.b;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/i.class */
public final class i<E> implements Cloneable {
    private static final Object d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public boolean f137a;

    /* renamed from: b  reason: collision with root package name */
    public int[] f138b;
    public int c;
    private Object[] e;

    public i() {
        this(10);
    }

    public i(int i) {
        this.f137a = false;
        if (i == 0) {
            this.f138b = b.f120a;
            this.e = b.c;
        } else {
            int a2 = b.a(i);
            this.f138b = new int[a2];
            this.e = new Object[a2];
        }
        this.c = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public i<E> clone() {
        i<E> iVar;
        try {
            iVar = (i) super.clone();
            try {
                iVar.f138b = (int[]) this.f138b.clone();
                iVar.e = (Object[]) this.e.clone();
            } catch (CloneNotSupportedException e) {
            }
        } catch (CloneNotSupportedException e2) {
            iVar = null;
        }
        return iVar;
    }

    public final E a(int i) {
        int a2 = b.a(this.f138b, this.c, i);
        return (a2 < 0 || this.e[a2] == d) ? null : (E) this.e[a2];
    }

    public final void a() {
        int i = this.c;
        int[] iArr = this.f138b;
        Object[] objArr = this.e;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != d) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f137a = false;
        this.c = i2;
    }

    public final void a(int i, E e) {
        int a2 = b.a(this.f138b, this.c, i);
        if (a2 >= 0) {
            this.e[a2] = e;
            return;
        }
        int i2 = a2 ^ (-1);
        if (i2 >= this.c || this.e[i2] != d) {
            int i3 = i2;
            if (this.f137a) {
                i3 = i2;
                if (this.c >= this.f138b.length) {
                    a();
                    i3 = b.a(this.f138b, this.c, i) ^ (-1);
                }
            }
            if (this.c >= this.f138b.length) {
                int a3 = b.a(this.c + 1);
                int[] iArr = new int[a3];
                Object[] objArr = new Object[a3];
                System.arraycopy(this.f138b, 0, iArr, 0, this.f138b.length);
                System.arraycopy(this.e, 0, objArr, 0, this.e.length);
                this.f138b = iArr;
                this.e = objArr;
            }
            if (this.c - i3 != 0) {
                System.arraycopy(this.f138b, i3, this.f138b, i3 + 1, this.c - i3);
                System.arraycopy(this.e, i3, this.e, i3 + 1, this.c - i3);
            }
            this.f138b[i3] = i;
            this.e[i3] = e;
            this.c++;
            return;
        }
        this.f138b[i2] = i;
        this.e[i2] = e;
    }

    public final int b() {
        if (this.f137a) {
            a();
        }
        return this.c;
    }

    public final void b(int i) {
        int a2 = b.a(this.f138b, this.c, i);
        if (a2 >= 0 && this.e[a2] != d) {
            this.e[a2] = d;
            this.f137a = true;
        }
    }

    public final int c(int i) {
        if (this.f137a) {
            a();
        }
        return this.f138b[i];
    }

    public final void c() {
        int i = this.c;
        Object[] objArr = this.e;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.c = 0;
        this.f137a = false;
    }

    public final E d(int i) {
        if (this.f137a) {
            a();
        }
        return (E) this.e[i];
    }

    public final String toString() {
        String sb;
        if (b() <= 0) {
            sb = "{}";
        } else {
            StringBuilder sb2 = new StringBuilder(this.c * 28);
            sb2.append('{');
            for (int i = 0; i < this.c; i++) {
                if (i > 0) {
                    sb2.append(", ");
                }
                sb2.append(c(i));
                sb2.append('=');
                E d2 = d(i);
                if (d2 != this) {
                    sb2.append(d2);
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
