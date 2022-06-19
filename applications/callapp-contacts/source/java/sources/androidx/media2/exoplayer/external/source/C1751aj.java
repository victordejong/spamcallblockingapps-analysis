package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.source.aj */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/aj.class */
public final class C1751aj {

    /* renamed from: b */
    int f6909b;

    /* renamed from: c */
    int f6910c;

    /* renamed from: k */
    private int f6918k;

    /* renamed from: l */
    private int f6919l;

    /* renamed from: m */
    private int f6920m;

    /* renamed from: p */
    private boolean f6923p;

    /* renamed from: s */
    private Format f6926s;

    /* renamed from: t */
    private Format f6927t;

    /* renamed from: d */
    private int f6911d = 1000;

    /* renamed from: a */
    int[] f6908a = new int[1000];

    /* renamed from: e */
    private long[] f6912e = new long[1000];

    /* renamed from: h */
    private long[] f6915h = new long[1000];

    /* renamed from: g */
    private int[] f6914g = new int[1000];

    /* renamed from: f */
    private int[] f6913f = new int[1000];

    /* renamed from: i */
    private AbstractC1641q.C1642a[] f6916i = new AbstractC1641q.C1642a[1000];

    /* renamed from: j */
    private Format[] f6917j = new Format[1000];

    /* renamed from: n */
    private long f6921n = Long.MIN_VALUE;

    /* renamed from: o */
    private long f6922o = Long.MIN_VALUE;

    /* renamed from: r */
    private boolean f6925r = true;

    /* renamed from: q */
    private boolean f6924q = true;

    /* renamed from: androidx.media2.exoplayer.external.source.aj$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/aj$a.class */
    public static final class C1752a {

        /* renamed from: a */
        public int f6928a;

        /* renamed from: b */
        public long f6929b;

        /* renamed from: c */
        public AbstractC1641q.C1642a f6930c;
    }

