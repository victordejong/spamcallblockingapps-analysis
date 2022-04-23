package p012b.p035f;
/* renamed from: b.f.h */
/* loaded from: classes-dex2jar.jar:b/f/h.class */
public class C0794h<E> implements Cloneable {

    /* renamed from: e */
    public static final Object f3710e = new Object();

    /* renamed from: a */
    public boolean f3711a;

    /* renamed from: b */
    public int[] f3712b;

    /* renamed from: c */
    public Object[] f3713c;

    /* renamed from: d */
    public int f3714d;

    public C0794h() {
        this(10);
    }

    public C0794h(int i) {
        this.f3711a = false;
        if (i == 0) {
            this.f3712b = C0784c.f3672a;
            this.f3713c = C0784c.f3674c;
            return;
        }
        int b = C0784c.m36058b(i);
        this.f3712b = new int[b];
        this.f3713c = new Object[b];
    }

    /* renamed from: a */
    public E m36010a(int i) {
        return m36007b(i, null);
    }

    /* renamed from: a */
    public void m36009a(int i, E e) {
        int i2 = this.f3714d;
        if (i2 == 0 || i > this.f3712b[i2 - 1]) {
            if (this.f3711a && this.f3714d >= this.f3712b.length) {
                m36002e();
            }
            int i3 = this.f3714d;
            if (i3 >= this.f3712b.length) {
                int b = C0784c.m36058b(i3 + 1);
                int[] iArr = new int[b];
                Object[] objArr = new Object[b];
                int[] iArr2 = this.f3712b;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.f3713c;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f3712b = iArr;
                this.f3713c = objArr;
            }
            this.f3712b[i3] = i;
            this.f3713c[i3] = e;
            this.f3714d = i3 + 1;
            return;
        }
        m36004c(i, e);
    }

    /* renamed from: b */
    public int m36008b(int i) {
        if (this.f3711a) {
            m36002e();
        }
        return C0784c.m36060a(this.f3712b, this.f3714d, i);
    }

    /* renamed from: b */
    public E m36007b(int i, E e) {
        int a = C0784c.m36060a(this.f3712b, this.f3714d, i);
        if (a >= 0) {
            Object[] objArr = this.f3713c;
            if (objArr[a] != f3710e) {
                return (E) objArr[a];
            }
        }
        return e;
    }

    /* renamed from: c */
    public int m36005c(int i) {
        if (this.f3711a) {
            m36002e();
        }
        return this.f3712b[i];
    }

    /* renamed from: c */
    public void m36006c() {
        int i = this.f3714d;
        Object[] objArr = this.f3713c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f3714d = 0;
        this.f3711a = false;
    }

    /* renamed from: c */
    public void m36004c(int i, E e) {
        int a = C0784c.m36060a(this.f3712b, this.f3714d, i);
        if (a >= 0) {
            this.f3713c[a] = e;
            return;
        }
        int i2 = a ^ (-1);
        if (i2 < this.f3714d) {
            Object[] objArr = this.f3713c;
            if (objArr[i2] == f3710e) {
                this.f3712b[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        int i3 = i2;
        if (this.f3711a) {
            i3 = i2;
            if (this.f3714d >= this.f3712b.length) {
                m36002e();
                i3 = C0784c.m36060a(this.f3712b, this.f3714d, i) ^ (-1);
            }
        }
        int i4 = this.f3714d;
        if (i4 >= this.f3712b.length) {
            int b = C0784c.m36058b(i4 + 1);
            int[] iArr = new int[b];
            Object[] objArr2 = new Object[b];
            int[] iArr2 = this.f3712b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f3713c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f3712b = iArr;
            this.f3713c = objArr2;
        }
        int i5 = this.f3714d;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f3712b;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Object[] objArr4 = this.f3713c;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f3714d - i3);
        }
        this.f3712b[i3] = i;
        this.f3713c[i3] = e;
        this.f3714d++;
    }

    public C0794h<E> clone() {
        try {
            C0794h<E> hVar = (C0794h) super.clone();
            hVar.f3712b = (int[]) this.f3712b.clone();
            hVar.f3713c = (Object[]) this.f3713c.clone();
            return hVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: d */
    public void m36003d(int i) {
        int a = C0784c.m36060a(this.f3712b, this.f3714d, i);
        if (a >= 0) {
            Object[] objArr = this.f3713c;
            Object obj = objArr[a];
            Object obj2 = f3710e;
            if (obj != obj2) {
                objArr[a] = obj2;
                this.f3711a = true;
            }
        }
    }

    /* renamed from: e */
    public E m36001e(int i) {
        if (this.f3711a) {
            m36002e();
        }
        return (E) this.f3713c[i];
    }

    /* renamed from: e */
    public final void m36002e() {
        int i = this.f3714d;
        int[] iArr = this.f3712b;
        Object[] objArr = this.f3713c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = i2;
            if (obj != f3710e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f3711a = false;
        this.f3714d = i2;
    }

    /* renamed from: g */
    public int m36000g() {
        if (this.f3711a) {
            m36002e();
        }
        return this.f3714d;
    }

    public String toString() {
        if (m36000g() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3714d * 28);
        sb.append('{');
        for (int i = 0; i < this.f3714d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m36005c(i));
            sb.append('=');
            E e = m36001e(i);
            if (e != this) {
                sb.append(e);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
