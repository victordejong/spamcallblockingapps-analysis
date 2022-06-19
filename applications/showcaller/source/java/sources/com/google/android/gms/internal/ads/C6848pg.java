package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.pg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pg.class */
final class C6848pg {

    /* renamed from: i */
    private int f27986i;

    /* renamed from: j */
    private int f27987j;

    /* renamed from: k */
    private int f27988k;

    /* renamed from: l */
    private int f27989l;

    /* renamed from: q */
    private zzanm f27994q;

    /* renamed from: a */
    private int f27978a = 1000;

    /* renamed from: b */
    private int[] f27979b = new int[1000];

    /* renamed from: c */
    private long[] f27980c = new long[1000];

    /* renamed from: f */
    private long[] f27983f = new long[1000];

    /* renamed from: e */
    private int[] f27982e = new int[1000];

    /* renamed from: d */
    private int[] f27981d = new int[1000];

    /* renamed from: g */
    private C7067vd[] f27984g = new C7067vd[1000];

    /* renamed from: h */
    private zzanm[] f27985h = new zzanm[1000];

    /* renamed from: m */
    private long f27990m = Long.MIN_VALUE;

    /* renamed from: n */
    private long f27991n = Long.MIN_VALUE;

    /* renamed from: p */
    private boolean f27993p = true;

    /* renamed from: o */
    private boolean f27992o = true;

    /* renamed from: a */
    public final void m12257a() {
        this.f27987j = 0;
        this.f27988k = 0;
        this.f27989l = 0;
        this.f27986i = 0;
        this.f27992o = true;
    }

