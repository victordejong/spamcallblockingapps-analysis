package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.s6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/s6.class */
public final class C8731s6 {

    /* renamed from: f */
    public static final C8731s6 f19962f = new C8731s6(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f19963a;

    /* renamed from: b */
    public int[] f19964b;

    /* renamed from: c */
    public Object[] f19965c;

    /* renamed from: d */
    public int f19966d;

    /* renamed from: e */
    public boolean f19967e;

    public C8731s6() {
        this(0, new int[8], new Object[8], true);
    }

    public C8731s6(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f19966d = -1;
        this.f19963a = i;
        this.f19964b = iArr;
        this.f19965c = objArr;
        this.f19967e = z;
    }

    /* renamed from: a */
    public static C8731s6 m17196a(C8731s6 s6Var, C8731s6 s6Var2) {
        int i = s6Var.f19963a + s6Var2.f19963a;
        int[] copyOf = Arrays.copyOf(s6Var.f19964b, i);
        System.arraycopy(s6Var2.f19964b, 0, copyOf, s6Var.f19963a, s6Var2.f19963a);
        Object[] copyOf2 = Arrays.copyOf(s6Var.f19965c, i);
        System.arraycopy(s6Var2.f19965c, 0, copyOf2, s6Var.f19963a, s6Var2.f19963a);
        return new C8731s6(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m17198a(int i, Object obj, AbstractC8677m7 m7Var) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            m7Var.mo17358e(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            m7Var.mo17370b(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            m7Var.mo17380a(i2, (AbstractC8736t2) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                m7Var.mo17359e(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(C8647j4.m17439e());
        } else if (m7Var.mo17386a() == AbstractC8568c4.C8573e.f19638k) {
            m7Var.mo17385a(i2);
            ((C8731s6) obj).m17193b(m7Var);
            m7Var.mo17372b(i2);
        } else {
            m7Var.mo17372b(i2);
            ((C8731s6) obj).m17193b(m7Var);
            m7Var.mo17385a(i2);
        }
    }

    /* renamed from: d */
    public static C8731s6 m17191d() {
        return f19962f;
    }

    /* renamed from: e */
    public static C8731s6 m17190e() {
        return new C8731s6();
    }

    /* renamed from: a */
    public final void m17200a() {
        this.f19967e = false;
    }

    /* renamed from: a */
    public final void m17199a(int i, Object obj) {
        if (this.f19967e) {
            int i2 = this.f19963a;
            if (i2 == this.f19964b.length) {
                int i3 = this.f19963a + (i2 < 4 ? 8 : i2 >> 1);
                this.f19964b = Arrays.copyOf(this.f19964b, i3);
                this.f19965c = Arrays.copyOf(this.f19965c, i3);
            }
            int[] iArr = this.f19964b;
            int i4 = this.f19963a;
            iArr[i4] = i;
            this.f19965c[i4] = obj;
            this.f19963a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m17197a(AbstractC8677m7 m7Var) throws IOException {
        if (m7Var.mo17386a() == AbstractC8568c4.C8573e.f19639l) {
            for (int i = this.f19963a - 1; i >= 0; i--) {
                m7Var.mo17379a(this.f19964b[i] >>> 3, this.f19965c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f19963a; i2++) {
            m7Var.mo17379a(this.f19964b[i2] >>> 3, this.f19965c[i2]);
        }
    }

    /* renamed from: a */
    public final void m17195a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f19963a; i2++) {
            C8675m5.m17387a(sb, i, String.valueOf(this.f19964b[i2] >>> 3), this.f19965c[i2]);
        }
    }

    /* renamed from: b */
    public final int m17194b() {
        int i;
        int i2 = this.f19966d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f19963a; i4++) {
            int i5 = this.f19964b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = AbstractC8632i3.m17511e(i6, ((Long) this.f19965c[i4]).longValue());
            } else if (i7 == 1) {
                i = AbstractC8632i3.m17503g(i6, ((Long) this.f19965c[i4]).longValue());
            } else if (i7 == 2) {
                i = AbstractC8632i3.m17518c(i6, (AbstractC8736t2) this.f19965c[i4]);
            } else if (i7 == 3) {
                i = (AbstractC8632i3.m17512e(i6) << 1) + ((C8731s6) this.f19965c[i4]).m17194b();
            } else if (i7 == 5) {
                i = AbstractC8632i3.m17496i(i6, ((Integer) this.f19965c[i4]).intValue());
            } else {
                throw new IllegalStateException(C8647j4.m17439e());
            }
            i3 += i;
        }
        this.f19966d = i3;
        return i3;
    }

    /* renamed from: b */
    public final void m17193b(AbstractC8677m7 m7Var) throws IOException {
        if (this.f19963a != 0) {
            if (m7Var.mo17386a() == AbstractC8568c4.C8573e.f19638k) {
                for (int i = 0; i < this.f19963a; i++) {
                    m17198a(this.f19964b[i], this.f19965c[i], m7Var);
                }
                return;
            }
            for (int i2 = this.f19963a - 1; i2 >= 0; i2--) {
                m17198a(this.f19964b[i2], this.f19965c[i2], m7Var);
            }
        }
    }

    /* renamed from: c */
    public final int m17192c() {
        int i = this.f19966d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19963a; i3++) {
            i2 += AbstractC8632i3.m17514d(this.f19964b[i3] >>> 3, (AbstractC8736t2) this.f19965c[i3]);
        }
        this.f19966d = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C8731s6)) {
            return false;
        }
        C8731s6 s6Var = (C8731s6) obj;
        int i = this.f19963a;
        if (i != s6Var.f19963a) {
            return false;
        }
        int[] iArr = this.f19964b;
        int[] iArr2 = s6Var.f19964b;
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
        Object[] objArr = this.f19965c;
        Object[] objArr2 = s6Var.f19965c;
        int i3 = this.f19963a;
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
        int i = this.f19963a;
        int[] iArr = this.f19964b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f19965c;
        int i5 = this.f19963a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
