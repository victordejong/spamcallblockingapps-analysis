package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/in.class */
public final class in {
    private static final in f = new in(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    int f29132a;

    /* renamed from: b  reason: collision with root package name */
    int[] f29133b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f29134c;

    /* renamed from: d  reason: collision with root package name */
    int f29135d;
    boolean e;

    private in() {
        this(0, new int[8], new Object[8], true);
    }

    private in(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f29135d = -1;
        this.f29132a = i;
        this.f29133b = iArr;
        this.f29134c = objArr;
        this.e = z;
    }

    public static in a() {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static in a(in inVar, in inVar2) {
        int i = inVar.f29132a + inVar2.f29132a;
        int[] copyOf = Arrays.copyOf(inVar.f29133b, i);
        System.arraycopy(inVar2.f29133b, 0, copyOf, inVar.f29132a, inVar2.f29132a);
        Object[] copyOf2 = Arrays.copyOf(inVar.f29134c, i);
        System.arraycopy(inVar2.f29134c, 0, copyOf2, inVar.f29132a, inVar2.f29132a);
        return new in(i, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static in b() {
        return new in(0, new int[8], new Object[8], true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, Object obj) {
        if (this.e) {
            int i2 = this.f29132a;
            int[] iArr = this.f29133b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f29133b = Arrays.copyOf(iArr, i3);
                this.f29134c = Arrays.copyOf(this.f29134c, i3);
            }
            int[] iArr2 = this.f29133b;
            int i4 = this.f29132a;
            iArr2[i4] = i;
            this.f29134c[i4] = obj;
            this.f29132a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void a(ft ftVar) throws IOException {
        if (this.f29132a != 0) {
            for (int i = 0; i < this.f29132a; i++) {
                int i2 = this.f29133b[i];
                Object obj = this.f29134c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    ftVar.a(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    ftVar.d(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    ftVar.a(i3, (fm) obj);
                } else if (i4 == 3) {
                    ftVar.f29031a.a(i3, 3);
                    ((in) obj).a(ftVar);
                    ftVar.f29031a.a(i3, 4);
                } else if (i4 == 5) {
                    ftVar.d(i3, ((Integer) obj).intValue());
                } else {
                    throw new RuntimeException(zzib.d());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f29132a; i2++) {
            hq.a(sb, i, String.valueOf(this.f29133b[i2] >>> 3), this.f29134c[i2]);
        }
    }

    public final int c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = this.f29135d;
        if (i5 != -1) {
            return i5;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < this.f29132a; i7++) {
            int i8 = this.f29133b[i7];
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            if (i10 != 0) {
                if (i10 == 1) {
                    ((Long) this.f29134c[i7]).longValue();
                    i = fs.f(i9 << 3) + 8;
                } else if (i10 == 2) {
                    fm fmVar = (fm) this.f29134c[i7];
                    int f2 = fs.f(i9 << 3);
                    int a2 = fmVar.a();
                    i2 = i6;
                    i = f2 + fs.f(a2) + a2;
                    i6 = i2 + i;
                } else if (i10 == 3) {
                    int d2 = fs.d(i9);
                    i4 = d2 + d2;
                    i3 = ((in) this.f29134c[i7]).c();
                } else if (i10 == 5) {
                    ((Integer) this.f29134c[i7]).intValue();
                    i = fs.f(i9 << 3) + 4;
                } else {
                    throw new IllegalStateException(zzib.d());
                }
                i2 = i6;
                i6 = i2 + i;
            } else {
                long longValue = ((Long) this.f29134c[i7]).longValue();
                i4 = fs.f(i9 << 3);
                i3 = fs.c(longValue);
            }
            i = i4 + i3;
            i2 = i6;
            i6 = i2 + i;
        }
        this.f29135d = i6;
        return i6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof in)) {
            return false;
        }
        in inVar = (in) obj;
        int i = this.f29132a;
        if (i != inVar.f29132a) {
            return false;
        }
        int[] iArr = this.f29133b;
        int[] iArr2 = inVar.f29133b;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f29134c;
        Object[] objArr2 = inVar.f29134c;
        int i3 = this.f29132a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f29132a;
        int[] iArr = this.f29133b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f29134c;
        int i5 = this.f29132a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