    /* renamed from: a */
    private int m42335a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.f6915h[i4] <= j; i5++) {
            if (!z || (this.f6914g[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f6911d) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* renamed from: b */
    private long m42327b(int i) {
        int i2;
        this.f6921n = Math.max(this.f6921n, m42323c(i));
        int i3 = this.f6918k - i;
        this.f6918k = i3;
        this.f6919l += i;
        int i4 = this.f6920m + i;
        this.f6920m = i4;
        int i5 = this.f6911d;
        if (i4 >= i5) {
            this.f6920m = i4 - i5;
        }
        int i6 = this.f6909b - i;
        this.f6909b = i6;
        if (i6 < 0) {
            this.f6909b = 0;
        }
        if (i3 == 0) {
            int i7 = this.f6920m;
            if (i7 == 0) {
                i7 = i5;
            }
            return this.f6912e[i7 - 1] + this.f6913f[i2];
        }
        return this.f6912e[this.f6920m];
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: c */
    private long m42323c(int i) {
        char c;
        char c2 = 0;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m42336a = m42336a(i - 1);
        int i2 = 0;
        while (true) {
            c = c2;
            if (i2 >= i) {
                break;
            }
            c2 = Math.max((long) c2, this.f6915h[m42336a]);
            c = c2;
            if ((this.f6914g[m42336a] & 1) != 0) {
                break;
            }
            int i3 = m42336a - 1;
            m42336a = i3;
            if (i3 == -1) {
                m42336a = this.f6911d - 1;
            }
            i2++;
        }
        return c;
    }

    /* renamed from: a */
    public final int m42337a() {
        return this.f6919l + this.f6918k;
    }

    /* renamed from: a */
    public final int m42336a(int i) {
        int i2 = this.f6920m + i;
        int i3 = this.f6911d;
        return i2 < i3 ? i2 : i2 - i3;
    }

    /* renamed from: a */
    public final int m42332a(long j, boolean z, boolean z2) {
        synchronized (this) {
            int m42336a = m42336a(this.f6909b);
            if (!m42324c() || j < this.f6915h[m42336a] || (j > this.f6922o && !z2)) {
                return -1;
            }
            int m42335a = m42335a(m42336a, this.f6918k - this.f6909b, j, true);
            if (m42335a == -1) {
                return -1;
            }
            this.f6909b += m42335a;
            return m42335a;
        }
    }

    /* renamed from: a */
    public final int m42331a(Format format) {
        synchronized (this) {
            int i = this.f6909b;
            if (i == this.f6918k) {
                return 0;
            }
            int m42336a = m42336a(i);
            if (this.f6917j[m42336a] != format) {
                return 1;
            }
            return (this.f6914g[m42336a] & 1073741824) != 0 ? 3 : 2;
        }
    }

    /* renamed from: a */
    public final int m42330a(C2058x c2058x, C1442e c1442e, boolean z, boolean z2, boolean z3, Format format, C1752a c1752a) {
        synchronized (this) {
            if (!m42324c()) {
                if (!z3 && !this.f6923p) {
                    Format format2 = this.f6926s;
                    if (format2 == null || (!z && format2 == format)) {
                        return -3;
                    }
                    c2058x.f8282c = format2;
                    return -5;
                }
                c1442e.f5471a = 4;
                return -4;
            }
            int m42336a = m42336a(this.f6909b);
            if (!z && this.f6917j[m42336a] == format) {
                if (z2 && (this.f6914g[m42336a] & 1073741824) != 0) {
                    return -3;
                }
                c1442e.f5471a = this.f6914g[m42336a];
                c1442e.f5495d = this.f6915h[m42336a];
                if (c1442e.m42905f()) {
                    return -4;
                }
                c1752a.f6928a = this.f6913f[m42336a];
                c1752a.f6929b = this.f6912e[m42336a];
                c1752a.f6930c = this.f6916i[m42336a];
                this.f6909b++;
                return -4;
            }
            c2058x.f8282c = this.f6917j[m42336a];
            return -5;
        }
    }

    /* renamed from: a */
    public final void m42333a(long j, int i, long j2, int i2, AbstractC1641q.C1642a c1642a) {
        synchronized (this) {
            if (this.f6924q) {
                if ((i & 1) == 0) {
                    return;
                }
                this.f6924q = false;
            }
            C1993a.m41686b(!this.f6925r);
            this.f6923p = (536870912 & i) != 0;
            this.f6922o = Math.max(this.f6922o, j);
            int m42336a = m42336a(this.f6918k);
            this.f6915h[m42336a] = j;
            long[] jArr = this.f6912e;
            jArr[m42336a] = j2;
            this.f6913f[m42336a] = i2;
            this.f6914g[m42336a] = i;
            this.f6916i[m42336a] = c1642a;
            Format[] formatArr = this.f6917j;
            Format format = this.f6926s;
            formatArr[m42336a] = format;
            this.f6908a[m42336a] = this.f6910c;
            this.f6927t = format;
            int i3 = this.f6918k + 1;
            this.f6918k = i3;
            int i4 = this.f6911d;
            if (i3 == i4) {
                int i5 = i4 + 1000;
                int[] iArr = new int[i5];
                long[] jArr2 = new long[i5];
                long[] jArr3 = new long[i5];
                int[] iArr2 = new int[i5];
                int[] iArr3 = new int[i5];
                AbstractC1641q.C1642a[] c1642aArr = new AbstractC1641q.C1642a[i5];
                Format[] formatArr2 = new Format[i5];
                int i6 = this.f6920m;
                int i7 = i4 - i6;
                System.arraycopy(jArr, i6, jArr2, 0, i7);
                System.arraycopy(this.f6915h, this.f6920m, jArr3, 0, i7);
                System.arraycopy(this.f6914g, this.f6920m, iArr2, 0, i7);
                System.arraycopy(this.f6913f, this.f6920m, iArr3, 0, i7);
                System.arraycopy(this.f6916i, this.f6920m, c1642aArr, 0, i7);
                System.arraycopy(this.f6917j, this.f6920m, formatArr2, 0, i7);
                System.arraycopy(this.f6908a, this.f6920m, iArr, 0, i7);
                int i8 = this.f6920m;
                System.arraycopy(this.f6912e, 0, jArr2, i7, i8);
                System.arraycopy(this.f6915h, 0, jArr3, i7, i8);
                System.arraycopy(this.f6914g, 0, iArr2, i7, i8);
                System.arraycopy(this.f6913f, 0, iArr3, i7, i8);
                System.arraycopy(this.f6916i, 0, c1642aArr, i7, i8);
                System.arraycopy(this.f6917j, 0, formatArr2, i7, i8);
                System.arraycopy(this.f6908a, 0, iArr, i7, i8);
                this.f6912e = jArr2;
                this.f6915h = jArr3;
                this.f6914g = iArr2;
                this.f6913f = iArr3;
                this.f6916i = c1642aArr;
                this.f6917j = formatArr2;
                this.f6908a = iArr;
                this.f6920m = 0;
                this.f6918k = this.f6911d;
                this.f6911d = i5;
            }
        }
    }

    /* renamed from: a */
    public final void m42329a(boolean z) {
        this.f6918k = 0;
        this.f6919l = 0;
        this.f6920m = 0;
        this.f6909b = 0;
        this.f6924q = true;
        this.f6921n = Long.MIN_VALUE;
        this.f6922o = Long.MIN_VALUE;
        this.f6923p = false;
        this.f6927t = null;
        if (z) {
            this.f6926s = null;
            this.f6925r = true;
        }
    }

    /* renamed from: a */
    public final boolean m42334a(long j) {
        synchronized (this) {
            if (this.f6918k == 0) {
                return j > this.f6921n;
            } else if (Math.max(this.f6921n, m42323c(this.f6909b)) >= j) {
                return false;
            } else {
                int i = this.f6918k;
                int m42336a = m42336a(i - 1);
                while (i > this.f6909b && this.f6915h[m42336a] >= j) {
                    int i2 = i - 1;
                    int i3 = m42336a - 1;
                    i = i2;
                    m42336a = i3;
                    if (i3 == -1) {
                        m42336a = this.f6911d - 1;
                        i = i2;
                    }
                }
                int m42337a = m42337a() - (this.f6919l + i);
                C1993a.m41688a(m42337a >= 0 && m42337a <= this.f6918k - this.f6909b);
                int i4 = this.f6918k - m42337a;
                this.f6918k = i4;
                this.f6922o = Math.max(this.f6921n, m42323c(i4));
                boolean z = false;
                if (m42337a == 0) {
                    z = false;
                    if (this.f6923p) {
                        z = true;
                    }
                }
                this.f6923p = z;
                int i5 = this.f6918k;
                if (i5 != 0) {
                    m42336a(i5 - 1);
                }
                return true;
            }
        }
    }

    /* renamed from: b */
    public final int m42328b() {
        return this.f6919l + this.f6909b;
    }

    /* renamed from: b */
    public final long m42326b(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f6918k;
            if (i != 0) {
                long[] jArr = this.f6915h;
                int i2 = this.f6920m;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.f6909b;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int m42335a = m42335a(i2, i3, j, z);
                    if (m42335a == -1) {
                        return -1L;
                    }
                    return m42327b(m42335a);
                }
            }
            return -1L;
        }
    }

    /* renamed from: b */
    public final boolean m42325b(Format format) {
        synchronized (this) {
            if (format == null) {
                this.f6925r = true;
                return false;
            }
            this.f6925r = false;
            if (C1996ac.m41658a(format, this.f6926s)) {
                return false;
            }
            if (C1996ac.m41658a(format, this.f6927t)) {
                this.f6926s = this.f6927t;
                return true;
            }
            this.f6926s = format;
            return true;
        }
    }

    /* renamed from: c */
    public final boolean m42324c() {
        boolean z;
        synchronized (this) {
            z = this.f6909b != this.f6918k;
        }
        return z;
    }

    /* renamed from: d */
    public final Format m42322d() {
        synchronized (this) {
            if (this.f6925r) {
                return null;
            }
            return this.f6926s;
        }
    }

    /* renamed from: e */
    public final long m42321e() {
        long j;
        synchronized (this) {
            j = this.f6922o;
        }
        return j;
    }

    /* renamed from: f */
    public final boolean m42320f() {
        boolean z;
        synchronized (this) {
            z = this.f6923p;
        }
        return z;
    }

    /* renamed from: g */
    public final void m42319g() {
        synchronized (this) {
            this.f6909b = 0;
        }
    }

    /* renamed from: h */
    public final int m42318h() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f6918k;
            i2 = this.f6909b;
            this.f6909b = i;
        }
        return i - i2;
    }

    /* renamed from: i */
    public final long m42317i() {
        synchronized (this) {
            int i = this.f6918k;
            if (i == 0) {
                return -1L;
            }
            return m42327b(i);
        }
    }
}
