package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.e4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/e4.class */
public final class C7795e4 {

    /* renamed from: f */
    public static final C7795e4 f18229f = new C7795e4(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f18230a;

    /* renamed from: b */
    public int[] f18231b;

    /* renamed from: c */
    public Object[] f18232c;

    /* renamed from: d */
    public int f18233d;

    /* renamed from: e */
    public boolean f18234e;

    public C7795e4() {
        this(0, new int[8], new Object[8], true);
    }

    public C7795e4(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f18233d = -1;
        this.f18230a = i;
        this.f18231b = iArr;
        this.f18232c = objArr;
        this.f18234e = z;
    }

    /* renamed from: a */
    public static C7795e4 m19443a(C7795e4 e4Var, C7795e4 e4Var2) {
        int i = e4Var.f18230a + e4Var2.f18230a;
        int[] copyOf = Arrays.copyOf(e4Var.f18231b, i);
        System.arraycopy(e4Var2.f18231b, 0, copyOf, e4Var.f18230a, e4Var2.f18230a);
        Object[] copyOf2 = Arrays.copyOf(e4Var.f18232c, i);
        System.arraycopy(e4Var2.f18232c, 0, copyOf2, e4Var.f18230a, e4Var2.f18230a);
        return new C7795e4(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m19444a(int i, Object obj, AbstractC7962y4 y4Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            y4Var.mo18761e(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            y4Var.mo18773b(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            y4Var.mo18783a(i2, (AbstractC7791e0) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                y4Var.mo18785a(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(C7924t1.m18888e());
        } else if (y4Var.mo18789a() == AbstractC7869n1.C7874e.f18438k) {
            y4Var.mo18788a(i2);
            ((C7795e4) obj).m19439b(y4Var);
            y4Var.mo18775b(i2);
        } else {
            y4Var.mo18775b(i2);
            ((C7795e4) obj).m19439b(y4Var);
            y4Var.mo18788a(i2);
        }
    }

    /* renamed from: d */
    public static C7795e4 m19437d() {
        return f18229f;
    }

    /* renamed from: e */
    public static C7795e4 m19436e() {
        return new C7795e4();
    }

    /* renamed from: a */
    public final void m19446a() {
        this.f18234e = false;
    }

    /* renamed from: a */
    public final void m19445a(int i, Object obj) {
        if (this.f18234e) {
            int i2 = this.f18230a;
            if (i2 == this.f18231b.length) {
                int i3 = this.f18230a + (i2 < 4 ? 8 : i2 >> 1);
                this.f18231b = Arrays.copyOf(this.f18231b, i3);
                this.f18232c = Arrays.copyOf(this.f18232c, i3);
            }
            int[] iArr = this.f18231b;
            int i4 = this.f18230a;
            iArr[i4] = i;
            this.f18232c[i4] = obj;
            this.f18230a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m19442a(AbstractC7962y4 y4Var) throws IOException {
        if (y4Var.mo18789a() == AbstractC7869n1.C7874e.f18439l) {
            for (int i = this.f18230a - 1; i >= 0; i--) {
                y4Var.mo18782a(this.f18231b[i] >>> 3, this.f18232c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f18230a; i2++) {
            y4Var.mo18782a(this.f18231b[i2] >>> 3, this.f18232c[i2]);
        }
    }

    /* renamed from: a */
    public final void m19441a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f18230a; i2++) {
            C7946w2.m18842a(sb, i, String.valueOf(this.f18231b[i2] >>> 3), this.f18232c[i2]);
        }
    }

    /* renamed from: b */
    public final int m19440b() {
        int i;
        int i2 = this.f18233d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f18230a; i4++) {
            int i5 = this.f18231b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = AbstractC7918t0.m18953e(i6, ((Long) this.f18232c[i4]).longValue());
            } else if (i7 == 1) {
                i = AbstractC7918t0.m18945g(i6, ((Long) this.f18232c[i4]).longValue());
            } else if (i7 == 2) {
                i = AbstractC7918t0.m18962c(i6, (AbstractC7791e0) this.f18232c[i4]);
            } else if (i7 == 3) {
                i = (AbstractC7918t0.m18931m(i6) << 1) + ((C7795e4) this.f18232c[i4]).m19440b();
            } else if (i7 == 5) {
                i = AbstractC7918t0.m18938i(i6, ((Integer) this.f18232c[i4]).intValue());
            } else {
                throw new IllegalStateException(C7924t1.m18888e());
            }
            i3 += i;
        }
        this.f18233d = i3;
        return i3;
    }

    /* renamed from: b */
    public final void m19439b(AbstractC7962y4 y4Var) throws IOException {
        if (this.f18230a != 0) {
            if (y4Var.mo18789a() == AbstractC7869n1.C7874e.f18438k) {
                for (int i = 0; i < this.f18230a; i++) {
                    m19444a(this.f18231b[i], this.f18232c[i], y4Var);
                }
                return;
            }
            for (int i2 = this.f18230a - 1; i2 >= 0; i2--) {
                m19444a(this.f18231b[i2], this.f18232c[i2], y4Var);
            }
        }
    }

    /* renamed from: c */
    public final int m19438c() {
        int i = this.f18233d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f18230a; i3++) {
            i2 += AbstractC7918t0.m18957d(this.f18231b[i3] >>> 3, (AbstractC7791e0) this.f18232c[i3]);
        }
        this.f18233d = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C7795e4)) {
            return false;
        }
        C7795e4 e4Var = (C7795e4) obj;
        int i = this.f18230a;
        if (i != e4Var.f18230a) {
            return false;
        }
        int[] iArr = this.f18231b;
        int[] iArr2 = e4Var.f18231b;
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
        Object[] objArr = this.f18232c;
        Object[] objArr2 = e4Var.f18232c;
        int i3 = this.f18230a;
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
        int i = this.f18230a;
        int[] iArr = this.f18231b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f18232c;
        int i5 = this.f18230a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
