package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.g.m5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m5.class */
public final class C7649m5 extends C7683r4<C7649m5> implements Cloneable {

    /* renamed from: i */
    public byte[] f17943i;

    /* renamed from: k */
    public byte[] f17945k;

    /* renamed from: r */
    public byte[] f17952r;

    /* renamed from: c */
    public long f17937c = 0;

    /* renamed from: d */
    public long f17938d = 0;

    /* renamed from: e */
    public String f17939e = "";

    /* renamed from: f */
    public int f17940f = 0;

    /* renamed from: g */
    public String f17941g = "";

    /* renamed from: h */
    public C7656n5[] f17942h = C7656n5.m19962i();

    /* renamed from: j */
    public C7548a5 f17944j = null;

    /* renamed from: l */
    public String f17946l = "";

    /* renamed from: m */
    public String f17947m = "";

    /* renamed from: n */
    public C7623j5 f17948n = null;

    /* renamed from: o */
    public String f17949o = "";

    /* renamed from: p */
    public long f17950p = 180000;

    /* renamed from: q */
    public C7630k5 f17951q = null;

    /* renamed from: s */
    public String f17953s = "";

    /* renamed from: t */
    public int[] f17954t = C7739z4.f18135a;

    /* renamed from: u */
    public C7556b5 f17955u = null;

    /* renamed from: v */
    public boolean f17956v = false;

