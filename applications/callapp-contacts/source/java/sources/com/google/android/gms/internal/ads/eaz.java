package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaz.class */
final class eaz {

    /* renamed from: i */
    private int f48565i;

    /* renamed from: j */
    private int f48566j;

    /* renamed from: k */
    private int f48567k;

    /* renamed from: l */
    private int f48568l;

    /* renamed from: q */
    private zzht f48573q;

    /* renamed from: a */
    private int f48557a = 1000;

    /* renamed from: b */
    private int[] f48558b = new int[1000];

    /* renamed from: c */
    private long[] f48559c = new long[1000];

    /* renamed from: f */
    private long[] f48562f = new long[1000];

    /* renamed from: e */
    private int[] f48561e = new int[1000];

    /* renamed from: d */
    private int[] f48560d = new int[1000];

    /* renamed from: g */
    private dyf[] f48563g = new dyf[1000];

    /* renamed from: h */
    private zzht[] f48564h = new zzht[1000];

    /* renamed from: m */
    private long f48569m = Long.MIN_VALUE;

    /* renamed from: n */
    private long f48570n = Long.MIN_VALUE;

    /* renamed from: p */
    private boolean f48572p = true;

    /* renamed from: o */
    private boolean f48571o = true;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* renamed from: a */
    public final int m15345a(dvw dvwVar, dxm dxmVar, boolean z, boolean z2, zzht zzhtVar, eay eayVar) {
        synchronized (this) {
            if (!m15341d()) {
                if (z2) {
                    dxmVar.f47942a = 4;
                    return -4;
                }
                zzht zzhtVar2 = this.f48573q;
                if (zzhtVar2 == null || (!z && zzhtVar2 == zzhtVar)) {
                    return -3;
                }
                dvwVar.f47756a = zzhtVar2;
                return -5;
            }
            if (!z && this.f48564h[this.f48567k] == zzhtVar) {
                if (dxmVar.f47974c == null) {
                    return -3;
                }
                dxmVar.f47975d = this.f48562f[this.f48567k];
                dxmVar.f47942a = this.f48561e[this.f48567k];
                eayVar.f48553a = this.f48560d[this.f48567k];
                eayVar.f48554b = this.f48559c[this.f48567k];
                eayVar.f48556d = this.f48563g[this.f48567k];
                this.f48569m = Math.max(this.f48569m, dxmVar.f47975d);
                int i = this.f48565i - 1;
                this.f48565i = i;
                int i2 = this.f48567k + 1;
                this.f48567k = i2;
                this.f48566j++;
                if (i2 == this.f48557a) {
                    this.f48567k = 0;
                }
                eayVar.f48555c = i > 0 ? this.f48559c[this.f48567k] : eayVar.f48554b + eayVar.f48553a;
                return -4;
            }
            dvwVar.f47756a = this.f48564h[this.f48567k];
            return -5;
        }
    }

    /* renamed from: a */
    public final long m15346a(long j, boolean z) {
        synchronized (this) {
            if (m15341d()) {
                long[] jArr = this.f48562f;
                int i = this.f48567k;
                if (j >= jArr[i]) {
                    if (j > this.f48570n && !z) {
                        return -1L;
                    }
                    int i2 = 0;
                    int i3 = -1;
                    while (i != this.f48568l && this.f48562f[i] <= j) {
                        if ((this.f48561e[i] & 1) != 0) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.f48557a;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.f48567k + i3) % this.f48557a;
                    this.f48567k = i4;
                    this.f48566j += i3;
                    this.f48565i -= i3;
                    return this.f48559c[i4];
                }
            }
            return -1L;
        }
    }

    /* renamed from: a */
    public final void m15349a() {
        this.f48566j = 0;
        this.f48567k = 0;
        this.f48568l = 0;
        this.f48565i = 0;
        this.f48571o = true;
    }

    /* renamed from: a */
    public final void m15348a(long j) {
        synchronized (this) {
            this.f48570n = Math.max(this.f48570n, j);
        }
    }

