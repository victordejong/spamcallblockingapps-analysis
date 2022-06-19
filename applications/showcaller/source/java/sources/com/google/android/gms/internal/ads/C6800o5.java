package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.o5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o5.class */
public final class C6800o5 {

    /* renamed from: a */
    public final lk3 f27416a;

    /* renamed from: b */
    public final Object f27417b;

    /* renamed from: d */
    public boolean f27419d;

    /* renamed from: e */
    public boolean f27420e;

    /* renamed from: f */
    public C6837p5 f27421f;

    /* renamed from: g */
    public boolean f27422g;

    /* renamed from: i */
    private final AbstractC7023u6[] f27424i;

    /* renamed from: j */
    private final fn3 f27425j;

    /* renamed from: k */
    private final C7170y5 f27426k;

    /* renamed from: l */
    private C6800o5 f27427l;

    /* renamed from: n */
    private hn3 f27429n;

    /* renamed from: o */
    private long f27430o;

    /* renamed from: m */
    private dv3 f27428m = dv3.f21884a;

    /* renamed from: c */
    public final bm3[] f27418c = new bm3[2];

    /* renamed from: h */
    private final boolean[] f27423h = new boolean[2];

    public C6800o5(AbstractC7023u6[] abstractC7023u6Arr, long j, fn3 fn3Var, tn3 tn3Var, C7170y5 c7170y5, C6837p5 c6837p5, hn3 hn3Var, byte[] bArr) {
        this.f27424i = abstractC7023u6Arr;
        this.f27430o = j;
        this.f27425j = fn3Var;
        this.f27426k = c7170y5;
        mk3 mk3Var = c6837p5.f27870a;
        this.f27417b = mk3Var.f20100a;
        this.f27421f = c6837p5;
        this.f27429n = hn3Var;
        long j2 = c6837p5.f27871b;
        long j3 = c6837p5.f27873d;
        lk3 m8937o = c7170y5.m8937o(mk3Var, tn3Var, j2);
        this.f27416a = j3 != -9223372036854775807L ? new sj3(m8937o, true, 0L, j3) : m8937o;
    }

    /* renamed from: s */
    private final void m12732s() {
        if (m12730u()) {
            int i = 0;
            while (true) {
                hn3 hn3Var = this.f27429n;
                if (i >= hn3Var.f23990a) {
                    return;
                }
                hn3Var.m14584a(i);
                mm3 mm3Var = this.f27429n.f23993d[i];
                i++;
            }
        }
    }

    /* renamed from: t */
    private final void m12731t() {
        if (m12730u()) {
            int i = 0;
            while (true) {
                hn3 hn3Var = this.f27429n;
                if (i >= hn3Var.f23990a) {
                    return;
                }
                hn3Var.m14584a(i);
                mm3 mm3Var = this.f27429n.f23993d[i];
                i++;
            }
        }
    }

    /* renamed from: u */
    private final boolean m12730u() {
        return this.f27427l == null;
    }

    /* renamed from: a */
    public final long m12750a() {
        return this.f27430o;
    }

    /* renamed from: b */
    public final void m12749b(long j) {
        this.f27430o = 0L;
    }

    /* renamed from: c */
    public final long m12748c() {
        return this.f27421f.f27871b + this.f27430o;
    }