    /* renamed from: b */
    public final void m12256b() {
        this.f27990m = Long.MIN_VALUE;
        this.f27991n = Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final int m12255c() {
        return this.f27987j + this.f27986i;
    }

    /* renamed from: d */
    public final boolean m12254d() {
        boolean z;
        synchronized (this) {
            z = this.f27986i != 0;
        }
        return z;
    }

    /* renamed from: e */
    public final zzanm m12253e() {
        synchronized (this) {
            if (this.f27993p) {
                return null;
            }
            return this.f27994q;
        }
    }

    /* renamed from: f */
    public final long m12252f() {
        long max;
        synchronized (this) {
            max = Math.max(this.f27990m, this.f27991n);
        }
        return max;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* renamed from: g */
    public final int m12251g(C6954sb c6954sb, C6548hd c6548hd, boolean z, boolean z2, zzanm zzanmVar, C6811og c6811og) {
        synchronized (this) {
            if (!m12254d()) {
                if (z2) {
                    c6548hd.m16083e(4);
                    return -4;
                }
                zzanm zzanmVar2 = this.f27994q;
                if (zzanmVar2 == null || (!z && zzanmVar2 == zzanmVar)) {
                    return -3;
                }
                c6954sb.f29434a = zzanmVar2;
                return -5;
            }
            if (!z) {
                zzanm[] zzanmVarArr = this.f27985h;
                int i = this.f27988k;
                if (zzanmVarArr[i] == zzanmVar) {
                    if (c6548hd.f23853c == null) {
                        return -3;
                    }
                    c6548hd.f23854d = this.f27983f[i];
                    c6548hd.m16083e(this.f27982e[i]);
                    int[] iArr = this.f27981d;
                    int i2 = this.f27988k;
                    c6811og.f27520a = iArr[i2];
                    c6811og.f27521b = this.f27980c[i2];
                    c6811og.f27523d = this.f27984g[i2];
                    this.f27990m = Math.max(this.f27990m, c6548hd.f23854d);
                    int i3 = this.f27986i - 1;
                    this.f27986i = i3;
                    int i4 = this.f27988k + 1;
                    this.f27988k = i4;
                    this.f27987j++;
                    int i5 = i4;
                    if (i4 == this.f27978a) {
                        this.f27988k = 0;
                        i5 = 0;
                    }
                    c6811og.f27522c = i3 > 0 ? this.f27980c[i5] : c6811og.f27521b + c6811og.f27520a;
                    return -4;
                }
            }
            c6954sb.f29434a = this.f27985h[this.f27988k];
            return -5;
        }
    }

    /* renamed from: h */
    public final long m12250h() {
        synchronized (this) {
            if (!m12254d()) {
                return -1L;
            }
            int i = this.f27988k;
            int i2 = this.f27986i;
            int i3 = i + i2;
            int i4 = this.f27978a;
            int i5 = (i3 - 1) % i4;
            this.f27988k = i3 % i4;
            this.f27987j += i2;
            this.f27986i = 0;
            return this.f27980c[i5] + this.f27981d[i5];
        }
    }

    /* renamed from: i */
    public final long m12249i(long j, boolean z) {
        synchronized (this) {
            if (m12254d()) {
                long[] jArr = this.f27983f;
                int i = this.f27988k;
                if (j >= jArr[i]) {
                    int i2 = 0;
                    if (j > this.f27991n && !z) {
                        return -1L;
                    }
                    int i3 = -1;
                    while (i != this.f27989l && this.f27983f[i] <= j) {
                        if (1 == (this.f27982e[i] & 1)) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.f27978a;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.f27988k + i3) % this.f27978a;
                    this.f27988k = i4;
                    this.f27987j += i3;
                    this.f27986i -= i3;
                    return this.f27980c[i4];
                }
            }
            return -1L;
        }
    }

    /* renamed from: j */
    public final boolean m12248j(zzanm zzanmVar) {
        synchronized (this) {
            if (zzanmVar == null) {
                this.f27993p = true;
                return false;
            }
            this.f27993p = false;
            if (C6961si.m11021a(zzanmVar, this.f27994q)) {
                return false;
            }
            this.f27994q = zzanmVar;
            return true;
        }
    }

    /* renamed from: k */
    public final void m12247k(long j, int i, long j2, int i2, C7067vd c7067vd) {
        synchronized (this) {
            if (this.f27992o) {
                if ((i & 1) == 0) {
                    return;
                }
                this.f27992o = false;
            }
            C6367ci.m16039d(!this.f27993p);
            m12246l(j);
            long[] jArr = this.f27983f;
            int i3 = this.f27989l;
            jArr[i3] = j;
            long[] jArr2 = this.f27980c;
            jArr2[i3] = j2;
            this.f27981d[i3] = i2;
            this.f27982e[i3] = i;
            this.f27984g[i3] = c7067vd;
            this.f27985h[i3] = this.f27994q;
            this.f27979b[i3] = 0;
            int i4 = this.f27986i + 1;
            this.f27986i = i4;
            int i5 = this.f27978a;
            if (i4 != i5) {
                int i6 = i3 + 1;
                this.f27989l = i6;
                if (i6 != i5) {
                    return;
                }
                this.f27989l = 0;
                return;
            }
            int i7 = i5 + 1000;
            int[] iArr = new int[i7];
            long[] jArr3 = new long[i7];
            long[] jArr4 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            C7067vd[] c7067vdArr = new C7067vd[i7];
            zzanm[] zzanmVarArr = new zzanm[i7];
            int i8 = this.f27988k;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.f27983f, this.f27988k, jArr4, 0, i9);
            System.arraycopy(this.f27982e, this.f27988k, iArr2, 0, i9);
            System.arraycopy(this.f27981d, this.f27988k, iArr3, 0, i9);
            System.arraycopy(this.f27984g, this.f27988k, c7067vdArr, 0, i9);
            System.arraycopy(this.f27985h, this.f27988k, zzanmVarArr, 0, i9);
            System.arraycopy(this.f27979b, this.f27988k, iArr, 0, i9);
            int i10 = this.f27988k;
            System.arraycopy(this.f27980c, 0, jArr3, i9, i10);
            System.arraycopy(this.f27983f, 0, jArr4, i9, i10);
            System.arraycopy(this.f27982e, 0, iArr2, i9, i10);
            System.arraycopy(this.f27981d, 0, iArr3, i9, i10);
            System.arraycopy(this.f27984g, 0, c7067vdArr, i9, i10);
            System.arraycopy(this.f27985h, 0, zzanmVarArr, i9, i10);
            System.arraycopy(this.f27979b, 0, iArr, i9, i10);
            this.f27980c = jArr3;
            this.f27983f = jArr4;
            this.f27982e = iArr2;
            this.f27981d = iArr3;
            this.f27984g = c7067vdArr;
            this.f27985h = zzanmVarArr;
            this.f27979b = iArr;
            this.f27988k = 0;
            int i11 = this.f27978a;
            this.f27989l = i11;
            this.f27986i = i11;
            this.f27978a = i7;
        }
    }

    /* renamed from: l */
    public final void m12246l(long j) {
        synchronized (this) {
            this.f27991n = Math.max(this.f27991n, j);
        }
    }
}
