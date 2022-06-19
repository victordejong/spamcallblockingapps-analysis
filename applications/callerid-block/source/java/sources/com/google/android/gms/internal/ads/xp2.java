package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xp2.class */
final class xp2 {

    /* renamed from: i */
    private int f9152i;

    /* renamed from: j */
    private int f9153j;

    /* renamed from: k */
    private int f9154k;

    /* renamed from: l */
    private int f9155l;

    /* renamed from: q */
    private zzit f9160q;

    /* renamed from: a */
    private int f9144a = 1000;

    /* renamed from: b */
    private int[] f9145b = new int[1000];

    /* renamed from: c */
    private long[] f9146c = new long[1000];

    /* renamed from: f */
    private long[] f9149f = new long[1000];

    /* renamed from: e */
    private int[] f9148e = new int[1000];

    /* renamed from: d */
    private int[] f9147d = new int[1000];

    /* renamed from: g */
    private gn2[] f9150g = new gn2[1000];

    /* renamed from: h */
    private zzit[] f9151h = new zzit[1000];

    /* renamed from: m */
    private long f9156m = Long.MIN_VALUE;

    /* renamed from: n */
    private long f9157n = Long.MIN_VALUE;

    /* renamed from: p */
    private boolean f9159p = true;

    /* renamed from: o */
    private boolean f9158o = true;

    /* renamed from: a */
    public final void m4871a() {
        this.f9153j = 0;
        this.f9154k = 0;
        this.f9155l = 0;
        this.f9152i = 0;
        this.f9158o = true;
    }

