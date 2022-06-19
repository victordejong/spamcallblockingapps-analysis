package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sg3.class */
public final class sg3 {

    /* renamed from: a */
    private static final sg3 f29501a = new sg3(0, new int[0], new Object[0], false);

    /* renamed from: b */
    private int f29502b;

    /* renamed from: c */
    private int[] f29503c;

    /* renamed from: d */
    private Object[] f29504d;

    /* renamed from: e */
    private int f29505e;

    /* renamed from: f */
    private boolean f29506f;

    private sg3() {
        this(0, new int[8], new Object[8], true);
    }

    private sg3(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f29505e = -1;
        this.f29502b = i;
        this.f29503c = iArr;
        this.f29504d = objArr;
        this.f29506f = z;
    }

    /* renamed from: a */
    public static sg3 m11037a() {
        return f29501a;
    }

    /* renamed from: b */
    public static sg3 m11036b() {
        return new sg3(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    public static sg3 m11035c(sg3 sg3Var, sg3 sg3Var2) {
        int i = sg3Var.f29502b + sg3Var2.f29502b;
        int[] copyOf = Arrays.copyOf(sg3Var.f29503c, i);
        System.arraycopy(sg3Var2.f29503c, 0, copyOf, sg3Var.f29502b, sg3Var2.f29502b);
        Object[] copyOf2 = Arrays.copyOf(sg3Var.f29504d, i);
        System.arraycopy(sg3Var2.f29504d, 0, copyOf2, sg3Var.f29502b, sg3Var2.f29502b);
        return new sg3(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public final void m11034d() {
        this.f29506f = false;
    }

    /* renamed from: e */
    public final int m11033e() {
        int i = this.f29505e;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f29502b; i3++) {
                int i4 = this.f29503c[i3];
                zzgex zzgexVar = (zzgex) this.f29504d[i3];
                int m11946B = qd3.m11946B(8);
                int zzc = zzgexVar.zzc();
                i2 += m11946B + m11946B + qd3.m11946B(16) + qd3.m11946B(i4 >>> 3) + qd3.m11946B(24) + qd3.m11946B(zzc) + zzc;
            }
            this.f29505e = i2;
            return i2;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof sg3)) {
            return false;
        }
        sg3 sg3Var = (sg3) obj;
        int i = this.f29502b;
        if (i != sg3Var.f29502b) {
            return false;
        }
        int[] iArr = this.f29503c;
        int[] iArr2 = sg3Var.f29503c;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f29504d;
        Object[] objArr2 = sg3Var.f29504d;
        int i3 = this.f29502b;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final int m11032f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f29505e;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.f29502b) {
                    this.f29505e = i9;
                    return i9;
                }
                int i10 = this.f29503c[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.f29504d[i7]).longValue();
                        i3 = qd3.m11946B(i11 << 3) + 8;
                    } else if (i12 == 2) {
                        zzgex zzgexVar = (zzgex) this.f29504d[i7];
                        int m11946B = qd3.m11946B(i11 << 3);
                        int zzc = zzgexVar.zzc();
                        i2 = i9;
                        i = m11946B + qd3.m11946B(zzc) + zzc;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int m11918z = qd3.m11918z(i11);
                        i5 = m11918z + m11918z;
                        i4 = ((sg3) this.f29504d[i7]).m11032f();
                    } else if (i12 != 5) {
                        throw new IllegalStateException(zzggm.zzi());
                    } else {
                        ((Integer) this.f29504d[i7]).intValue();
                        i3 = qd3.m11946B(i11 << 3) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.f29504d[i7]).longValue();
                    i5 = qd3.m11946B(i11 << 3);
                    i4 = qd3.m11945C(longValue);
                }
                i3 = i5 + i4;
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
    public final void m11031g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f29502b; i2++) {
            of3.m12679b(sb, i, String.valueOf(this.f29503c[i2] >>> 3), this.f29504d[i2]);
        }
    }

    /* renamed from: h */
    public final void m11030h(int i, Object obj) {
        if (this.f29506f) {
            int i2 = this.f29502b;
            int[] iArr = this.f29503c;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f29503c = Arrays.copyOf(iArr, i3);
                this.f29504d = Arrays.copyOf(this.f29504d, i3);
            }
            int[] iArr2 = this.f29503c;
            int i4 = this.f29502b;
            iArr2[i4] = i;
            this.f29504d[i4] = obj;
            this.f29502b = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f29502b;
        int[] iArr = this.f29503c;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f29504d;
        int i5 = this.f29502b;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    /* renamed from: i */
    public final void m11029i(rd3 rd3Var) {
        if (this.f29502b != 0) {
            for (int i = 0; i < this.f29502b; i++) {
                int i2 = this.f29503c[i];
                Object obj = this.f29504d[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    rd3Var.m11565n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    rd3Var.m11558u(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    rd3Var.m11554y(i3, (zzgex) obj);
                } else if (i4 == 3) {
                    rd3Var.m11585E(i3);
                    ((sg3) obj).m11029i(rd3Var);
                    rd3Var.m11584F(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzggm.zzi());
                } else {
                    rd3Var.m11557v(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
