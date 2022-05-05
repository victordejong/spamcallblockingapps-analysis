package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
/* renamed from: h.i.a.e.j.g.j5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/j5.class */
public final class C7623j5 extends C7683r4<C7623j5> implements Cloneable {

    /* renamed from: c */
    public String[] f17894c;

    /* renamed from: d */
    public String[] f17895d;

    /* renamed from: e */
    public int[] f17896e = C7739z4.f18135a;

    /* renamed from: f */
    public long[] f17897f;

    /* renamed from: g */
    public long[] f17898g;

    public C7623j5() {
        String[] strArr = C7739z4.f18137c;
        this.f17894c = strArr;
        this.f17895d = strArr;
        long[] jArr = C7739z4.f18136b;
        this.f17897f = jArr;
        this.f17898g = jArr;
        this.f18023b = null;
        this.f18071a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: a */
    public final void mo19697a(C7669p4 p4Var) throws IOException {
        String[] strArr = this.f17894c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.f17894c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    p4Var.m19850a(1, str);
                }
                i2++;
            }
        }
        String[] strArr3 = this.f17895d;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.f17895d;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    p4Var.m19850a(2, str2);
                }
                i3++;
            }
        }
        int[] iArr = this.f17896e;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f17896e;
                if (i4 >= iArr2.length) {
                    break;
                }
                p4Var.m19840b(3, iArr2[i4]);
                i4++;
            }
        }
        long[] jArr = this.f17897f;
        if (jArr != null && jArr.length > 0) {
            int i5 = 0;
            while (true) {
                long[] jArr2 = this.f17897f;
                if (i5 >= jArr2.length) {
                    break;
                }
                p4Var.m19853a(4, jArr2[i5]);
                i5++;
            }
        }
        long[] jArr3 = this.f17898g;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.f17898g;
                if (i >= jArr4.length) {
                    break;
                }
                p4Var.m19853a(5, jArr4[i]);
                i++;
            }
        }
        super.mo19697a(p4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: e */
    public final int mo19694e() {
        long[] jArr;
        long[] jArr2;
        int[] iArr;
        int e = super.mo19694e();
        String[] strArr = this.f17894c;
        int i = 0;
        int i2 = e;
        if (strArr != null) {
            i2 = e;
            if (strArr.length > 0) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    String[] strArr2 = this.f17894c;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i3];
                    i4 = i4;
                    i5 = i5;
                    if (str != null) {
                        i5++;
                        i4 += C7669p4.m19844a(str);
                    }
                    i3++;
                }
                i2 = e + i4 + (i5 * 1);
            }
        }
        String[] strArr3 = this.f17895d;
        int i6 = i2;
        if (strArr3 != null) {
            i6 = i2;
            if (strArr3.length > 0) {
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    String[] strArr4 = this.f17895d;
                    if (i7 >= strArr4.length) {
                        break;
                    }
                    String str2 = strArr4[i7];
                    i8 = i8;
                    i9 = i9;
                    if (str2 != null) {
                        i9++;
                        i8 += C7669p4.m19844a(str2);
                    }
                    i7++;
                }
                i6 = i2 + i8 + (i9 * 1);
            }
        }
        int[] iArr2 = this.f17896e;
        int i10 = i6;
        if (iArr2 != null) {
            i10 = i6;
            if (iArr2.length > 0) {
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    iArr = this.f17896e;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    i12 += C7669p4.m19831d(iArr[i11]);
                    i11++;
                }
                i10 = i6 + i12 + (iArr.length * 1);
            }
        }
        long[] jArr3 = this.f17897f;
        int i13 = i10;
        if (jArr3 != null) {
            i13 = i10;
            if (jArr3.length > 0) {
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    jArr2 = this.f17897f;
                    if (i14 >= jArr2.length) {
                        break;
                    }
                    i15 += C7669p4.m19832c(jArr2[i14]);
                    i14++;
                }
                i13 = i10 + i15 + (jArr2.length * 1);
            }
        }
        long[] jArr4 = this.f17898g;
        int i16 = i13;
        if (jArr4 != null) {
            i16 = i13;
            if (jArr4.length > 0) {
                int i17 = 0;
                while (true) {
                    jArr = this.f17898g;
                    if (i >= jArr.length) {
                        break;
                    }
                    i17 += C7669p4.m19832c(jArr[i]);
                    i++;
                }
                i16 = i13 + i17 + (jArr.length * 1);
            }
        }
        return i16;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7623j5)) {
            return false;
        }
        C7623j5 j5Var = (C7623j5) obj;
        if (!C7711v4.m19730a(this.f17894c, j5Var.f17894c) || !C7711v4.m19730a(this.f17895d, j5Var.f17895d) || !C7711v4.m19734a(this.f17896e, j5Var.f17896e) || !C7711v4.m19732a(this.f17897f, j5Var.f17897f) || !C7711v4.m19732a(this.f17898g, j5Var.f17898g)) {
            return false;
        }
        C7697t4 t4Var = this.f18023b;
        if (t4Var != null && !t4Var.m19790d()) {
            return this.f18023b.equals(j5Var.f18023b);
        }
        C7697t4 t4Var2 = j5Var.f18023b;
        return t4Var2 == null || t4Var2.m19790d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: f */
    public final /* synthetic */ C7718w4 mo19693f() throws CloneNotSupportedException {
        return (C7623j5) clone();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4
    /* renamed from: g */
    public final /* synthetic */ C7623j5 mo19812g() throws CloneNotSupportedException {
        return (C7623j5) clone();
    }

    /* renamed from: h */
    public final C7623j5 clone() {
        try {
            C7623j5 j5Var = (C7623j5) super.clone();
            String[] strArr = this.f17894c;
            if (strArr != null && strArr.length > 0) {
                j5Var.f17894c = (String[]) strArr.clone();
            }
            String[] strArr2 = this.f17895d;
            if (strArr2 != null && strArr2.length > 0) {
                j5Var.f17895d = (String[]) strArr2.clone();
            }
            int[] iArr = this.f17896e;
            if (iArr != null && iArr.length > 0) {
                j5Var.f17896e = (int[]) iArr.clone();
            }
            long[] jArr = this.f17897f;
            if (jArr != null && jArr.length > 0) {
                j5Var.f17897f = (long[]) jArr.clone();
            }
            long[] jArr2 = this.f17898g;
            if (jArr2 != null && jArr2.length > 0) {
                j5Var.f17898g = (long[]) jArr2.clone();
            }
            return j5Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        int hashCode = C7623j5.class.getName().hashCode();
        int a = C7711v4.m19731a(this.f17894c);
        int a2 = C7711v4.m19731a(this.f17895d);
        int a3 = C7711v4.m19735a(this.f17896e);
        int a4 = C7711v4.m19733a(this.f17897f);
        int a5 = C7711v4.m19733a(this.f17898g);
        C7697t4 t4Var = this.f18023b;
        return ((((((((((((hashCode + 527) * 31) + a) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + a5) * 31) + ((t4Var == null || t4Var.m19790d()) ? 0 : this.f18023b.hashCode());
    }
}
