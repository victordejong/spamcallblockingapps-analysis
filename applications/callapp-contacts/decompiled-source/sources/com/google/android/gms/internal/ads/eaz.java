package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaz.class */
final class eaz {
    private int i;
    private int j;
    private int k;
    private int l;
    private zzht q;

    /* renamed from: a  reason: collision with root package name */
    private int f27556a = 1000;

    /* renamed from: b  reason: collision with root package name */
    private int[] f27557b = new int[1000];

    /* renamed from: c  reason: collision with root package name */
    private long[] f27558c = new long[1000];
    private long[] f = new long[1000];
    private int[] e = new int[1000];

    /* renamed from: d  reason: collision with root package name */
    private int[] f27559d = new int[1000];
    private dyf[] g = new dyf[1000];
    private zzht[] h = new zzht[1000];
    private long m = Long.MIN_VALUE;
    private long n = Long.MIN_VALUE;
    private boolean p = true;
    private boolean o = true;

    public final int a(dvw dvwVar, dxm dxmVar, boolean z, boolean z2, zzht zzhtVar, eay eayVar) {
        synchronized (this) {
            if (d()) {
                if (!z && this.h[this.k] == zzhtVar) {
                    if (dxmVar.f27376c == null) {
                        return -3;
                    }
                    dxmVar.f27377d = this.f[this.k];
                    dxmVar.f27361a = this.e[this.k];
                    eayVar.f27552a = this.f27559d[this.k];
                    eayVar.f27553b = this.f27558c[this.k];
                    eayVar.f27555d = this.g[this.k];
                    this.m = Math.max(this.m, dxmVar.f27377d);
                    int i = this.i - 1;
                    this.i = i;
                    int i2 = this.k + 1;
                    this.k = i2;
                    this.j++;
                    if (i2 == this.f27556a) {
                        this.k = 0;
                    }
                    eayVar.f27554c = i > 0 ? this.f27558c[this.k] : eayVar.f27553b + eayVar.f27552a;
                    return -4;
                }
                dvwVar.f27281a = this.h[this.k];
                return -5;
            } else if (z2) {
                dxmVar.f27361a = 4;
                return -4;
            } else {
                zzht zzhtVar2 = this.q;
                if (zzhtVar2 == null || (!z && zzhtVar2 == zzhtVar)) {
                    return -3;
                }
                dvwVar.f27281a = zzhtVar2;
                return -5;
            }
        }
    }

    public final long a(long j, boolean z) {
        synchronized (this) {
            if (d()) {
                long[] jArr = this.f;
                int i = this.k;
                if (j >= jArr[i]) {
                    if (j > this.n && !z) {
                        return -1L;
                    }
                    int i2 = 0;
                    int i3 = -1;
                    while (i != this.l && this.f[i] <= j) {
                        if ((this.e[i] & 1) != 0) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.f27556a;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.k + i3) % this.f27556a;
                    this.k = i4;
                    this.j += i3;
                    this.i -= i3;
                    return this.f27558c[i4];
                }
            }
            return -1L;
        }
    }

    public final void a() {
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.i = 0;
        this.o = true;
    }

    public final void a(long j) {
        synchronized (this) {
            this.n = Math.max(this.n, j);
        }
    }

    public final void a(long j, int i, long j2, int i2, dyf dyfVar) {
        synchronized (this) {
            if (this.o) {
                if ((i & 1) != 0) {
                    this.o = false;
                } else {
                    return;
                }
            }
            ecr.b(!this.p);
            a(j);
            long[] jArr = this.f;
            int i3 = this.l;
            jArr[i3] = j;
            long[] jArr2 = this.f27558c;
            jArr2[i3] = j2;
            this.f27559d[i3] = i2;
            this.e[i3] = i;
            this.g[i3] = dyfVar;
            this.h[i3] = this.q;
            this.f27557b[i3] = 0;
            int i4 = this.i + 1;
            this.i = i4;
            int i5 = this.f27556a;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                int[] iArr = new int[i6];
                long[] jArr3 = new long[i6];
                long[] jArr4 = new long[i6];
                int[] iArr2 = new int[i6];
                int[] iArr3 = new int[i6];
                dyf[] dyfVarArr = new dyf[i6];
                zzht[] zzhtVarArr = new zzht[i6];
                int i7 = this.k;
                int i8 = i5 - i7;
                System.arraycopy(jArr2, i7, jArr3, 0, i8);
                System.arraycopy(this.f, this.k, jArr4, 0, i8);
                System.arraycopy(this.e, this.k, iArr2, 0, i8);
                System.arraycopy(this.f27559d, this.k, iArr3, 0, i8);
                System.arraycopy(this.g, this.k, dyfVarArr, 0, i8);
                System.arraycopy(this.h, this.k, zzhtVarArr, 0, i8);
                System.arraycopy(this.f27557b, this.k, iArr, 0, i8);
                int i9 = this.k;
                System.arraycopy(this.f27558c, 0, jArr3, i8, i9);
                System.arraycopy(this.f, 0, jArr4, i8, i9);
                System.arraycopy(this.e, 0, iArr2, i8, i9);
                System.arraycopy(this.f27559d, 0, iArr3, i8, i9);
                System.arraycopy(this.g, 0, dyfVarArr, i8, i9);
                System.arraycopy(this.h, 0, zzhtVarArr, i8, i9);
                System.arraycopy(this.f27557b, 0, iArr, i8, i9);
                this.f27558c = jArr3;
                this.f = jArr4;
                this.e = iArr2;
                this.f27559d = iArr3;
                this.g = dyfVarArr;
                this.h = zzhtVarArr;
                this.f27557b = iArr;
                this.k = 0;
                int i10 = this.f27556a;
                this.l = i10;
                this.i = i10;
                this.f27556a = i6;
                return;
            }
            int i11 = i3 + 1;
            this.l = i11;
            if (i11 == i5) {
                this.l = 0;
            }
        }
    }

    public final boolean a(zzht zzhtVar) {
        synchronized (this) {
            if (zzhtVar == null) {
                this.p = true;
                return false;
            }
            this.p = false;
            if (ede.a(zzhtVar, this.q)) {
                return false;
            }
            this.q = zzhtVar;
            return true;
        }
    }

    public final void b() {
        this.m = Long.MIN_VALUE;
        this.n = Long.MIN_VALUE;
    }

    public final int c() {
        return this.j + this.i;
    }

    public final boolean d() {
        boolean z;
        synchronized (this) {
            z = this.i != 0;
        }
        return z;
    }

    public final zzht e() {
        synchronized (this) {
            if (this.p) {
                return null;
            }
            return this.q;
        }
    }

    public final long f() {
        long max;
        synchronized (this) {
            max = Math.max(this.m, this.n);
        }
        return max;
    }

    public final long g() {
        synchronized (this) {
            if (!d()) {
                return -1L;
            }
            int i = this.k;
            int i2 = this.i;
            int i3 = this.f27556a;
            int i4 = ((i + i2) - 1) % i3;
            this.k = (i + i2) % i3;
            this.j += i2;
            this.i = 0;
            return this.f27558c[i4] + this.f27559d[i4];
        }
    }
}