    /* renamed from: a */
    public final void m15347a(long j, int i, long j2, int i2, dyf dyfVar) {
        synchronized (this) {
            if (this.f48571o) {
                if ((i & 1) == 0) {
                    return;
                }
                this.f48571o = false;
            }
            ecr.m15247b(!this.f48572p);
            m15348a(j);
            long[] jArr = this.f48562f;
            int i3 = this.f48568l;
            jArr[i3] = j;
            long[] jArr2 = this.f48559c;
            jArr2[i3] = j2;
            this.f48560d[i3] = i2;
            this.f48561e[i3] = i;
            this.f48563g[i3] = dyfVar;
            this.f48564h[i3] = this.f48573q;
            this.f48558b[i3] = 0;
            int i4 = this.f48565i + 1;
            this.f48565i = i4;
            int i5 = this.f48557a;
            if (i4 != i5) {
                int i6 = i3 + 1;
                this.f48568l = i6;
                if (i6 == i5) {
                    this.f48568l = 0;
                }
                return;
            }
            int i7 = i5 + 1000;
            int[] iArr = new int[i7];
            long[] jArr3 = new long[i7];
            long[] jArr4 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            dyf[] dyfVarArr = new dyf[i7];
            zzht[] zzhtVarArr = new zzht[i7];
            int i8 = this.f48567k;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.f48562f, this.f48567k, jArr4, 0, i9);
            System.arraycopy(this.f48561e, this.f48567k, iArr2, 0, i9);
            System.arraycopy(this.f48560d, this.f48567k, iArr3, 0, i9);
            System.arraycopy(this.f48563g, this.f48567k, dyfVarArr, 0, i9);
            System.arraycopy(this.f48564h, this.f48567k, zzhtVarArr, 0, i9);
            System.arraycopy(this.f48558b, this.f48567k, iArr, 0, i9);
            int i10 = this.f48567k;
            System.arraycopy(this.f48559c, 0, jArr3, i9, i10);
            System.arraycopy(this.f48562f, 0, jArr4, i9, i10);
            System.arraycopy(this.f48561e, 0, iArr2, i9, i10);
            System.arraycopy(this.f48560d, 0, iArr3, i9, i10);
            System.arraycopy(this.f48563g, 0, dyfVarArr, i9, i10);
            System.arraycopy(this.f48564h, 0, zzhtVarArr, i9, i10);
            System.arraycopy(this.f48558b, 0, iArr, i9, i10);
            this.f48559c = jArr3;
            this.f48562f = jArr4;
            this.f48561e = iArr2;
            this.f48560d = iArr3;
            this.f48563g = dyfVarArr;
            this.f48564h = zzhtVarArr;
            this.f48558b = iArr;
            this.f48567k = 0;
            int i11 = this.f48557a;
            this.f48568l = i11;
            this.f48565i = i11;
            this.f48557a = i7;
        }
    }

    /* renamed from: a */
    public final boolean m15344a(zzht zzhtVar) {
        synchronized (this) {
            if (zzhtVar == null) {
                this.f48572p = true;
                return false;
            }
            this.f48572p = false;
            if (ede.m15194a(zzhtVar, this.f48573q)) {
                return false;
            }
            this.f48573q = zzhtVar;
            return true;
        }
    }

    /* renamed from: b */
    public final void m15343b() {
        this.f48569m = Long.MIN_VALUE;
        this.f48570n = Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final int m15342c() {
        return this.f48566j + this.f48565i;
    }

    /* renamed from: d */
    public final boolean m15341d() {
        boolean z;
        synchronized (this) {
            z = this.f48565i != 0;
        }
        return z;
    }

    /* renamed from: e */
    public final zzht m15340e() {
        synchronized (this) {
            if (this.f48572p) {
                return null;
            }
            return this.f48573q;
        }
    }

    /* renamed from: f */
    public final long m15339f() {
        long max;
        synchronized (this) {
            max = Math.max(this.f48569m, this.f48570n);
        }
        return max;
    }

    /* renamed from: g */
    public final long m15338g() {
        synchronized (this) {
            if (!m15341d()) {
                return -1L;
            }
            int i = this.f48567k;
            int i2 = this.f48565i;
            int i3 = this.f48557a;
            int i4 = ((i + i2) - 1) % i3;
            this.f48567k = (i + i2) % i3;
            this.f48566j += i2;
            this.f48565i = 0;
            return this.f48559c[i4] + this.f48560d[i4];
        }
    }
}