    /* renamed from: b */
    public final void m4870b() {
        this.f9156m = Long.MIN_VALUE;
        this.f9157n = Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final int m4869c() {
        return this.f9153j + this.f9152i;
    }

    /* renamed from: d */
    public final boolean m4868d() {
        boolean z;
        synchronized (this) {
            z = this.f9152i != 0;
        }
        return z;
    }

    /* renamed from: e */
    public final zzit m4867e() {
        synchronized (this) {
            if (this.f9159p) {
                return null;
            }
            return this.f9160q;
        }
    }

    /* renamed from: f */
    public final long m4866f() {
        long max;
        synchronized (this) {
            max = Math.max(this.f9156m, this.f9157n);
        }
        return max;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* renamed from: g */
    public final int m4865g(fl2 fl2Var, sm2 sm2Var, boolean z, boolean z2, zzit zzitVar, wp2 wp2Var) {
        synchronized (this) {
            if (!m4868d()) {
                if (z2) {
                    sm2Var.m6420e(4);
                    return -4;
                }
                zzit zzitVar2 = this.f9160q;
                if (zzitVar2 == null || (!z && zzitVar2 == zzitVar)) {
                    return -3;
                }
                fl2Var.f6509a = zzitVar2;
                return -5;
            }
            if (!z) {
                zzit[] zzitVarArr = this.f9151h;
                int i = this.f9154k;
                if (zzitVarArr[i] == zzitVar) {
                    if (sm2Var.c == null) {
                        return -3;
                    }
                    sm2Var.d = this.f9149f[i];
                    sm2Var.m6420e(this.f9148e[i]);
                    int[] iArr = this.f9147d;
                    int i2 = this.f9154k;
                    wp2Var.f9044a = iArr[i2];
                    wp2Var.f9045b = this.f9146c[i2];
                    wp2Var.f9047d = this.f9150g[i2];
                    this.f9156m = Math.max(this.f9156m, sm2Var.d);
                    int i3 = this.f9152i - 1;
                    this.f9152i = i3;
                    int i4 = this.f9154k + 1;
                    this.f9154k = i4;
                    this.f9153j++;
                    int i5 = i4;
                    if (i4 == this.f9144a) {
                        this.f9154k = 0;
                        i5 = 0;
                    }
                    wp2Var.f9046c = i3 > 0 ? this.f9146c[i5] : wp2Var.f9045b + wp2Var.f9044a;
                    return -4;
                }
            }
            fl2Var.f6509a = this.f9151h[this.f9154k];
            return -5;
        }
    }

    /* renamed from: h */
    public final long m4864h() {
        synchronized (this) {
            if (!m4868d()) {
                return -1L;
            }
            int i = this.f9154k;
            int i2 = this.f9152i;
            int i3 = i + i2;
            int i4 = this.f9144a;
            int i5 = (i3 - 1) % i4;
            this.f9154k = i3 % i4;
            this.f9153j += i2;
            this.f9152i = 0;
            return this.f9146c[i5] + this.f9147d[i5];
        }
    }

    /* renamed from: i */
    public final long m4863i(long j, boolean z) {
        synchronized (this) {
            if (m4868d()) {
                long[] jArr = this.f9149f;
                int i = this.f9154k;
                if (j >= jArr[i]) {
                    int i2 = 0;
                    if (j > this.f9157n && !z) {
                        return -1L;
                    }
                    int i3 = -1;
                    while (i != this.f9155l && this.f9149f[i] <= j) {
                        if (1 == (this.f9148e[i] & 1)) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.f9144a;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.f9154k + i3) % this.f9144a;
                    this.f9154k = i4;
                    this.f9153j += i3;
                    this.f9152i -= i3;
                    return this.f9146c[i4];
                }
            }
            return -1L;
        }
    }

    /* renamed from: j */
    public final boolean m4862j(zzit zzitVar) {
        synchronized (this) {
            if (zzitVar == null) {
                this.f9159p = true;
                return false;
            }
            this.f9159p = false;
            if (zr2.m4534a(zzitVar, this.f9160q)) {
                return false;
            }
            this.f9160q = zzitVar;
            return true;
        }
    }

    /* renamed from: k */
    public final void m4861k(long j, int i, long j2, int i2, gn2 gn2Var) {
        synchronized (this) {
            if (this.f9158o) {
                if ((i & 1) == 0) {
                    return;
                }
                this.f9158o = false;
            }
            jr2.m6923d(!this.f9159p);
            m4860l(j);
            long[] jArr = this.f9149f;
            int i3 = this.f9155l;
            jArr[i3] = j;
            long[] jArr2 = this.f9146c;
            jArr2[i3] = j2;
            this.f9147d[i3] = i2;
            this.f9148e[i3] = i;
            this.f9150g[i3] = gn2Var;
            this.f9151h[i3] = this.f9160q;
            this.f9145b[i3] = 0;
            int i4 = this.f9152i + 1;
            this.f9152i = i4;
            int i5 = this.f9144a;
            if (i4 != i5) {
                int i6 = i3 + 1;
                this.f9155l = i6;
                if (i6 != i5) {
                    return;
                }
                this.f9155l = 0;
                return;
            }
            int i7 = i5 + 1000;
            int[] iArr = new int[i7];
            long[] jArr3 = new long[i7];
            long[] jArr4 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            gn2[] gn2VarArr = new gn2[i7];
            zzit[] zzitVarArr = new zzit[i7];
            int i8 = this.f9154k;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.f9149f, this.f9154k, jArr4, 0, i9);
            System.arraycopy(this.f9148e, this.f9154k, iArr2, 0, i9);
            System.arraycopy(this.f9147d, this.f9154k, iArr3, 0, i9);
            System.arraycopy(this.f9150g, this.f9154k, gn2VarArr, 0, i9);
            System.arraycopy(this.f9151h, this.f9154k, zzitVarArr, 0, i9);
            System.arraycopy(this.f9145b, this.f9154k, iArr, 0, i9);
            int i10 = this.f9154k;
            System.arraycopy(this.f9146c, 0, jArr3, i9, i10);
            System.arraycopy(this.f9149f, 0, jArr4, i9, i10);
            System.arraycopy(this.f9148e, 0, iArr2, i9, i10);
            System.arraycopy(this.f9147d, 0, iArr3, i9, i10);
            System.arraycopy(this.f9150g, 0, gn2VarArr, i9, i10);
            System.arraycopy(this.f9151h, 0, zzitVarArr, i9, i10);
            System.arraycopy(this.f9145b, 0, iArr, i9, i10);
            this.f9146c = jArr3;
            this.f9149f = jArr4;
            this.f9148e = iArr2;
            this.f9147d = iArr3;
            this.f9150g = gn2VarArr;
            this.f9151h = zzitVarArr;
            this.f9145b = iArr;
            this.f9154k = 0;
            int i11 = this.f9144a;
            this.f9155l = i11;
            this.f9152i = i11;
            this.f9144a = i7;
        }
    }

    /* renamed from: l */
    public final void m4860l(long j) {
        synchronized (this) {
            this.f9157n = Math.max(this.f9157n, j);
        }
    }
}
