package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ve2.class */
public final class ve2 {

    /* renamed from: f */
    private static final ve2 f8900f = new ve2(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f8901a;

    /* renamed from: b */
    private int[] f8902b;

    /* renamed from: c */
    private Object[] f8903c;

    /* renamed from: d */
    private int f8904d;

    /* renamed from: e */
    private boolean f8905e;

    private ve2() {
        this(0, new int[8], new Object[8], true);
    }

    private ve2(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f8904d = -1;
        this.f8901a = i;
        this.f8902b = iArr;
        this.f8903c = objArr;
        this.f8905e = z;
    }

    /* renamed from: a */
    public static ve2 m5263a() {
        return f8900f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ve2 m5262b() {
        return new ve2(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    static ve2 m5261c(ve2 ve2Var, ve2 ve2Var2) {
        int i = ve2Var.f8901a + ve2Var2.f8901a;
        int[] copyOf = Arrays.copyOf(ve2Var.f8902b, i);
        System.arraycopy(ve2Var2.f8902b, 0, copyOf, ve2Var.f8901a, ve2Var2.f8901a);
        Object[] copyOf2 = Arrays.copyOf(ve2Var.f8903c, i);
        System.arraycopy(ve2Var2.f8903c, 0, copyOf2, ve2Var.f8901a, ve2Var2.f8901a);
        return new ve2(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public final void m5260d() {
        this.f8905e = false;
    }

    /* renamed from: e */
    public final int m5259e() {
        int i = this.f8904d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8901a; i3++) {
            int i4 = this.f8902b[i3];
            zzesf zzesfVar = (zzesf) this.f8903c[i3];
            int A = wb2.A(8);
            int A2 = wb2.A(16);
            int A3 = wb2.A(i4 >>> 3);
            int A4 = wb2.A(24);
            int zzc = zzesfVar.zzc();
            i2 += A + A + A2 + A3 + A4 + wb2.A(zzc) + zzc;
        }
        this.f8904d = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ve2)) {
            return false;
        }
        ve2 ve2Var = (ve2) obj;
        int i = this.f8901a;
        if (i != ve2Var.f8901a) {
            return false;
        }
        int[] iArr = this.f8902b;
        int[] iArr2 = ve2Var.f8902b;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f8903c;
        Object[] objArr2 = ve2Var.f8903c;
        int i3 = this.f8901a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final int m5258f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = this.f8904d;
        if (i5 != -1) {
            return i5;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < this.f8901a; i7++) {
            int i8 = this.f8902b[i7];
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            if (i10 != 0) {
                if (i10 == 1) {
                    ((Long) this.f8903c[i7]).longValue();
                    i = wb2.A(i9 << 3) + 8;
                } else if (i10 == 2) {
                    zzesf zzesfVar = (zzesf) this.f8903c[i7];
                    int A = wb2.A(i9 << 3);
                    int zzc = zzesfVar.zzc();
                    i2 = i6;
                    i = A + wb2.A(zzc) + zzc;
                    i6 = i2 + i;
                } else if (i10 == 3) {
                    int y = wb2.y(i9);
                    i4 = y + y;
                    i3 = ((ve2) this.f8903c[i7]).m5258f();
                } else if (i10 == 5) {
                    ((Integer) this.f8903c[i7]).intValue();
                    i = wb2.A(i9 << 3) + 4;
                } else {
                    throw new IllegalStateException((Throwable) zzett.zzg());
                }
                i2 = i6;
                i6 = i2 + i;
            } else {
                long longValue = ((Long) this.f8903c[i7]).longValue();
                i4 = wb2.A(i9 << 3);
                i3 = wb2.B(longValue);
            }
            i = i4 + i3;
            i2 = i6;
            i6 = i2 + i;
        }
        this.f8904d = i6;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m5257g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f8901a; i2++) {
            sd2.m5749b(sb, i, String.valueOf(this.f8902b[i2] >>> 3), this.f8903c[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m5256h(int i, Object obj) {
        if (this.f8905e) {
            int i2 = this.f8901a;
            int[] iArr = this.f8902b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f8902b = Arrays.copyOf(iArr, i3);
                this.f8903c = Arrays.copyOf(this.f8903c, i3);
            }
            int[] iArr2 = this.f8902b;
            int i4 = this.f8901a;
            iArr2[i4] = i;
            this.f8903c[i4] = obj;
            this.f8901a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f8901a;
        int[] iArr = this.f8902b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f8903c;
        int i5 = this.f8901a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    /* renamed from: i */
    public final void m5255i(xb2 xb2Var) {
        if (this.f8901a != 0) {
            for (int i = 0; i < this.f8901a; i++) {
                int i2 = this.f8902b[i];
                Object obj = this.f8903c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    xb2Var.m4931n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    xb2Var.m4924u(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    xb2Var.m4920y(i3, (zzesf) obj);
                } else if (i4 == 3) {
                    xb2Var.m4951E(i3);
                    ((ve2) obj).m5255i(xb2Var);
                    xb2Var.m4950F(i3);
                } else if (i4 == 5) {
                    xb2Var.m4923v(i3, ((Integer) obj).intValue());
                } else {
                    throw new RuntimeException((Throwable) zzett.zzg());
                }
            }
        }
    }
}
