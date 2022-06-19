package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.Log;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/am3.class */
public final class am3 implements yr3 {

    /* renamed from: A */
    private C7021u4 f20021A;

    /* renamed from: B */
    private boolean f20022B;

    /* renamed from: C */
    private boolean f20023C;

    /* renamed from: D */
    private hp2 f20024D;

    /* renamed from: a */
    private final ul3 f20025a;

    /* renamed from: d */
    private final go2 f20028d;

    /* renamed from: e */
    private final gj2 f20029e;

    /* renamed from: f */
    private final Looper f20030f;

    /* renamed from: g */
    private zl3 f20031g;

    /* renamed from: h */
    private C7021u4 f20032h;

    /* renamed from: p */
    private int f20040p;

    /* renamed from: q */
    private int f20041q;

    /* renamed from: r */
    private int f20042r;

    /* renamed from: s */
    private int f20043s;

    /* renamed from: w */
    private boolean f20047w;

    /* renamed from: z */
    private C7021u4 f20050z;

    /* renamed from: b */
    private final xl3 f20026b = new xl3();

    /* renamed from: i */
    private int f20033i = 1000;

    /* renamed from: j */
    private int[] f20034j = new int[1000];

    /* renamed from: k */
    private long[] f20035k = new long[1000];

    /* renamed from: n */
    private long[] f20038n = new long[1000];

    /* renamed from: m */
    private int[] f20037m = new int[1000];

    /* renamed from: l */
    private int[] f20036l = new int[1000];

    /* renamed from: o */
    private xr3[] f20039o = new xr3[1000];

    /* renamed from: c */
    private final hm3<yl3> f20027c = new hm3<>(vl3.f31240a);

    /* renamed from: t */
    private long f20044t = Long.MIN_VALUE;

    /* renamed from: u */
    private long f20045u = Long.MIN_VALUE;

    /* renamed from: v */
    private long f20046v = Long.MIN_VALUE;

    /* renamed from: y */
    private boolean f20049y = true;

    /* renamed from: x */
    private boolean f20048x = true;

    public am3(tn3 tn3Var, Looper looper, go2 go2Var, gj2 gj2Var, byte[] bArr) {
        this.f20030f = looper;
        this.f20028d = go2Var;
        this.f20029e = gj2Var;
        this.f20025a = new ul3(tn3Var, null);
    }

    /* renamed from: L */
    private final void m16544L() {
        synchronized (this) {
            this.f20043s = 0;
            this.f20025a.m10316b();
        }
    }

    /* renamed from: g */
    private final int m16543g(C7058v4 c7058v4, C7205z3 c7205z3, boolean z, boolean z2, xl3 xl3Var) {
        synchronized (this) {
            c7205z3.f32799d = false;
            if (!m16537m()) {
                if (!z2 && !this.f20047w) {
                    C7021u4 c7021u4 = this.f20021A;
                    if (c7021u4 == null || (!z && c7021u4 == this.f20032h)) {
                        return -3;
                    }
                    m16536n(c7021u4, c7058v4);
                    return -5;
                }
                c7205z3.m16710f(4);
                return -4;
            }
            C7021u4 c7021u42 = this.f20027c.m14594a(this.f20041q + this.f20043s).f32543a;
            if (!z && c7021u42 == this.f20032h) {
                int m16532r = m16532r(this.f20043s);
                if (!m16535o(m16532r)) {
                    c7205z3.f32799d = true;
                    return -3;
                }
                c7205z3.m16710f(this.f20037m[m16532r]);
                long j = this.f20038n[m16532r];
                c7205z3.f32800e = j;
                if (j < this.f20044t) {
                    c7205z3.m16709g(Integer.MIN_VALUE);
                }
                xl3Var.f32108a = this.f20036l[m16532r];
                xl3Var.f32109b = this.f20035k[m16532r];
                xl3Var.f32110c = this.f20039o[m16532r];
                return -4;
            }
            m16536n(c7021u42, c7058v4);
            return -5;
        }
    }