    /* renamed from: d */
    public final boolean m12747d() {
        boolean z = true;
        if (this.f27419d) {
            if (this.f27420e) {
                if (this.f27416a.mo8800f() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: e */
    public final long m12746e() {
        if (!this.f27419d) {
            return this.f27421f.f27871b;
        }
        char mo8800f = this.f27420e ? this.f27416a.mo8800f() : (char) 0;
        return mo8800f == Long.MIN_VALUE ? this.f27421f.f27874e : mo8800f;
    }

    /* renamed from: f */
    public final long m12745f() {
        if (!this.f27419d) {
            return 0L;
        }
        return this.f27416a.mo8798h();
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: g */
    public final void m12744g(float f, AbstractC6839p7 abstractC6839p7) {
        this.f27419d = true;
        this.f27428m = this.f27416a.mo8801e();
        hn3 m12741j = m12741j(f, abstractC6839p7);
        C6837p5 c6837p5 = this.f27421f;
        ?? r0 = c6837p5.f27871b;
        long j = c6837p5.f27874e;
        char c = r0;
        if (j != -9223372036854775807L) {
            c = r0;
            if (r0 >= j) {
                c = Math.max(0L, j - 1);
            }
        }
        long m12740k = m12740k(m12741j, c, false);
        long j2 = this.f27430o;
        C6837p5 c6837p52 = this.f27421f;
        this.f27430o = j2 + (c6837p52.f27871b - m12740k);
        this.f27421f = c6837p52.m12379a(m12740k);
    }

    /* renamed from: h */
    public final void m12743h(long j) {
        C7173y8.m8895d(m12730u());
        if (this.f27419d) {
            this.f27416a.mo8804b(j - this.f27430o);
        }
    }

    /* renamed from: i */
    public final void m12742i(long j) {
        C7173y8.m8895d(m12730u());
        this.f27416a.mo8802d(j - this.f27430o);
    }

    /* renamed from: j */
    public final hn3 m12741j(float f, AbstractC6839p7 abstractC6839p7) {
        mm3[] mm3VarArr;
        hn3 mo15135b = this.f27425j.mo15135b(this.f27424i, this.f27428m, this.f27421f.f27870a, abstractC6839p7);
        for (mm3 mm3Var : mo15135b.f23993d) {
        }
        return mo15135b;
    }

    /* renamed from: k */
    public final long m12740k(hn3 hn3Var, long j, boolean z) {
        return m12739l(hn3Var, j, false, new boolean[2]);
    }

    /* renamed from: l */
    public final long m12739l(hn3 hn3Var, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= hn3Var.f23990a) {
                break;
            }
            boolean[] zArr2 = this.f27423h;
            if (z || !hn3Var.m14583b(this.f27429n, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            AbstractC7023u6[] abstractC7023u6Arr = this.f27424i;
            if (i2 >= 2) {
                break;
            }
            abstractC7023u6Arr[i2].mo10121O();
            i2++;
        }
        m12731t();
        this.f27429n = hn3Var;
        m12732s();
        long mo8797i = this.f27416a.mo8797i(hn3Var.f23993d, this.f27423h, this.f27418c, zArr, j);
        int i3 = 0;
        while (true) {
            AbstractC7023u6[] abstractC7023u6Arr2 = this.f27424i;
            if (i3 >= 2) {
                break;
            }
            abstractC7023u6Arr2[i3].mo10121O();
            i3++;
        }
        this.f27420e = false;
        int i4 = 0;
        while (true) {
            bm3[] bm3VarArr = this.f27418c;
            if (i4 < 2) {
                if (bm3VarArr[i4] != null) {
                    C7173y8.m8895d(hn3Var.m14584a(i4));
                    this.f27424i[i4].mo10121O();
                    this.f27420e = true;
                } else {
                    C7173y8.m8895d(hn3Var.f23993d[i4] == null);
                }
                i4++;
            } else {
                return mo8797i;
            }
        }
    }

    /* renamed from: m */
    public final void m12738m() {
        m12731t();
        C7170y5 c7170y5 = this.f27426k;
        lk3 lk3Var = this.f27416a;
        try {
            if (lk3Var instanceof sj3) {
                c7170y5.m8946f(((sj3) lk3Var).f29547d);
            } else {
                c7170y5.m8946f(lk3Var);
            }
        } catch (RuntimeException e) {
            C6952s9.m11098b("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* renamed from: n */
    public final void m12737n(C6800o5 c6800o5) {
        if (c6800o5 == this.f27427l) {
            return;
        }
        m12731t();
        this.f27427l = c6800o5;
        m12732s();
    }

    /* renamed from: o */
    public final C6800o5 m12736o() {
        return this.f27427l;
    }

    /* renamed from: p */
    public final dv3 m12735p() {
        return this.f27428m;
    }

    /* renamed from: q */
    public final hn3 m12734q() {
        return this.f27429n;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: r */
    public final void m12733r() {
        lk3 lk3Var = this.f27416a;
        if (lk3Var instanceof sj3) {
            ?? r0 = this.f27421f.f27873d;
            char c = r0;
            if (r0 == -9223372036854775807L) {
                c = 0;
            }
            ((sj3) lk3Var).m11003a(0L, c);
        }
    }
}
