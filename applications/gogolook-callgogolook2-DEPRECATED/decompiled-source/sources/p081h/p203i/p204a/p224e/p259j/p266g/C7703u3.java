package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
/* renamed from: h.i.a.e.j.g.u3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/u3.class */
public final class C7703u3 {

    /* renamed from: f */
    public static final C7703u3 f18038f = new C7703u3(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f18039a;

    /* renamed from: b */
    public int[] f18040b;

    /* renamed from: c */
    public Object[] f18041c;

    /* renamed from: d */
    public int f18042d;

    /* renamed from: e */
    public boolean f18043e;

    public C7703u3() {
        this(0, new int[8], new Object[8], true);
    }

    public C7703u3(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f18042d = -1;
        this.f18039a = i;
        this.f18040b = iArr;
        this.f18041c = objArr;
        this.f18043e = z;
    }

    /* renamed from: a */
    public static C7703u3 m19781a(C7703u3 u3Var, C7703u3 u3Var2) {
        int i = u3Var.f18039a + u3Var2.f18039a;
        int[] copyOf = Arrays.copyOf(u3Var.f18040b, i);
        System.arraycopy(u3Var2.f18040b, 0, copyOf, u3Var.f18039a, u3Var2.f18039a);
        Object[] copyOf2 = Arrays.copyOf(u3Var.f18041c, i);
        System.arraycopy(u3Var2.f18041c, 0, copyOf2, u3Var.f18039a, u3Var2.f18039a);
        return new C7703u3(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m19783a(int i, Object obj, AbstractC7662o4 o4Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            o4Var.mo19895e(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            o4Var.mo19907b(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            o4Var.mo19917a(i2, (AbstractC7539a0) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                o4Var.mo19919a(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(C7633l1.m20077c());
        } else if (o4Var.mo19883u() == AbstractC7583f1.C7588e.f17851k) {
            o4Var.mo19909b(i2);
            ((C7703u3) obj).m19778b(o4Var);
            o4Var.mo19922a(i2);
        } else {
            o4Var.mo19922a(i2);
            ((C7703u3) obj).m19778b(o4Var);
            o4Var.mo19909b(i2);
        }
    }

    /* renamed from: d */
    public static C7703u3 m19776d() {
        return f18038f;
    }

    /* renamed from: e */
    public static C7703u3 m19775e() {
        return new C7703u3();
    }

    /* renamed from: a */
    public final int m19785a() {
        int i;
        int i2 = this.f18042d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f18039a; i4++) {
            int i5 = this.f18040b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = AbstractC7639m0.m20031e(i6, ((Long) this.f18041c[i4]).longValue());
            } else if (i7 == 1) {
                i = AbstractC7639m0.m20023g(i6, ((Long) this.f18041c[i4]).longValue());
            } else if (i7 == 2) {
                i = AbstractC7639m0.m20040c(i6, (AbstractC7539a0) this.f18041c[i4]);
            } else if (i7 == 3) {
                i = (AbstractC7639m0.m20032e(i6) << 1) + ((C7703u3) this.f18041c[i4]).m19785a();
            } else if (i7 == 5) {
                i = AbstractC7639m0.m20016i(i6, ((Integer) this.f18041c[i4]).intValue());
            } else {
                throw new IllegalStateException(C7633l1.m20077c());
            }
            i3 += i;
        }
        this.f18042d = i3;
        return i3;
    }

    /* renamed from: a */
    public final void m19784a(int i, Object obj) {
        if (this.f18043e) {
            int i2 = this.f18039a;
            if (i2 == this.f18040b.length) {
                int i3 = this.f18039a + (i2 < 4 ? 8 : i2 >> 1);
                this.f18040b = Arrays.copyOf(this.f18040b, i3);
                this.f18041c = Arrays.copyOf(this.f18041c, i3);
            }
            int[] iArr = this.f18040b;
            int i4 = this.f18039a;
            iArr[i4] = i;
            this.f18041c[i4] = obj;
            this.f18039a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m19782a(AbstractC7662o4 o4Var) throws IOException {
        if (o4Var.mo19883u() == AbstractC7583f1.C7588e.f17852l) {
            for (int i = this.f18039a - 1; i >= 0; i--) {
                o4Var.mo19916a(this.f18040b[i] >>> 3, this.f18041c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f18039a; i2++) {
            o4Var.mo19916a(this.f18040b[i2] >>> 3, this.f18041c[i2]);
        }
    }

    /* renamed from: a */
    public final void m19780a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f18039a; i2++) {
            C7653n2.m19964a(sb, i, String.valueOf(this.f18040b[i2] >>> 3), this.f18041c[i2]);
        }
    }

    /* renamed from: b */
    public final int m19779b() {
        int i = this.f18042d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f18039a; i3++) {
            i2 += AbstractC7639m0.m20035d(this.f18040b[i3] >>> 3, (AbstractC7539a0) this.f18041c[i3]);
        }
        this.f18042d = i2;
        return i2;
    }

    /* renamed from: b */
    public final void m19778b(AbstractC7662o4 o4Var) throws IOException {
        if (this.f18039a != 0) {
            if (o4Var.mo19883u() == AbstractC7583f1.C7588e.f17851k) {
                for (int i = 0; i < this.f18039a; i++) {
                    m19783a(this.f18040b[i], this.f18041c[i], o4Var);
                }
                return;
            }
            for (int i2 = this.f18039a - 1; i2 >= 0; i2--) {
                m19783a(this.f18040b[i2], this.f18041c[i2], o4Var);
            }
        }
    }

    /* renamed from: c */
    public final void m19777c() {
        this.f18043e = false;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C7703u3)) {
            return false;
        }
        C7703u3 u3Var = (C7703u3) obj;
        int i = this.f18039a;
        if (i != u3Var.f18039a) {
            return false;
        }
        int[] iArr = this.f18040b;
        int[] iArr2 = u3Var.f18040b;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        Object[] objArr = this.f18041c;
        Object[] objArr2 = u3Var.f18041c;
        int i3 = this.f18039a;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!objArr[i4].equals(objArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = this.f18039a;
        int[] iArr = this.f18040b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f18041c;
        int i5 = this.f18039a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