    /* renamed from: h */
    private final boolean m16542h(C7021u4 c7021u4) {
        synchronized (this) {
            this.f20049y = false;
            if (C7101wa.m9720H(c7021u4, this.f20021A)) {
                return false;
            }
            if (this.f20027c.m14589f() || !this.f20027c.m14592c().f32543a.equals(c7021u4)) {
                this.f20021A = c7021u4;
            } else {
                this.f20021A = this.f20027c.m14592c().f32543a;
            }
            C7021u4 c7021u42 = this.f20021A;
            this.f20022B = C7174y9.m8890c(c7021u42.f30511n, c7021u42.f30508k);
            this.f20023C = false;
            return true;
        }
    }

    /* renamed from: i */
    private final long m16541i(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f20040p;
            if (i != 0) {
                long[] jArr = this.f20038n;
                int i2 = this.f20042r;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.f20043s;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int m16534p = m16534p(i2, i3, j, false);
                    if (m16534p == -1) {
                        return -1L;
                    }
                    return m16533q(m16534p);
                }
            }
            return -1L;
        }
    }

    /* renamed from: j */
    private final long m16540j() {
        synchronized (this) {
            int i = this.f20040p;
            if (i == 0) {
                return -1L;
            }
            return m16533q(i);
        }
    }

    /* renamed from: k */
    private final void m16539k() {
        if (this.f20024D != null) {
            this.f20024D = null;
            this.f20032h = null;
        }
    }

    /* renamed from: l */
    private final void m16538l(long j, int i, long j2, int i2, xr3 xr3Var) {
        synchronized (this) {
            int i3 = this.f20040p;
            if (i3 > 0) {
                int m16532r = m16532r(i3 - 1);
                C7173y8.m8898a(this.f20035k[m16532r] + ((long) this.f20036l[m16532r]) <= j2);
            }
            this.f20047w = (536870912 & i) != 0;
            this.f20046v = Math.max(this.f20046v, j);
            int m16532r2 = m16532r(this.f20040p);
            this.f20038n[m16532r2] = j;
            this.f20035k[m16532r2] = j2;
            this.f20036l[m16532r2] = i2;
            this.f20037m[m16532r2] = i;
            this.f20039o[m16532r2] = xr3Var;
            this.f20034j[m16532r2] = 0;
            if (this.f20027c.m14589f() || !this.f20027c.m14592c().f32543a.equals(this.f20021A)) {
                gn2 gn2Var = gn2.f23421a;
                hm3<yl3> hm3Var = this.f20027c;
                int i4 = this.f20041q;
                int i5 = this.f20040p;
                C7021u4 c7021u4 = this.f20021A;
                Objects.requireNonNull(c7021u4);
                hm3Var.m14593b(i4 + i5, new yl3(c7021u4, gn2Var, null));
            }
            int i6 = this.f20040p + 1;
            this.f20040p = i6;
            int i7 = this.f20033i;
            if (i6 == i7) {
                int i8 = i7 + 1000;
                int[] iArr = new int[i8];
                long[] jArr = new long[i8];
                long[] jArr2 = new long[i8];
                int[] iArr2 = new int[i8];
                int[] iArr3 = new int[i8];
                xr3[] xr3VarArr = new xr3[i8];
                int i9 = this.f20042r;
                int i10 = i7 - i9;
                System.arraycopy(this.f20035k, i9, jArr, 0, i10);
                System.arraycopy(this.f20038n, this.f20042r, jArr2, 0, i10);
                System.arraycopy(this.f20037m, this.f20042r, iArr2, 0, i10);
                System.arraycopy(this.f20036l, this.f20042r, iArr3, 0, i10);
                System.arraycopy(this.f20039o, this.f20042r, xr3VarArr, 0, i10);
                System.arraycopy(this.f20034j, this.f20042r, iArr, 0, i10);
                int i11 = this.f20042r;
                System.arraycopy(this.f20035k, 0, jArr, i10, i11);
                System.arraycopy(this.f20038n, 0, jArr2, i10, i11);
                System.arraycopy(this.f20037m, 0, iArr2, i10, i11);
                System.arraycopy(this.f20036l, 0, iArr3, i10, i11);
                System.arraycopy(this.f20039o, 0, xr3VarArr, i10, i11);
                System.arraycopy(this.f20034j, 0, iArr, i10, i11);
                this.f20035k = jArr;
                this.f20038n = jArr2;
                this.f20037m = iArr2;
                this.f20036l = iArr3;
                this.f20039o = xr3VarArr;
                this.f20034j = iArr;
                this.f20042r = 0;
                this.f20033i = i8;
            }
        }
    }

    /* renamed from: m */
    private final boolean m16537m() {
        return this.f20043s != this.f20040p;
    }

    /* renamed from: n */
    private final void m16536n(C7021u4 c7021u4, C7058v4 c7058v4) {
        C7021u4 c7021u42 = this.f20032h;
        zzn zznVar = c7021u42 == null ? null : c7021u42.f30514q;
        this.f20032h = c7021u4;
        zzn zznVar2 = c7021u4.f30514q;
        c7058v4.f31066a = c7021u4.m10417b(this.f20028d.mo14883a(c7021u4));
        c7058v4.f31067b = this.f20024D;
        if (c7021u42 == null || !C7101wa.m9720H(zznVar, zznVar2)) {
            hp2 hp2Var = c7021u4.f30514q == null ? null : new hp2(new zzey(new zzfi(1), 6001));
            this.f20024D = hp2Var;
            c7058v4.f31067b = hp2Var;
        }
    }

    /* renamed from: o */
    private final boolean m16535o(int i) {
        boolean z = false;
        if (this.f20024D == null) {
            z = true;
        } else if ((this.f20037m[i] & 1073741824) == 0) {
            return false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        if ((r5.f20037m[r13] & 1) != 0) goto L11;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m16534p(int r6, int r7, long r8, boolean r10) {
        /*
            r5 = this;
            r0 = -1
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r6
            r13 = r0
            r0 = r12
            r6 = r0
        Lc:
            r0 = r11
            r12 = r0
            r0 = r6
            r1 = r7
            if (r0 >= r1) goto L71
            r0 = r5
            long[] r0 = r0.f20038n
            r1 = r13
            r0 = r0[r1]
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r14 = r0
            r0 = r11
            r12 = r0
            r0 = r14
            if (r0 > 0) goto L71
            r0 = r10
            if (r0 == 0) goto L3e
            r0 = r11
            r12 = r0
            r0 = r5
            int[] r0 = r0.f20037m
            r1 = r13
            r0 = r0[r1]
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L51
        L3e:
            r0 = r6
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r14
            if (r0 != 0) goto L51
            r0 = r11
            r12 = r0
            goto L71
        L51:
            r0 = r13
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = r5
            int r1 = r1.f20033i
            if (r0 != r1) goto L67
            r0 = 0
            r13 = r0
        L67:
            int r6 = r6 + 1
            r0 = r12
            r11 = r0
            goto Lc
        L71:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.am3.m16534p(int, int, long, boolean):int");
    }

    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* renamed from: q */
    private final long m16533q(int i) {
        boolean z;
        int i2;
        long j = this.f20045u;
        boolean z2 = true;
        if (i != 0) {
            int m16532r = m16532r(i - 1);
            int i3 = 0;
            while (true) {
                z = z2;
                if (i3 >= i) {
                    break;
                }
                boolean max = Math.max(z2 ? 1L : 0L, this.f20038n[m16532r]);
                if ((this.f20037m[m16532r] & 1) != 0) {
                    z = max;
                    break;
                }
                int i4 = m16532r - 1;
                m16532r = i4;
                if (i4 == -1) {
                    m16532r = this.f20033i - 1;
                }
                i3++;
                z2 = max;
            }
        } else {
            z = true;
        }
        this.f20045u = Math.max(j, z ? 1L : 0L);
        this.f20040p -= i;
        int i5 = this.f20041q + i;
        this.f20041q = i5;
        int i6 = this.f20042r + i;
        this.f20042r = i6;
        int i7 = this.f20033i;
        if (i6 >= i7) {
            this.f20042r = i6 - i7;
        }
        int i8 = this.f20043s - i;
        this.f20043s = i8;
        if (i8 < 0) {
            this.f20043s = 0;
        }
        this.f20027c.m14591d(i5);
        if (this.f20040p == 0) {
            int i9 = this.f20042r;
            int i10 = i9;
            if (i9 == 0) {
                i10 = this.f20033i;
            }
            return this.f20035k[i10 - 1] + this.f20036l[i2];
        }
        return this.f20035k[this.f20042r];
    }

    /* renamed from: r */
    private final int m16532r(int i) {
        int i2 = this.f20042r + i;
        int i3 = this.f20033i;
        return i2 < i3 ? i2 : i2 - i3;
    }

    /* renamed from: A */
    public final long m16555A() {
        long j;
        synchronized (this) {
            j = this.f20046v;
        }
        return j;
    }

    /* renamed from: B */
    public final boolean m16554B() {
        boolean z;
        synchronized (this) {
            z = this.f20047w;
        }
        return z;
    }

    /* renamed from: C */
    public final boolean m16553C(boolean z) {
        synchronized (this) {
            if (m16537m()) {
                if (this.f20027c.m14594a(this.f20041q + this.f20043s).f32543a != this.f20032h) {
                    return true;
                }
                return m16535o(m16532r(this.f20043s));
            }
            boolean z2 = true;
            if (!z) {
                z2 = true;
                if (!this.f20047w) {
                    C7021u4 c7021u4 = this.f20021A;
                    if (c7021u4 == null) {
                        z2 = false;
                    } else if (c7021u4 == this.f20032h) {
                        return false;
                    } else {
                        z2 = true;
                    }
                }
            }
            return z2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
        if (r0 != 0) goto L20;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m16552D(com.google.android.gms.internal.ads.C7058v4 r8, com.google.android.gms.internal.ads.C7205z3 r9, int r10, boolean r11) {
        /*
            r7 = this;
            r0 = r10
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto Lc
            r0 = 1
            r12 = r0
            goto Lf
        Lc:
            r0 = 0
            r12 = r0
        Lf:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r12
            r4 = r11
            r5 = r7
            com.google.android.gms.internal.ads.xl3 r5 = r5.f20026b
            int r0 = r0.m16543g(r1, r2, r3, r4, r5)
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            r1 = -4
            if (r0 != r1) goto L78
            r0 = r9
            boolean r0 = r0.m16713c()
            if (r0 != 0) goto L74
            r0 = r10
            r1 = 1
            r0 = r0 & r1
            r14 = r0
            r0 = r10
            r1 = 4
            r0 = r0 & r1
            if (r0 != 0) goto L5f
            r0 = r14
            if (r0 == 0) goto L50
            r0 = r7
            com.google.android.gms.internal.ads.ul3 r0 = r0.f20025a
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.xl3 r2 = r2.f20026b
            r0.m10314d(r1, r2)
            goto L74
        L50:
            r0 = r7
            com.google.android.gms.internal.ads.ul3 r0 = r0.f20025a
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.xl3 r2 = r2.f20026b
            r0.m10315c(r1, r2)
            goto L67
        L5f:
            r0 = r14
            if (r0 == 0) goto L67
            goto L74
        L67:
            r0 = r7
            r1 = r7
            int r1 = r1.f20043s
            r2 = 1
            int r1 = r1 + r2
            r0.f20043s = r1
            r0 = -4
            return r0
        L74:
            r0 = -4
            r14 = r0
        L78:
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.am3.m16552D(com.google.android.gms.internal.ads.v4, com.google.android.gms.internal.ads.z3, int, boolean):int");
    }

    /* renamed from: E */
    public final boolean m16551E(long j, boolean z) {
        synchronized (this) {
            m16544L();
            int m16532r = m16532r(this.f20043s);
            if (!m16537m() || j < this.f20038n[m16532r] || (j > this.f20046v && !z)) {
                return false;
            }
            int m16534p = m16534p(m16532r, this.f20040p - this.f20043s, j, true);
            if (m16534p == -1) {
                return false;
            }
            this.f20044t = j;
            this.f20043s += m16534p;
            return true;
        }
    }

    /* renamed from: F */
    public final int m16550F(long j, boolean z) {
        synchronized (this) {
            int m16532r = m16532r(this.f20043s);
            if (m16537m() && j >= this.f20038n[m16532r]) {
                if (j > this.f20046v && z) {
                    return this.f20040p - this.f20043s;
                }
                int m16534p = m16534p(m16532r, this.f20040p - this.f20043s, j, true);
                if (m16534p != -1) {
                    return m16534p;
                }
                return 0;
            }
            return 0;
        }
    }

    /* renamed from: G */
    public final void m16549G(int i) {
        synchronized (this) {
            boolean z = false;
            if (i >= 0) {
                z = false;
                if (this.f20043s + i <= this.f20040p) {
                    z = true;
                }
            }
            C7173y8.m8898a(z);
            this.f20043s += i;
        }
    }

    /* renamed from: H */
    public final void m16548H(long j, boolean z, boolean z2) {
        this.f20025a.m10313e(m16541i(j, false, z2));
    }

    /* renamed from: I */
    public final void m16547I() {
        this.f20025a.m10313e(m16540j());
    }

    /* renamed from: J */
    public final void m16546J(zl3 zl3Var) {
        this.f20031g = zl3Var;
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: a */
    public final int mo8707a(AbstractC7207z5 abstractC7207z5, int i, boolean z) {
        return wr3.m9479a(this, abstractC7207z5, i, true);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: b */
    public final void mo8706b(C6694la c6694la, int i) {
        wr3.m9478b(this, c6694la, i);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: c */
    public final void mo8705c(long j, int i, int i2, int i3, xr3 xr3Var) {
        int i4 = i & 1;
        if (this.f20048x) {
            if (i4 == 0) {
                return;
            }
            this.f20048x = false;
        }
        int i5 = i;
        if (this.f20022B) {
            if (j < this.f20044t) {
                return;
            }
            i5 = i;
            if (i4 == 0) {
                if (!this.f20023C) {
                    String valueOf = String.valueOf(this.f20021A);
                    valueOf.length();
                    Log.w("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(valueOf));
                    this.f20023C = true;
                }
                i5 = i | 1;
            }
        }
        m16538l(j, i5, (this.f20025a.m10312f() - i2) - i3, i2, xr3Var);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: d */
    public final void mo8704d(C7021u4 c7021u4) {
        this.f20050z = c7021u4;
        boolean m16542h = m16542h(c7021u4);
        zl3 zl3Var = this.f20031g;
        if (zl3Var == null || !m16542h) {
            return;
        }
        zl3Var.mo8340a(c7021u4);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: e */
    public final int mo8703e(AbstractC7207z5 abstractC7207z5, int i, boolean z, int i2) {
        return this.f20025a.m10311g(abstractC7207z5, i, z);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: f */
    public final void mo8702f(C6694la c6694la, int i, int i2) {
        this.f20025a.m10310h(c6694la, i);
    }

    /* renamed from: s */
    public final void m16531s() {
        m16530t(true);
        m16539k();
    }

    /* renamed from: t */
    public final void m16530t(boolean z) {
        this.f20025a.m10317a();
        this.f20040p = 0;
        this.f20041q = 0;
        this.f20042r = 0;
        this.f20043s = 0;
        this.f20048x = true;
        this.f20044t = Long.MIN_VALUE;
        this.f20045u = Long.MIN_VALUE;
        this.f20046v = Long.MIN_VALUE;
        this.f20047w = false;
        this.f20027c.m14590e();
        if (z) {
            this.f20050z = null;
            this.f20021A = null;
            this.f20049y = true;
        }
    }

    /* renamed from: u */
    public final void m16529u(long j) {
        this.f20044t = j;
    }

    /* renamed from: v */
    public final int m16528v() {
        return this.f20041q + this.f20040p;
    }

    /* renamed from: w */
    public final void m16527w() {
        m16547I();
        m16539k();
    }

    /* renamed from: x */
    public final void m16526x() {
        hp2 hp2Var = this.f20024D;
        if (hp2Var == null) {
            return;
        }
        throw hp2Var.m14576a();
    }

    /* renamed from: y */
    public final int m16525y() {
        return this.f20041q + this.f20043s;
    }

    /* renamed from: z */
    public final C7021u4 m16524z() {
        synchronized (this) {
            if (this.f20049y) {
                return null;
            }
            return this.f20021A;
        }
    }
}
