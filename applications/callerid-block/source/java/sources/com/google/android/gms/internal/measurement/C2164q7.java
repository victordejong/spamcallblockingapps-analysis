package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.q7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q7.class */
public final class C2164q7 {

    /* renamed from: f */
    private static final C2164q7 f9807f = new C2164q7(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f9808a;

    /* renamed from: b */
    private int[] f9809b;

    /* renamed from: c */
    private Object[] f9810c;

    /* renamed from: d */
    private int f9811d;

    /* renamed from: e */
    private boolean f9812e;

    private C2164q7() {
        this(0, new int[8], new Object[8], true);
    }

    private C2164q7(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f9811d = -1;
        this.f9808a = i;
        this.f9809b = iArr;
        this.f9810c = objArr;
        this.f9812e = z;
    }

    /* renamed from: a */
    public static C2164q7 m4210a() {
        return f9807f;
    }

    /* renamed from: b */
    public static C2164q7 m4209b() {
        return new C2164q7(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    static C2164q7 m4208c(C2164q7 c2164q7, C2164q7 c2164q72) {
        int i = c2164q7.f9808a + c2164q72.f9808a;
        int[] copyOf = Arrays.copyOf(c2164q7.f9809b, i);
        System.arraycopy(c2164q72.f9809b, 0, copyOf, c2164q7.f9808a, c2164q72.f9808a);
        Object[] copyOf2 = Arrays.copyOf(c2164q7.f9810c, i);
        System.arraycopy(c2164q72.f9810c, 0, copyOf2, c2164q7.f9808a, c2164q72.f9808a);
        return new C2164q7(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public final void m4207d() {
        this.f9812e = false;
    }

    /* renamed from: e */
    public final int m4206e() {
        int i = this.f9811d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f9808a; i3++) {
                int i4 = this.f9809b[i3];
                zzgr zzgrVar = (zzgr) this.f9810c[i3];
                int A = y4.A(8);
                int zzc = zzgrVar.zzc();
                i2 += A + A + y4.A(16) + y4.A(i4 >>> 3) + y4.A(24) + y4.A(zzc) + zzc;
            }
            this.f9811d = i2;
            return i2;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C2164q7)) {
            return false;
        }
        C2164q7 c2164q7 = (C2164q7) obj;
        int i = this.f9808a;
        if (i != c2164q7.f9808a) {
            return false;
        }
        int[] iArr = this.f9809b;
        int[] iArr2 = c2164q7.f9809b;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f9810c;
        Object[] objArr2 = c2164q7.f9810c;
        int i3 = this.f9808a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final int m4205f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f9811d;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.f9808a) {
                    this.f9811d = i9;
                    return i9;
                }
                int i10 = this.f9809b[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.f9810c[i7]).longValue();
                        i3 = y4.A(i11 << 3) + 8;
                    } else if (i12 == 2) {
                        zzgr zzgrVar = (zzgr) this.f9810c[i7];
                        int A = y4.A(i11 << 3);
                        int zzc = zzgrVar.zzc();
                        i2 = i9;
                        i = A + y4.A(zzc) + zzc;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int y = y4.y(i11);
                        i4 = y + y;
                        i5 = ((C2164q7) this.f9810c[i7]).m4205f();
                    } else if (i12 != 5) {
                        throw new IllegalStateException((Throwable) zzib.zzd());
                    } else {
                        ((Integer) this.f9810c[i7]).intValue();
                        i3 = y4.A(i11 << 3) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.f9810c[i7]).longValue();
                    i4 = y4.A(i11 << 3);
                    i5 = y4.B(longValue);
                }
                i3 = i4 + i5;
                i2 = i9;
                i = i3;
                i7++;
                i8 = i2 + i;
            }
        } else {
            return i6;
        }
    }

    /* renamed from: g */
    public final void m4204g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f9808a; i2++) {
            C2175s6.m4185b(sb, i, String.valueOf(this.f9809b[i2] >>> 3), this.f9810c[i2]);
        }
    }

    /* renamed from: h */
    public final void m4203h(int i, Object obj) {
        if (this.f9812e) {
            int i2 = this.f9808a;
            int[] iArr = this.f9809b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f9809b = Arrays.copyOf(iArr, i3);
                this.f9810c = Arrays.copyOf(this.f9810c, i3);
            }
            int[] iArr2 = this.f9809b;
            int i4 = this.f9808a;
            iArr2[i4] = i;
            this.f9810c[i4] = obj;
            this.f9808a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f9808a;
        int[] iArr = this.f9809b;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.f9810c;
        int i4 = this.f9808a;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    /* renamed from: i */
    public final void m4202i(C2211z4 c2211z4) {
        if (this.f9808a != 0) {
            for (int i = 0; i < this.f9808a; i++) {
                int i2 = this.f9809b[i];
                Object obj = this.f9810c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    c2211z4.m4091n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    c2211z4.m4084u(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    c2211z4.m4080y(i3, (zzgr) obj);
                } else if (i4 == 3) {
                    c2211z4.m4111E(i3);
                    ((C2164q7) obj).m4202i(c2211z4);
                    c2211z4.m4110F(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException((Throwable) zzib.zzd());
                } else {
                    c2211z4.m4083v(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
