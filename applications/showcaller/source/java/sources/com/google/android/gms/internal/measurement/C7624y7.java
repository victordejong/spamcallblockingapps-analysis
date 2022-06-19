package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.y7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y7.class */
public final class C7624y7 {

    /* renamed from: a */
    private static final C7624y7 f34792a = new C7624y7(0, new int[0], new Object[0], false);

    /* renamed from: b */
    private int f34793b;

    /* renamed from: c */
    private int[] f34794c;

    /* renamed from: d */
    private Object[] f34795d;

    /* renamed from: e */
    private int f34796e;

    /* renamed from: f */
    private boolean f34797f;

    private C7624y7() {
        this(0, new int[8], new Object[8], true);
    }

    private C7624y7(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f34796e = -1;
        this.f34793b = i;
        this.f34794c = iArr;
        this.f34795d = objArr;
        this.f34797f = z;
    }

    /* renamed from: a */
    public static C7624y7 m6726a() {
        return f34792a;
    }

    /* renamed from: b */
    public static C7624y7 m6725b() {
        return new C7624y7(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    public static C7624y7 m6724c(C7624y7 c7624y7, C7624y7 c7624y72) {
        int i = c7624y7.f34793b + c7624y72.f34793b;
        int[] copyOf = Arrays.copyOf(c7624y7.f34794c, i);
        System.arraycopy(c7624y72.f34794c, 0, copyOf, c7624y7.f34793b, c7624y72.f34793b);
        Object[] copyOf2 = Arrays.copyOf(c7624y7.f34795d, i);
        System.arraycopy(c7624y72.f34795d, 0, copyOf2, c7624y7.f34793b, c7624y72.f34793b);
        return new C7624y7(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public final void m6723d() {
        this.f34797f = false;
    }

    /* renamed from: e */
    public final int m6722e() {
        int i = this.f34796e;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f34793b; i3++) {
                int i4 = this.f34794c[i3];
                zzgr zzgrVar = (zzgr) this.f34795d[i3];
                int m7533A = AbstractC7364f5.m7533A(8);
                int zzc = zzgrVar.zzc();
                i2 += m7533A + m7533A + AbstractC7364f5.m7533A(16) + AbstractC7364f5.m7533A(i4 >>> 3) + AbstractC7364f5.m7533A(24) + AbstractC7364f5.m7533A(zzc) + zzc;
            }
            this.f34796e = i2;
            return i2;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C7624y7)) {
            return false;
        }
        C7624y7 c7624y7 = (C7624y7) obj;
        int i = this.f34793b;
        if (i != c7624y7.f34793b) {
            return false;
        }
        int[] iArr = this.f34794c;
        int[] iArr2 = c7624y7.f34794c;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f34795d;
        Object[] objArr2 = c7624y7.f34795d;
        int i3 = this.f34793b;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final int m6721f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f34796e;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.f34793b) {
                    this.f34796e = i9;
                    return i9;
                }
                int i10 = this.f34794c[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.f34795d[i7]).longValue();
                        i3 = AbstractC7364f5.m7533A(i11 << 3) + 8;
                    } else if (i12 == 2) {
                        zzgr zzgrVar = (zzgr) this.f34795d[i7];
                        int m7533A = AbstractC7364f5.m7533A(i11 << 3);
                        int zzc = zzgrVar.zzc();
                        i2 = i9;
                        i = m7533A + AbstractC7364f5.m7533A(zzc) + zzc;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int m7505y = AbstractC7364f5.m7505y(i11);
                        i4 = m7505y + m7505y;
                        i5 = ((C7624y7) this.f34795d[i7]).m6721f();
                    } else if (i12 != 5) {
                        throw new IllegalStateException(zzib.zzd());
                    } else {
                        ((Integer) this.f34795d[i7]).intValue();
                        i3 = AbstractC7364f5.m7533A(i11 << 3) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.f34795d[i7]).longValue();
                    i4 = AbstractC7364f5.m7533A(i11 << 3);
                    i5 = AbstractC7364f5.m7532B(longValue);
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
    public final void m6720g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f34793b; i2++) {
            C7296a7.m7684b(sb, i, String.valueOf(this.f34794c[i2] >>> 3), this.f34795d[i2]);
        }
    }

    /* renamed from: h */
    public final void m6719h(int i, Object obj) {
        if (this.f34797f) {
            int i2 = this.f34793b;
            int[] iArr = this.f34794c;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f34794c = Arrays.copyOf(iArr, i3);
                this.f34795d = Arrays.copyOf(this.f34795d, i3);
            }
            int[] iArr2 = this.f34794c;
            int i4 = this.f34793b;
            iArr2[i4] = i;
            this.f34795d[i4] = obj;
            this.f34793b = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f34793b;
        int[] iArr = this.f34794c;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.f34795d;
        int i4 = this.f34793b;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    /* renamed from: i */
    public final void m6718i(C7378g5 c7378g5) {
        if (this.f34793b != 0) {
            for (int i = 0; i < this.f34793b; i++) {
                int i2 = this.f34794c[i];
                Object obj = this.f34795d[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    c7378g5.m7399n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    c7378g5.m7392u(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    c7378g5.m7388y(i3, (zzgr) obj);
                } else if (i4 == 3) {
                    c7378g5.m7419E(i3);
                    ((C7624y7) obj).m6718i(c7378g5);
                    c7378g5.m7418F(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzib.zzd());
                } else {
                    c7378g5.m7391v(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