    public C7649m5() {
        byte[] bArr = C7739z4.f18139e;
        this.f17943i = bArr;
        this.f17945k = bArr;
        this.f17952r = bArr;
        this.f18023b = null;
        this.f18071a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: a */
    public final void mo19697a(C7669p4 p4Var) throws IOException {
        long j = this.f17937c;
        if (j != 0) {
            p4Var.m19853a(1, j);
        }
        String str = this.f17939e;
        if (str != null && !str.equals("")) {
            p4Var.m19850a(2, this.f17939e);
        }
        C7656n5[] n5VarArr = this.f17942h;
        int i = 0;
        if (n5VarArr != null && n5VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C7656n5[] n5VarArr2 = this.f17942h;
                if (i2 >= n5VarArr2.length) {
                    break;
                }
                C7656n5 n5Var = n5VarArr2[i2];
                if (n5Var != null) {
                    p4Var.m19851a(3, n5Var);
                }
                i2++;
            }
        }
        if (!Arrays.equals(this.f17943i, C7739z4.f18139e)) {
            p4Var.m19848a(4, this.f17943i);
        }
        if (!Arrays.equals(this.f17945k, C7739z4.f18139e)) {
            p4Var.m19848a(6, this.f17945k);
        }
        C7623j5 j5Var = this.f17948n;
        if (j5Var != null) {
            p4Var.m19851a(7, j5Var);
        }
        String str2 = this.f17946l;
        if (str2 != null && !str2.equals("")) {
            p4Var.m19850a(8, this.f17946l);
        }
        C7548a5 a5Var = this.f17944j;
        if (a5Var != null) {
            p4Var.m19852a(9, a5Var);
        }
        int i3 = this.f17940f;
        if (i3 != 0) {
            p4Var.m19840b(11, i3);
        }
        String str3 = this.f17947m;
        if (str3 != null && !str3.equals("")) {
            p4Var.m19850a(13, this.f17947m);
        }
        String str4 = this.f17949o;
        if (str4 != null && !str4.equals("")) {
            p4Var.m19850a(14, this.f17949o);
        }
        long j2 = this.f17950p;
        if (j2 != 180000) {
            p4Var.m19854a(15, 0);
            p4Var.m19847a(C7669p4.m19835b(j2));
        }
        C7630k5 k5Var = this.f17951q;
        if (k5Var != null) {
            p4Var.m19851a(16, k5Var);
        }
        long j3 = this.f17938d;
        if (j3 != 0) {
            p4Var.m19853a(17, j3);
        }
        if (!Arrays.equals(this.f17952r, C7739z4.f18139e)) {
            p4Var.m19848a(18, this.f17952r);
        }
        int[] iArr = this.f17954t;
        if (iArr != null && iArr.length > 0) {
            while (true) {
                int[] iArr2 = this.f17954t;
                if (i >= iArr2.length) {
                    break;
                }
                p4Var.m19840b(20, iArr2[i]);
                i++;
            }
        }
        C7556b5 b5Var = this.f17955u;
        if (b5Var != null) {
            p4Var.m19852a(23, b5Var);
        }
        String str5 = this.f17953s;
        if (str5 != null && !str5.equals("")) {
            p4Var.m19850a(24, this.f17953s);
        }
        boolean z = this.f17956v;
        if (z) {
            p4Var.m19849a(25, z);
        }
        String str6 = this.f17941g;
        if (str6 != null && !str6.equals("")) {
            p4Var.m19850a(26, this.f17941g);
        }
        super.mo19697a(p4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: e */
    public final int mo19694e() {
        int[] iArr;
        int e = super.mo19694e();
        long j = this.f17937c;
        int i = e;
        if (j != 0) {
            i = e + C7669p4.m19839b(1, j);
        }
        String str = this.f17939e;
        int i2 = i;
        if (str != null) {
            i2 = i;
            if (!str.equals("")) {
                i2 = i + C7669p4.m19837b(2, this.f17939e);
            }
        }
        C7656n5[] n5VarArr = this.f17942h;
        int i3 = 0;
        int i4 = i2;
        if (n5VarArr != null) {
            i4 = i2;
            if (n5VarArr.length > 0) {
                int i5 = 0;
                while (true) {
                    C7656n5[] n5VarArr2 = this.f17942h;
                    if (i5 >= n5VarArr2.length) {
                        break;
                    }
                    C7656n5 n5Var = n5VarArr2[i5];
                    i2 = i2;
                    if (n5Var != null) {
                        i2 += C7669p4.m19838b(3, n5Var);
                    }
                    i5++;
                }
                i4 = i2;
            }
        }
        int i6 = i4;
        if (!Arrays.equals(this.f17943i, C7739z4.f18139e)) {
            i6 = i4 + C7669p4.m19836b(4, this.f17943i);
        }
        int i7 = i6;
        if (!Arrays.equals(this.f17945k, C7739z4.f18139e)) {
            i7 = i6 + C7669p4.m19836b(6, this.f17945k);
        }
        C7623j5 j5Var = this.f17948n;
        int i8 = i7;
        if (j5Var != null) {
            i8 = i7 + C7669p4.m19838b(7, j5Var);
        }
        String str2 = this.f17946l;
        int i9 = i8;
        if (str2 != null) {
            i9 = i8;
            if (!str2.equals("")) {
                i9 = i8 + C7669p4.m19837b(8, this.f17946l);
            }
        }
        C7548a5 a5Var = this.f17944j;
        int i10 = i9;
        if (a5Var != null) {
            i10 = i9 + AbstractC7639m0.m20039c(9, a5Var);
        }
        int i11 = this.f17940f;
        int i12 = i10;
        if (i11 != 0) {
            i12 = i10 + C7669p4.m19833c(11) + C7669p4.m19831d(i11);
        }
        String str3 = this.f17947m;
        int i13 = i12;
        if (str3 != null) {
            i13 = i12;
            if (!str3.equals("")) {
                i13 = i12 + C7669p4.m19837b(13, this.f17947m);
            }
        }
        String str4 = this.f17949o;
        int i14 = i13;
        if (str4 != null) {
            i14 = i13;
            if (!str4.equals("")) {
                i14 = i13 + C7669p4.m19837b(14, this.f17949o);
            }
        }
        long j2 = this.f17950p;
        int i15 = i14;
        if (j2 != 180000) {
            i15 = i14 + C7669p4.m19833c(15) + C7669p4.m19832c(C7669p4.m19835b(j2));
        }
        C7630k5 k5Var = this.f17951q;
        int i16 = i15;
        if (k5Var != null) {
            i16 = i15 + C7669p4.m19838b(16, k5Var);
        }
        long j3 = this.f17938d;
        int i17 = i16;
        if (j3 != 0) {
            i17 = i16 + C7669p4.m19839b(17, j3);
        }
        int i18 = i17;
        if (!Arrays.equals(this.f17952r, C7739z4.f18139e)) {
            i18 = i17 + C7669p4.m19836b(18, this.f17952r);
        }
        int[] iArr2 = this.f17954t;
        int i19 = i18;
        if (iArr2 != null) {
            i19 = i18;
            if (iArr2.length > 0) {
                int i20 = 0;
                while (true) {
                    iArr = this.f17954t;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    i20 += C7669p4.m19831d(iArr[i3]);
                    i3++;
                }
                i19 = i18 + i20 + (iArr.length * 2);
            }
        }
        C7556b5 b5Var = this.f17955u;
        int i21 = i19;
        if (b5Var != null) {
            i21 = i19 + AbstractC7639m0.m20039c(23, b5Var);
        }
        String str5 = this.f17953s;
        int i22 = i21;
        if (str5 != null) {
            i22 = i21;
            if (!str5.equals("")) {
                i22 = i21 + C7669p4.m19837b(24, this.f17953s);
            }
        }
        int i23 = i22;
        if (this.f17956v) {
            i23 = i22 + C7669p4.m19833c(25) + 1;
        }
        String str6 = this.f17941g;
        int i24 = i23;
        if (str6 != null) {
            i24 = i23;
            if (!str6.equals("")) {
                i24 = i23 + C7669p4.m19837b(26, this.f17941g);
            }
        }
        return i24;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7649m5)) {
            return false;
        }
        C7649m5 m5Var = (C7649m5) obj;
        if (this.f17937c != m5Var.f17937c || this.f17938d != m5Var.f17938d) {
            return false;
        }
        String str = this.f17939e;
        if (str == null) {
            if (m5Var.f17939e != null) {
                return false;
            }
        } else if (!str.equals(m5Var.f17939e)) {
            return false;
        }
        if (this.f17940f != m5Var.f17940f) {
            return false;
        }
        String str2 = this.f17941g;
        if (str2 == null) {
            if (m5Var.f17941g != null) {
                return false;
            }
        } else if (!str2.equals(m5Var.f17941g)) {
            return false;
        }
        if (!C7711v4.m19730a(this.f17942h, m5Var.f17942h) || !Arrays.equals(this.f17943i, m5Var.f17943i)) {
            return false;
        }
        C7548a5 a5Var = this.f17944j;
        if (a5Var == null) {
            if (m5Var.f17944j != null) {
                return false;
            }
        } else if (!a5Var.equals(m5Var.f17944j)) {
            return false;
        }
        if (!Arrays.equals(this.f17945k, m5Var.f17945k)) {
            return false;
        }
        String str3 = this.f17946l;
        if (str3 == null) {
            if (m5Var.f17946l != null) {
                return false;
            }
        } else if (!str3.equals(m5Var.f17946l)) {
            return false;
        }
        String str4 = this.f17947m;
        if (str4 == null) {
            if (m5Var.f17947m != null) {
                return false;
            }
        } else if (!str4.equals(m5Var.f17947m)) {
            return false;
        }
        C7623j5 j5Var = this.f17948n;
        if (j5Var == null) {
            if (m5Var.f17948n != null) {
                return false;
            }
        } else if (!j5Var.equals(m5Var.f17948n)) {
            return false;
        }
        String str5 = this.f17949o;
        if (str5 == null) {
            if (m5Var.f17949o != null) {
                return false;
            }
        } else if (!str5.equals(m5Var.f17949o)) {
            return false;
        }
        if (this.f17950p != m5Var.f17950p) {
            return false;
        }
        C7630k5 k5Var = this.f17951q;
        if (k5Var == null) {
            if (m5Var.f17951q != null) {
                return false;
            }
        } else if (!k5Var.equals(m5Var.f17951q)) {
            return false;
        }
        if (!Arrays.equals(this.f17952r, m5Var.f17952r)) {
            return false;
        }
        String str6 = this.f17953s;
        if (str6 == null) {
            if (m5Var.f17953s != null) {
                return false;
            }
        } else if (!str6.equals(m5Var.f17953s)) {
            return false;
        }
        if (!C7711v4.m19734a(this.f17954t, m5Var.f17954t)) {
            return false;
        }
        C7556b5 b5Var = this.f17955u;
        if (b5Var == null) {
            if (m5Var.f17955u != null) {
                return false;
            }
        } else if (!b5Var.equals(m5Var.f17955u)) {
            return false;
        }
        if (this.f17956v != m5Var.f17956v) {
            return false;
        }
        C7697t4 t4Var = this.f18023b;
        if (t4Var != null && !t4Var.m19790d()) {
            return this.f18023b.equals(m5Var.f18023b);
        }
        C7697t4 t4Var2 = m5Var.f18023b;
        return t4Var2 == null || t4Var2.m19790d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: f */
    public final /* synthetic */ C7718w4 mo19693f() throws CloneNotSupportedException {
        return (C7649m5) clone();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4
    /* renamed from: g */
    public final /* synthetic */ C7649m5 mo19812g() throws CloneNotSupportedException {
        return (C7649m5) clone();
    }

    /* renamed from: h */
    public final C7649m5 clone() {
        try {
            C7649m5 m5Var = (C7649m5) super.clone();
            C7656n5[] n5VarArr = this.f17942h;
            if (n5VarArr != null && n5VarArr.length > 0) {
                m5Var.f17942h = new C7656n5[n5VarArr.length];
                int i = 0;
                while (true) {
                    C7656n5[] n5VarArr2 = this.f17942h;
                    if (i >= n5VarArr2.length) {
                        break;
                    }
                    if (n5VarArr2[i] != null) {
                        m5Var.f17942h[i] = (C7656n5) n5VarArr2[i].clone();
                    }
                    i++;
                }
            }
            C7548a5 a5Var = this.f17944j;
            if (a5Var != null) {
                m5Var.f17944j = a5Var;
            }
            C7623j5 j5Var = this.f17948n;
            if (j5Var != null) {
                m5Var.f17948n = (C7623j5) j5Var.clone();
            }
            C7630k5 k5Var = this.f17951q;
            if (k5Var != null) {
                m5Var.f17951q = (C7630k5) k5Var.clone();
            }
            int[] iArr = this.f17954t;
            if (iArr != null && iArr.length > 0) {
                m5Var.f17954t = (int[]) iArr.clone();
            }
            C7556b5 b5Var = this.f17955u;
            if (b5Var != null) {
                m5Var.f17955u = b5Var;
            }
            return m5Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        int hashCode = C7649m5.class.getName().hashCode();
        long j = this.f17937c;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f17938d;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        String str = this.f17939e;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int i3 = this.f17940f;
        String str2 = this.f17941g;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        int i4 = 1237;
        int a = C7711v4.m19731a(this.f17942h);
        int hashCode4 = Arrays.hashCode(this.f17943i);
        C7548a5 a5Var = this.f17944j;
        int hashCode5 = a5Var == null ? 0 : a5Var.hashCode();
        int hashCode6 = Arrays.hashCode(this.f17945k);
        String str3 = this.f17946l;
        int hashCode7 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f17947m;
        int hashCode8 = str4 == null ? 0 : str4.hashCode();
        C7623j5 j5Var = this.f17948n;
        int hashCode9 = j5Var == null ? 0 : j5Var.hashCode();
        String str5 = this.f17949o;
        int hashCode10 = str5 == null ? 0 : str5.hashCode();
        long j3 = this.f17950p;
        int i5 = (int) (j3 ^ (j3 >>> 32));
        C7630k5 k5Var = this.f17951q;
        int hashCode11 = k5Var == null ? 0 : k5Var.hashCode();
        int hashCode12 = Arrays.hashCode(this.f17952r);
        String str6 = this.f17953s;
        int hashCode13 = str6 == null ? 0 : str6.hashCode();
        int a2 = C7711v4.m19735a(this.f17954t);
        C7556b5 b5Var = this.f17955u;
        int hashCode14 = b5Var == null ? 0 : b5Var.hashCode();
        if (this.f17956v) {
            i4 = 1231;
        }
        C7697t4 t4Var = this.f18023b;
        int i6 = 0;
        if (t4Var != null) {
            i6 = t4Var.m19790d() ? 0 : this.f18023b.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + i) * 31) + i2) * 31 * 31) + hashCode2) * 31) + i3) * 31) + hashCode3) * 31 * 31) + 1237) * 31) + a) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i5) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31 * 31) + a2) * 31 * 31) + hashCode14) * 31) + i4) * 31) + i6;
    }
}
