package androidx.b;
/* loaded from: classes-dex2jar.jar:androidx/b/h.class */
public final class h<E> implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f1191d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public boolean f1192a;

    /* renamed from: b  reason: collision with root package name */
    public Object[] f1193b;

    /* renamed from: c  reason: collision with root package name */
    public int f1194c;
    private int[] e;

    public h() {
        this(10);
    }

    public h(int i) {
        this.f1192a = false;
        if (i == 0) {
            this.e = c.f1163a;
            this.f1193b = c.f1165c;
            return;
        }
        int a2 = c.a(i);
        this.e = new int[a2];
        this.f1193b = new Object[a2];
    }

    private void c() {
        int i = this.f1194c;
        int[] iArr = this.e;
        Object[] objArr = this.f1193b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f1191d) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1192a = false;
        this.f1194c = i2;
    }

    public final int a(int i) {
        if (this.f1192a) {
            c();
        }
        return this.e[i];
    }

    public final int a(E e) {
        if (this.f1192a) {
            c();
        }
        for (int i = 0; i < this.f1194c; i++) {
            if (this.f1193b[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.e = (int[]) this.e.clone();
            hVar.f1193b = (Object[]) this.f1193b.clone();
            return hVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final E a(int i, E e) {
        int a2 = c.a(this.e, this.f1194c, i);
        if (a2 >= 0) {
            Object[] objArr = this.f1193b;
            if (objArr[a2] != f1191d) {
                return (E) objArr[a2];
            }
        }
        return e;
    }

    public final int b() {
        if (this.f1192a) {
            c();
        }
        return this.f1194c;
    }

    public final E b(int i) {
        if (this.f1192a) {
            c();
        }
        return (E) this.f1193b[i];
    }

    public final void b(int i, E e) {
        int a2 = c.a(this.e, this.f1194c, i);
        if (a2 >= 0) {
            this.f1193b[a2] = e;
            return;
        }
        int i2 = a2 ^ (-1);
        int i3 = this.f1194c;
        if (i2 < i3) {
            Object[] objArr = this.f1193b;
            if (objArr[i2] == f1191d) {
                this.e[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i4 = i2;
        if (this.f1192a) {
            i4 = i2;
            if (i3 >= this.e.length) {
                c();
                i4 = c.a(this.e, this.f1194c, i) ^ (-1);
            }
        }
        int i5 = this.f1194c;
        if (i5 >= this.e.length) {
            int a3 = c.a(i5 + 1);
            int[] iArr = new int[a3];
            Object[] objArr2 = new Object[a3];
            int[] iArr2 = this.e;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1193b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.e = iArr;
            this.f1193b = objArr2;
        }
        int i6 = this.f1194c;
        if (i6 - i4 != 0) {
            int[] iArr3 = this.e;
            int i7 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i7, i6 - i4);
            Object[] objArr4 = this.f1193b;
            System.arraycopy(objArr4, i4, objArr4, i7, this.f1194c - i4);
        }
        this.e[i4] = i;
        this.f1193b[i4] = e;
        this.f1194c++;
    }

    public final void c(int i, E e) {
        int i2 = this.f1194c;
        if (i2 == 0 || i > this.e[i2 - 1]) {
            if (this.f1192a && i2 >= this.e.length) {
                c();
            }
            int i3 = this.f1194c;
            if (i3 >= this.e.length) {
                int a2 = c.a(i3 + 1);
                int[] iArr = new int[a2];
                Object[] objArr = new Object[a2];
                int[] iArr2 = this.e;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.f1193b;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.e = iArr;
                this.f1193b = objArr;
            }
            this.e[i3] = i;
            this.f1193b[i3] = e;
            this.f1194c = i3 + 1;
            return;
        }
        b(i, e);
    }

    public final String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1194c * 28);
        sb.append('{');
        for (int i = 0; i < this.f1194c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(a(i));
            sb.append('=');
            E b2 = b(i);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
