package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzku.class */
public final class zzku {

    /* renamed from: f */
    private static final zzku f8621f = new zzku(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f8622a;

    /* renamed from: b */
    private int[] f8623b;

    /* renamed from: c */
    private Object[] f8624c;

    /* renamed from: d */
    private int f8625d;

    /* renamed from: e */
    private boolean f8626e;

    private zzku() {
        this(0, new int[8], new Object[8], true);
    }

    private zzku(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f8625d = -1;
        this.f8622a = i;
        this.f8623b = iArr;
        this.f8624c = objArr;
        this.f8626e = z;
    }

    /* renamed from: a */
    public static zzku m12113a() {
        return f8621f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzku m12112b(zzku zzkuVar, zzku zzkuVar2) {
        int i = zzkuVar.f8622a + zzkuVar2.f8622a;
        int[] copyOf = Arrays.copyOf(zzkuVar.f8623b, i);
        System.arraycopy(zzkuVar2.f8623b, 0, copyOf, zzkuVar.f8622a, zzkuVar2.f8622a);
        Object[] copyOf2 = Arrays.copyOf(zzkuVar.f8624c, i);
        System.arraycopy(zzkuVar2.f8624c, 0, copyOf2, zzkuVar.f8622a, zzkuVar2.f8622a);
        return new zzku(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    private static void m12110d(int i, Object obj, zzlo zzloVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzloVar.mo11983q(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzloVar.mo12001M(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzloVar.mo12004J(i2, (zzgr) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                zzloVar.mo12013A(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzih.m12380f());
        } else if (zzloVar.zza() == zzln.f8646a) {
            zzloVar.mo11999a(i2);
            ((zzku) obj).m12106h(zzloVar);
            zzloVar.mo11998b(i2);
        } else {
            zzloVar.mo11998b(i2);
            ((zzku) obj).m12106h(zzloVar);
            zzloVar.mo11999a(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static zzku m12107g() {
        return new zzku();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m12111c(int i, Object obj) {
        if (this.f8626e) {
            int i2 = this.f8622a;
            if (i2 == this.f8623b.length) {
                int i3 = this.f8622a + (i2 < 4 ? 8 : i2 >> 1);
                this.f8623b = Arrays.copyOf(this.f8623b, i3);
                this.f8624c = Arrays.copyOf(this.f8624c, i3);
            }
            int[] iArr = this.f8623b;
            int i4 = this.f8622a;
            iArr[i4] = i;
            this.f8624c[i4] = obj;
            this.f8622a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m12109e(zzlo zzloVar) throws IOException {
        if (zzloVar.zza() == zzln.f8647b) {
            for (int i = this.f8622a - 1; i >= 0; i--) {
                zzloVar.mo11990j(this.f8623b[i] >>> 3, this.f8624c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f8622a; i2++) {
            zzloVar.mo11990j(this.f8623b[i2] >>> 3, this.f8624c[i2]);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzku)) {
            return false;
        }
        zzku zzkuVar = (zzku) obj;
        int i = this.f8622a;
        if (i != zzkuVar.f8622a) {
            return false;
        }
        int[] iArr = this.f8623b;
        int[] iArr2 = zzkuVar.f8623b;
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
        Object[] objArr = this.f8624c;
        Object[] objArr2 = zzkuVar.f8624c;
        int i3 = this.f8622a;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m12108f(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f8622a; i2++) {
            zzjm.m12277d(sb, i, String.valueOf(this.f8623b[i2] >>> 3), this.f8624c[i2]);
        }
    }

    /* renamed from: h */
    public final void m12106h(zzlo zzloVar) throws IOException {
        if (this.f8622a != 0) {
            if (zzloVar.zza() == zzln.f8646a) {
                for (int i = 0; i < this.f8622a; i++) {
                    m12110d(this.f8623b[i], this.f8624c[i], zzloVar);
                }
                return;
            }
            for (int i2 = this.f8622a - 1; i2 >= 0; i2--) {
                m12110d(this.f8623b[i2], this.f8624c[i2], zzloVar);
            }
        }
    }

    public final int hashCode() {
        int i = this.f8622a;
        int[] iArr = this.f8623b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f8624c;
        int i5 = this.f8622a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    /* renamed from: i */
    public final void m12105i() {
        this.f8626e = false;
    }

    /* renamed from: j */
    public final int m12104j() {
        int i = this.f8625d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8622a; i3++) {
            i2 += zzhg.m12534d0(this.f8623b[i3] >>> 3, (zzgr) this.f8624c[i3]);
        }
        this.f8625d = i2;
        return i2;
    }

    /* renamed from: k */
    public final int m12103k() {
        int i;
        int i2 = this.f8625d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f8622a; i4++) {
            int i5 = this.f8623b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzhg.m12526i0(i6, ((Long) this.f8624c[i4]).longValue());
            } else if (i7 == 1) {
                i = zzhg.m12516r0(i6, ((Long) this.f8624c[i4]).longValue());
            } else if (i7 == 2) {
                i = zzhg.m12542U(i6, (zzgr) this.f8624c[i4]);
            } else if (i7 == 3) {
                i = (zzhg.m12528h0(i6) << 1) + ((zzku) this.f8624c[i4]).m12103k();
            } else if (i7 == 5) {
                i = zzhg.m12507y0(i6, ((Integer) this.f8624c[i4]).intValue());
            } else {
                throw new IllegalStateException(zzih.m12380f());
            }
            i3 += i;
        }
        this.f8625d = i3;
        return i3;
    }
}
