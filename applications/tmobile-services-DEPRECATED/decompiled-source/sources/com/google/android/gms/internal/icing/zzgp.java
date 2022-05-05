package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgp.class */
public final class zzgp {

    /* renamed from: e */
    private static final zzgp f8093e = new zzgp(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f8094a;

    /* renamed from: b */
    private int[] f8095b;

    /* renamed from: c */
    private Object[] f8096c;

    /* renamed from: d */
    private int f8097d;

    private zzgp() {
        this(0, new int[8], new Object[8], true);
    }

    private zzgp(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f8097d = -1;
        this.f8094a = i;
        this.f8095b = iArr;
        this.f8096c = objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzgp m13607a(zzgp zzgpVar, zzgp zzgpVar2) {
        int i = zzgpVar.f8094a + zzgpVar2.f8094a;
        int[] copyOf = Arrays.copyOf(zzgpVar.f8095b, i);
        System.arraycopy(zzgpVar2.f8095b, 0, copyOf, zzgpVar.f8094a, zzgpVar2.f8094a);
        Object[] copyOf2 = Arrays.copyOf(zzgpVar.f8096c, i);
        System.arraycopy(zzgpVar2.f8096c, 0, copyOf2, zzgpVar.f8094a, zzgpVar2.f8094a);
        return new zzgp(i, copyOf, copyOf2, true);
    }

    /* renamed from: e */
    private static void m13603e(int i, Object obj, zzhg zzhgVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzhgVar.mo13517I(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzhgVar.mo13502i(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzhgVar.mo13512N(i2, (zzct) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                zzhgVar.mo13490u(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzeh.m13793a());
        } else if (zzhgVar.mo13519G() == zzdx.zze.f8008k) {
            zzhgVar.mo13518H(i2);
            ((zzgp) obj).m13602f(zzhgVar);
            zzhgVar.mo13516J(i2);
        } else {
            zzhgVar.mo13516J(i2);
            ((zzgp) obj).m13602f(zzhgVar);
            zzhgVar.mo13518H(i2);
        }
    }

    /* renamed from: h */
    public static zzgp m13600h() {
        return f8093e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m13606b(zzhg zzhgVar) throws IOException {
        if (zzhgVar.mo13519G() == zzdx.zze.f8009l) {
            for (int i = this.f8094a - 1; i >= 0; i--) {
                zzhgVar.mo13501j(this.f8095b[i] >>> 3, this.f8096c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f8094a; i2++) {
            zzhgVar.mo13501j(this.f8095b[i2] >>> 3, this.f8096c[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m13605c(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f8094a; i2++) {
            zzfi.m13748c(sb, i, String.valueOf(this.f8095b[i2] >>> 3), this.f8096c[i2]);
        }
    }

    /* renamed from: d */
    public final void m13604d() {
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzgp)) {
            return false;
        }
        zzgp zzgpVar = (zzgp) obj;
        int i = this.f8094a;
        if (i != zzgpVar.f8094a) {
            return false;
        }
        int[] iArr = this.f8095b;
        int[] iArr2 = zzgpVar.f8095b;
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
        Object[] objArr = this.f8096c;
        Object[] objArr2 = zzgpVar.f8096c;
        int i3 = this.f8094a;
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

    /* renamed from: f */
    public final void m13602f(zzhg zzhgVar) throws IOException {
        if (this.f8094a != 0) {
            if (zzhgVar.mo13519G() == zzdx.zze.f8008k) {
                for (int i = 0; i < this.f8094a; i++) {
                    m13603e(this.f8095b[i], this.f8096c[i], zzhgVar);
                }
                return;
            }
            for (int i2 = this.f8094a - 1; i2 >= 0; i2--) {
                m13603e(this.f8095b[i2], this.f8096c[i2], zzhgVar);
            }
        }
    }

    /* renamed from: g */
    public final int m13601g() {
        int i;
        int i2 = this.f8097d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f8094a; i4++) {
            int i5 = this.f8095b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzdk.m13935Y(i6, ((Long) this.f8096c[i4]).longValue());
            } else if (i7 == 1) {
                i = zzdk.m13920h0(i6, ((Long) this.f8096c[i4]).longValue());
            } else if (i7 == 2) {
                i = zzdk.m13943L(i6, (zzct) this.f8096c[i4]);
            } else if (i7 == 3) {
                i = (zzdk.m13898y0(i6) << 1) + ((zzgp) this.f8096c[i4]).m13601g();
            } else if (i7 == 5) {
                i = zzdk.m13913o0(i6, ((Integer) this.f8096c[i4]).intValue());
            } else {
                throw new IllegalStateException(zzeh.m13793a());
            }
            i3 += i;
        }
        this.f8097d = i3;
        return i3;
    }

    public final int hashCode() {
        int i = this.f8094a;
        int[] iArr = this.f8095b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f8096c;
        int i5 = this.f8094a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    /* renamed from: i */
    public final int m13599i() {
        int i = this.f8097d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8094a; i3++) {
            i2 += zzdk.m13937U(this.f8095b[i3] >>> 3, (zzct) this.f8096c[i3]);
        }
        this.f8097d = i2;
        return i2;
    }
}
