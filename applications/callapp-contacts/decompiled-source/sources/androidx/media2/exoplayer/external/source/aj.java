package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.x;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/aj.class */
public final class aj {

    /* renamed from: b  reason: collision with root package name */
    int f3572b;

    /* renamed from: c  reason: collision with root package name */
    int f3573c;
    private int k;
    private int l;
    private int m;
    private boolean p;
    private Format s;
    private Format t;

    /* renamed from: d  reason: collision with root package name */
    private int f3574d = 1000;

    /* renamed from: a  reason: collision with root package name */
    int[] f3571a = new int[1000];
    private long[] e = new long[1000];
    private long[] h = new long[1000];
    private int[] g = new int[1000];
    private int[] f = new int[1000];
    private q.a[] i = new q.a[1000];
    private Format[] j = new Format[1000];
    private long n = Long.MIN_VALUE;
    private long o = Long.MIN_VALUE;
    private boolean r = true;
    private boolean q = true;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/aj$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3575a;

        /* renamed from: b  reason: collision with root package name */
        public long f3576b;

        /* renamed from: c  reason: collision with root package name */
        public q.a f3577c;
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.h[i4] <= j; i5++) {
            if (!z || (this.g[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f3574d) {
                i4 = 0;
            }
        }
        return i3;
    }

    private long b(int i) {
        int i2;
        this.n = Math.max(this.n, c(i));
        int i3 = this.k - i;
        this.k = i3;
        this.l += i;
        int i4 = this.m + i;
        this.m = i4;
        int i5 = this.f3574d;
        if (i4 >= i5) {
            this.m = i4 - i5;
        }
        int i6 = this.f3572b - i;
        this.f3572b = i6;
        if (i6 < 0) {
            this.f3572b = 0;
        }
        if (i3 != 0) {
            return this.e[this.m];
        }
        int i7 = this.m;
        if (i7 == 0) {
            i7 = i5;
        }
        return this.e[i7 - 1] + this.f[i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long c(int r6) {
        /*
            r5 = this;
            r0 = -9223372036854775808
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775808
            return r0
        L_0x000c:
            r0 = r5
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            int r0 = r0.a(r1)
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0018:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x005a
            r0 = r7
            r1 = r5
            long[] r1 = r1.h
            r2 = r9
            r1 = r1[r2]
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r7
            r11 = r0
            r0 = r5
            int[] r0 = r0.g
            r1 = r9
            r0 = r0[r1]
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x005a
            r0 = r9
            r1 = 1
            int r0 = r0 - r1
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            r1 = -1
            if (r0 != r1) goto L_0x0054
            r0 = r5
            int r0 = r0.f3574d
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        L_0x0054:
            int r10 = r10 + 1
            goto L_0x0018
        L_0x005a:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.aj.c(int):long");
    }

    public final int a() {
        return this.l + this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i) {
        int i2 = this.m + i;
        int i3 = this.f3574d;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final int a(long j, boolean z, boolean z2) {
        synchronized (this) {
            int a2 = a(this.f3572b);
            if (!c() || j < this.h[a2] || (j > this.o && !z2)) {
                return -1;
            }
            int a3 = a(a2, this.k - this.f3572b, j, true);
            if (a3 == -1) {
                return -1;
            }
            this.f3572b += a3;
            return a3;
        }
    }

    public final int a(Format format) {
        synchronized (this) {
            int i = this.f3572b;
            if (i == this.k) {
                return 0;
            }
            int a2 = a(i);
            if (this.j[a2] != format) {
                return 1;
            }
            return (this.g[a2] & 1073741824) != 0 ? 3 : 2;
        }
    }

    public final int a(x xVar, e eVar, boolean z, boolean z2, boolean z3, Format format, a aVar) {
        synchronized (this) {
            if (!c()) {
                if (!z3 && !this.p) {
                    Format format2 = this.s;
                    if (format2 == null || (!z && format2 == format)) {
                        return -3;
                    }
                    xVar.f4257c = format2;
                    return -5;
                }
                eVar.f2937a = 4;
                return -4;
            }
            int a2 = a(this.f3572b);
            if (!z && this.j[a2] == format) {
                if (z2 && (this.g[a2] & 1073741824) != 0) {
                    return -3;
                }
                eVar.f2937a = this.g[a2];
                eVar.f2950d = this.h[a2];
                if (eVar.f()) {
                    return -4;
                }
                aVar.f3575a = this.f[a2];
                aVar.f3576b = this.e[a2];
                aVar.f3577c = this.i[a2];
                this.f3572b++;
                return -4;
            }
            xVar.f4257c = this.j[a2];
            return -5;
        }
    }

    public final void a(long j, int i, long j2, int i2, q.a aVar) {
        synchronized (this) {
            if (this.q) {
                if ((i & 1) != 0) {
                    this.q = false;
                } else {
                    return;
                }
            }
            androidx.media2.exoplayer.external.util.a.b(!this.r);
            this.p = (536870912 & i) != 0;
            this.o = Math.max(this.o, j);
            int a2 = a(this.k);
            this.h[a2] = j;
            long[] jArr = this.e;
            jArr[a2] = j2;
            this.f[a2] = i2;
            this.g[a2] = i;
            this.i[a2] = aVar;
            Format[] formatArr = this.j;
            Format format = this.s;
            formatArr[a2] = format;
            this.f3571a[a2] = this.f3573c;
            this.t = format;
            int i3 = this.k + 1;
            this.k = i3;
            int i4 = this.f3574d;
            if (i3 == i4) {
                int i5 = i4 + 1000;
                int[] iArr = new int[i5];
                long[] jArr2 = new long[i5];
                long[] jArr3 = new long[i5];
                int[] iArr2 = new int[i5];
                int[] iArr3 = new int[i5];
                q.a[] aVarArr = new q.a[i5];
                Format[] formatArr2 = new Format[i5];
                int i6 = this.m;
                int i7 = i4 - i6;
                System.arraycopy(jArr, i6, jArr2, 0, i7);
                System.arraycopy(this.h, this.m, jArr3, 0, i7);
                System.arraycopy(this.g, this.m, iArr2, 0, i7);
                System.arraycopy(this.f, this.m, iArr3, 0, i7);
                System.arraycopy(this.i, this.m, aVarArr, 0, i7);
                System.arraycopy(this.j, this.m, formatArr2, 0, i7);
                System.arraycopy(this.f3571a, this.m, iArr, 0, i7);
                int i8 = this.m;
                System.arraycopy(this.e, 0, jArr2, i7, i8);
                System.arraycopy(this.h, 0, jArr3, i7, i8);
                System.arraycopy(this.g, 0, iArr2, i7, i8);
                System.arraycopy(this.f, 0, iArr3, i7, i8);
                System.arraycopy(this.i, 0, aVarArr, i7, i8);
                System.arraycopy(this.j, 0, formatArr2, i7, i8);
                System.arraycopy(this.f3571a, 0, iArr, i7, i8);
                this.e = jArr2;
                this.h = jArr3;
                this.g = iArr2;
                this.f = iArr3;
                this.i = aVarArr;
                this.j = formatArr2;
                this.f3571a = iArr;
                this.m = 0;
                this.k = this.f3574d;
                this.f3574d = i5;
            }
        }
    }

    public final void a(boolean z) {
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.f3572b = 0;
        this.q = true;
        this.n = Long.MIN_VALUE;
        this.o = Long.MIN_VALUE;
        this.p = false;
        this.t = null;
        if (z) {
            this.s = null;
            this.r = true;
        }
    }

    public final boolean a(long j) {
        synchronized (this) {
            if (this.k == 0) {
                return j > this.n;
            } else if (Math.max(this.n, c(this.f3572b)) >= j) {
                return false;
            } else {
                int i = this.k;
                int a2 = a(i - 1);
                while (i > this.f3572b && this.h[a2] >= j) {
                    int i2 = i - 1;
                    int i3 = a2 - 1;
                    i = i2;
                    a2 = i3;
                    if (i3 == -1) {
                        a2 = this.f3574d - 1;
                        i = i2;
                    }
                }
                int a3 = a() - (this.l + i);
                androidx.media2.exoplayer.external.util.a.a(a3 >= 0 && a3 <= this.k - this.f3572b);
                int i4 = this.k - a3;
                this.k = i4;
                this.o = Math.max(this.n, c(i4));
                boolean z = false;
                if (a3 == 0) {
                    z = false;
                    if (this.p) {
                        z = true;
                    }
                }
                this.p = z;
                int i5 = this.k;
                if (i5 != 0) {
                    a(i5 - 1);
                }
                return true;
            }
        }
    }

    public final int b() {
        return this.l + this.f3572b;
    }

    public final long b(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.k;
            if (i != 0) {
                long[] jArr = this.h;
                int i2 = this.m;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.f3572b;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int a2 = a(i2, i3, j, z);
                    if (a2 == -1) {
                        return -1L;
                    }
                    return b(a2);
                }
            }
            return -1L;
        }
    }

    public final boolean b(Format format) {
        synchronized (this) {
            if (format == null) {
                this.r = true;
                return false;
            }
            this.r = false;
            if (ac.a(format, this.s)) {
                return false;
            }
            if (ac.a(format, this.t)) {
                this.s = this.t;
                return true;
            }
            this.s = format;
            return true;
        }
    }

    public final boolean c() {
        boolean z;
        synchronized (this) {
            z = this.f3572b != this.k;
        }
        return z;
    }

    public final Format d() {
        synchronized (this) {
            if (this.r) {
                return null;
            }
            return this.s;
        }
    }

    public final long e() {
        long j;
        synchronized (this) {
            j = this.o;
        }
        return j;
    }

    public final boolean f() {
        boolean z;
        synchronized (this) {
            z = this.p;
        }
        return z;
    }

    public final void g() {
        synchronized (this) {
            this.f3572b = 0;
        }
    }

    public final int h() {
        int i;
        int i2;
        synchronized (this) {
            i = this.k;
            i2 = this.f3572b;
            this.f3572b = i;
        }
        return i - i2;
    }

    public final long i() {
        synchronized (this) {
            int i = this.k;
            if (i == 0) {
                return -1L;
            }
            return b(i);
        }
    }
}
