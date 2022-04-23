package p131c.p161d.p170b.p188c;

import android.util.Pair;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2735s;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f0.class */
public final class C2816f0 {

    /* renamed from: c */
    public long f10243c;

    /* renamed from: e */
    public int f10245e;

    /* renamed from: f */
    public boolean f10246f;

    /* renamed from: g */
    public C2767d0 f10247g;

    /* renamed from: h */
    public C2767d0 f10248h;

    /* renamed from: i */
    public C2767d0 f10249i;

    /* renamed from: j */
    public int f10250j;

    /* renamed from: k */
    public Object f10251k;

    /* renamed from: l */
    public long f10252l;

    /* renamed from: a */
    public final AbstractC2965r0.C2967b f10241a = new AbstractC2965r0.C2967b();

    /* renamed from: b */
    public final AbstractC2965r0.C2968c f10242b = new AbstractC2965r0.C2968c();

    /* renamed from: d */
    public AbstractC2965r0 f10244d = AbstractC2965r0.f10677a;

    /* renamed from: a */
    public final long m28958a(Object obj) {
        int a;
        int i = this.f10244d.m28349a(obj, this.f10241a).f10680c;
        Object obj2 = this.f10251k;
        if (!(obj2 == null || (a = this.f10244d.mo28339a(obj2)) == -1 || this.f10244d.m28354a(a, this.f10241a).f10680c != i)) {
            return this.f10252l;
        }
        for (C2767d0 d0Var = this.f10247g; d0Var != null; d0Var = d0Var.m29061d()) {
            if (d0Var.f10094b.equals(obj)) {
                return d0Var.f10098f.f10142a.f9932d;
            }
        }
        for (C2767d0 d0Var2 = this.f10247g; d0Var2 != null; d0Var2 = d0Var2.m29061d()) {
            int a2 = this.f10244d.mo28339a(d0Var2.f10094b);
            if (a2 != -1 && this.f10244d.m28354a(a2, this.f10241a).f10680c == i) {
                return d0Var2.f10098f.f10142a.f9932d;
            }
        }
        long j = this.f10243c;
        this.f10243c = 1 + j;
        if (this.f10247g == null) {
            this.f10251k = obj;
            this.f10252l = j;
        }
        return j;
    }

    /* renamed from: a */
    public AbstractC2737t.C2738a m28956a(Object obj, long j) {
        return m28950b(obj, j, m28958a(obj));
    }

    /* renamed from: a */
    public C2767d0 m28973a() {
        C2767d0 d0Var = this.f10247g;
        if (d0Var == null) {
            return null;
        }
        if (d0Var == this.f10248h) {
            this.f10248h = d0Var.m29061d();
        }
        this.f10247g.m29051l();
        int i = this.f10250j - 1;
        this.f10250j = i;
        if (i == 0) {
            this.f10249i = null;
            C2767d0 d0Var2 = this.f10247g;
            this.f10251k = d0Var2.f10094b;
            this.f10252l = d0Var2.f10098f.f10142a.f9932d;
        }
        C2767d0 d = this.f10247g.m29061d();
        this.f10247g = d;
        return d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r19 != (-9223372036854775807L)) goto L_0x0047;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p131c.p161d.p170b.p188c.C2767d0 m28953a(p131c.p161d.p170b.p188c.AbstractC2957o0[] r12, p131c.p161d.p170b.p188c.p198d1.AbstractC2784h r13, p131c.p161d.p170b.p188c.p201f1.AbstractC2821e r14, p131c.p161d.p170b.p188c.p190b1.AbstractC2737t r15, p131c.p161d.p170b.p188c.C2788e0 r16, p131c.p161d.p170b.p188c.p198d1.C2786i r17) {
        /*
            r11 = this;
            r0 = r11
            c.d.b.c.d0 r0 = r0.f10249i
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L_0x002f
            r0 = r16
            c.d.b.c.b1.t$a r0 = r0.f10142a
            boolean r0 = r0.m29245a()
            if (r0 == 0) goto L_0x0029
            r0 = r16
            long r0 = r0.f10144c
            r19 = r0
            r0 = r19
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0029
            goto L_0x0047
        L_0x0029:
            r0 = 0
            r19 = r0
            goto L_0x0047
        L_0x002f:
            r0 = r18
            long r0 = r0.m29057f()
            r1 = r11
            c.d.b.c.d0 r1 = r1.f10249i
            c.d.b.c.e0 r1 = r1.f10098f
            long r1 = r1.f10146e
            long r0 = r0 + r1
            r1 = r16
            long r1 = r1.f10143b
            long r0 = r0 - r1
            r19 = r0
        L_0x0047:
            c.d.b.c.d0 r0 = new c.d.b.c.d0
            r1 = r0
            r2 = r12
            r3 = r19
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r8 = r17
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r13 = r0
            r0 = r11
            c.d.b.c.d0 r0 = r0.f10249i
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x006b
            r0 = r12
            r1 = r13
            r0.m29071a(r1)
            goto L_0x0075
        L_0x006b:
            r0 = r11
            r1 = r13
            r0.f10247g = r1
            r0 = r11
            r1 = r13
            r0.f10248h = r1
        L_0x0075:
            r0 = r11
            r1 = 0
            r0.f10251k = r1
            r0 = r11
            r1 = r13
            r0.f10249i = r1
            r0 = r11
            r1 = r11
            int r1 = r1.f10250j
            r2 = 1
            int r1 = r1 + r2
            r0.f10250j = r1
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C2816f0.m28953a(c.d.b.c.o0[], c.d.b.c.d1.h, c.d.b.c.f1.e, c.d.b.c.b1.t, c.d.b.c.e0, c.d.b.c.d1.i):c.d.b.c.d0");
    }

    /* renamed from: a */
    public C2788e0 m28969a(long j, C2866g0 g0Var) {
        C2767d0 d0Var = this.f10249i;
        return d0Var == null ? m28960a(g0Var) : m28963a(d0Var, j);
    }

    /* renamed from: a */
    public final C2788e0 m28966a(AbstractC2737t.C2738a aVar, long j, long j2) {
        this.f10244d.m28349a(aVar.f9929a, this.f10241a);
        if (!aVar.m29245a()) {
            return m28955a(aVar.f9929a, j2, aVar.f9932d);
        }
        if (!this.f10241a.m28325c(aVar.f9930b, aVar.f9931c)) {
            return null;
        }
        return m28957a(aVar.f9929a, aVar.f9930b, aVar.f9931c, j, aVar.f9932d);
    }

    /* renamed from: a */
    public final C2788e0 m28963a(C2767d0 d0Var, long j) {
        long j2;
        C2788e0 e0Var = d0Var.f10098f;
        long f = (d0Var.m29057f() + e0Var.f10146e) - j;
        long j3 = 0;
        C2788e0 e0Var2 = null;
        C2788e0 e0Var3 = null;
        if (e0Var.f10147f) {
            int a = this.f10244d.m28353a(this.f10244d.mo28339a(e0Var.f10142a.f9929a), this.f10241a, this.f10242b, this.f10245e, this.f10246f);
            if (a == -1) {
                return null;
            }
            int i = this.f10244d.mo28341a(a, this.f10241a, true).f10680c;
            Object obj = this.f10241a.f10679b;
            long j4 = e0Var.f10142a.f9932d;
            if (this.f10244d.m28352a(i, this.f10242b).f10690f == a) {
                Pair<Object, Long> a2 = this.f10244d.m28350a(this.f10242b, this.f10241a, i, -9223372036854775807L, Math.max(0L, f));
                if (a2 == null) {
                    return null;
                }
                Object obj2 = a2.first;
                j2 = ((Long) a2.second).longValue();
                C2767d0 d = d0Var.m29061d();
                if (d == null || !d.f10094b.equals(obj2)) {
                    j4 = this.f10243c;
                    this.f10243c = 1 + j4;
                } else {
                    j4 = d.f10098f.f10142a.f9932d;
                }
                j3 = -9223372036854775807L;
                obj = obj2;
            } else {
                j2 = 0;
            }
            return m28966a(m28950b(obj, j2, j4), j3, j2);
        }
        AbstractC2737t.C2738a aVar = e0Var.f10142a;
        this.f10244d.m28349a(aVar.f9929a, this.f10241a);
        if (aVar.m29245a()) {
            int i2 = aVar.f9930b;
            int a3 = this.f10241a.m28336a(i2);
            if (a3 == -1) {
                return null;
            }
            int b = this.f10241a.m28329b(i2, aVar.f9931c);
            if (b < a3) {
                if (this.f10241a.m28325c(i2, b)) {
                    e0Var3 = m28957a(aVar.f9929a, i2, b, e0Var.f10144c, aVar.f9932d);
                }
                return e0Var3;
            }
            long j5 = e0Var.f10144c;
            if (j5 == -9223372036854775807L) {
                AbstractC2965r0 r0Var = this.f10244d;
                AbstractC2965r0.C2968c cVar = this.f10242b;
                AbstractC2965r0.C2967b bVar = this.f10241a;
                Pair<Object, Long> a4 = r0Var.m28350a(cVar, bVar, bVar.f10680c, -9223372036854775807L, Math.max(0L, f));
                if (a4 == null) {
                    return null;
                }
                j5 = ((Long) a4.second).longValue();
            }
            return m28955a(aVar.f9929a, j5, aVar.f9932d);
        }
        int b2 = this.f10241a.m28328b(e0Var.f10145d);
        if (b2 == -1) {
            return m28955a(aVar.f9929a, e0Var.f10146e, aVar.f9932d);
        }
        int c = this.f10241a.m28326c(b2);
        if (this.f10241a.m28325c(b2, c)) {
            e0Var2 = m28957a(aVar.f9929a, b2, c, e0Var.f10146e, aVar.f9932d);
        }
        return e0Var2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x005a, code lost:
        if (r0 == Long.MIN_VALUE) goto L_0x005d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p131c.p161d.p170b.p188c.C2788e0 m28962a(p131c.p161d.p170b.p188c.C2788e0 r15) {
        /*
            r14 = this;
            r0 = r15
            c.d.b.c.b1.t$a r0 = r0.f10142a
            r16 = r0
            r0 = r14
            r1 = r16
            boolean r0 = r0.m28967a(r1)
            r17 = r0
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.m28965a(r1, r2)
            r18 = r0
            r0 = r14
            c.d.b.c.r0 r0 = r0.f10244d
            r1 = r15
            c.d.b.c.b1.t$a r1 = r1.f10142a
            java.lang.Object r1 = r1.f9929a
            r2 = r14
            c.d.b.c.r0$b r2 = r2.f10241a
            c.d.b.c.r0$b r0 = r0.m28349a(r1, r2)
            r0 = r16
            boolean r0 = r0.m29245a()
            if (r0 == 0) goto L_0x0041
            r0 = r14
            c.d.b.c.r0$b r0 = r0.f10241a
            r1 = r16
            int r1 = r1.f9930b
            r2 = r16
            int r2 = r2.f9931c
            long r0 = r0.m28335a(r1, r2)
            r19 = r0
        L_0x003e:
            goto L_0x0069
        L_0x0041:
            r0 = r15
            long r0 = r0.f10145d
            r21 = r0
            r0 = r21
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005d
            r0 = r21
            r19 = r0
            r0 = r21
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003e
        L_0x005d:
            r0 = r14
            c.d.b.c.r0$b r0 = r0.f10241a
            long r0 = r0.m28327c()
            r19 = r0
            goto L_0x003e
        L_0x0069:
            c.d.b.c.e0 r0 = new c.d.b.c.e0
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.f10143b
            r4 = r15
            long r4 = r4.f10144c
            r5 = r15
            long r5 = r5.f10145d
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C2816f0.m28962a(c.d.b.c.e0):c.d.b.c.e0");
    }

    /* renamed from: a */
    public final C2788e0 m28960a(C2866g0 g0Var) {
        return m28966a(g0Var.f10427b, g0Var.f10429d, g0Var.f10428c);
    }

    /* renamed from: a */
    public final C2788e0 m28957a(Object obj, int i, int i2, long j, long j2) {
        AbstractC2737t.C2738a aVar = new AbstractC2737t.C2738a(obj, i, i2, j2);
        return new C2788e0(aVar, i2 == this.f10241a.m28326c(i) ? this.f10241a.m28331b() : 0L, j, -9223372036854775807L, this.f10244d.m28349a(aVar.f9929a, this.f10241a).m28335a(aVar.f9930b, aVar.f9931c), false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r23v0, types: [long] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p131c.p161d.p170b.p188c.C2788e0 m28955a(java.lang.Object r15, long r16, long r18) {
        /*
            r14 = this;
            r0 = r14
            c.d.b.c.r0$b r0 = r0.f10241a
            r1 = r16
            int r0 = r0.m28334a(r1)
            r20 = r0
            c.d.b.c.b1.t$a r0 = new c.d.b.c.b1.t$a
            r1 = r0
            r2 = r15
            r3 = r18
            r4 = r20
            r1.<init>(r2, r3, r4)
            r15 = r0
            r0 = r14
            r1 = r15
            boolean r0 = r0.m28967a(r1)
            r21 = r0
            r0 = r14
            r1 = r15
            r2 = r21
            boolean r0 = r0.m28965a(r1, r2)
            r22 = r0
            r0 = r20
            r1 = -1
            if (r0 == r1) goto L_0x003b
            r0 = r14
            c.d.b.c.r0$b r0 = r0.f10241a
            r1 = r20
            long r0 = r0.m28330b(r1)
            r18 = r0
            goto L_0x0040
        L_0x003b:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r18 = r0
        L_0x0040:
            r0 = r18
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005c
            r0 = r18
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0055
            goto L_0x005c
        L_0x0055:
            r0 = r18
            r23 = r0
            goto L_0x0065
        L_0x005c:
            r0 = r14
            c.d.b.c.r0$b r0 = r0.f10241a
            long r0 = r0.f10681d
            r23 = r0
        L_0x0065:
            c.d.b.c.e0 r0 = new c.d.b.c.e0
            r1 = r0
            r2 = r15
            r3 = r16
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r18
            r6 = r23
            r7 = r21
            r8 = r22
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C2816f0.m28955a(java.lang.Object, long, long):c.d.b.c.e0");
    }

    /* renamed from: a */
    public void m28971a(long j) {
        C2767d0 d0Var = this.f10249i;
        if (d0Var != null) {
            d0Var.m29065b(j);
        }
    }

    /* renamed from: a */
    public void m28959a(AbstractC2965r0 r0Var) {
        this.f10244d = r0Var;
    }

    /* renamed from: a */
    public void m28954a(boolean z) {
        C2767d0 d0Var = this.f10247g;
        if (d0Var != null) {
            this.f10251k = z ? d0Var.f10094b : null;
            this.f10252l = d0Var.f10098f.f10142a.f9932d;
            m28964a(d0Var);
            d0Var.m29051l();
        } else if (!z) {
            this.f10251k = null;
        }
        this.f10247g = null;
        this.f10249i = null;
        this.f10248h = null;
        this.f10250j = 0;
    }

    /* renamed from: a */
    public boolean m28972a(int i) {
        this.f10245e = i;
        return m28944g();
    }

    /* renamed from: a */
    public final boolean m28970a(long j, long j2) {
        return j == -9223372036854775807L || j == j2;
    }

    /* renamed from: a */
    public boolean m28968a(AbstractC2735s sVar) {
        C2767d0 d0Var = this.f10249i;
        return d0Var != null && d0Var.f10093a == sVar;
    }

    /* renamed from: a */
    public final boolean m28967a(AbstractC2737t.C2738a aVar) {
        return !aVar.m29245a() && aVar.f9933e == -1;
    }

    /* renamed from: a */
    public final boolean m28965a(AbstractC2737t.C2738a aVar, boolean z) {
        int a = this.f10244d.mo28339a(aVar.f9929a);
        return !this.f10244d.m28352a(this.f10244d.m28354a(a, this.f10241a).f10680c, this.f10242b).f10689e && this.f10244d.m28346b(a, this.f10241a, this.f10242b, this.f10245e, this.f10246f) && z;
    }

    /* renamed from: a */
    public boolean m28964a(C2767d0 d0Var) {
        boolean z = false;
        C2877e.m28731b(d0Var != null);
        this.f10249i = d0Var;
        while (d0Var.m29061d() != null) {
            d0Var = d0Var.m29061d();
            if (d0Var == this.f10248h) {
                this.f10248h = this.f10247g;
                z = true;
            }
            d0Var.m29051l();
            this.f10250j--;
        }
        this.f10249i.m29071a((C2767d0) null);
        return z;
    }

    /* renamed from: a */
    public final boolean m28961a(C2788e0 e0Var, C2788e0 e0Var2) {
        return e0Var.f10143b == e0Var2.f10143b && e0Var.f10142a.equals(e0Var2.f10142a);
    }

    /* renamed from: b */
    public final AbstractC2737t.C2738a m28950b(Object obj, long j, long j2) {
        this.f10244d.m28349a(obj, this.f10241a);
        int b = this.f10241a.m28328b(j);
        return b == -1 ? new AbstractC2737t.C2738a(obj, j2, this.f10241a.m28334a(j)) : new AbstractC2737t.C2738a(obj, b, this.f10241a.m28326c(b), j2);
    }

    /* renamed from: b */
    public C2767d0 m28952b() {
        C2767d0 d0Var = this.f10248h;
        C2877e.m28731b((d0Var == null || d0Var.m29061d() == null) ? false : true);
        C2767d0 d = this.f10248h.m29061d();
        this.f10248h = d;
        return d;
    }

    /* renamed from: b */
    public boolean m28951b(long j, long j2) {
        C2788e0 e0Var;
        C2767d0 d0Var = this.f10247g;
        C2767d0 d0Var2 = null;
        while (true) {
            boolean z = true;
            if (d0Var == null) {
                return true;
            }
            C2788e0 e0Var2 = d0Var.f10098f;
            if (d0Var2 == null) {
                e0Var = m28962a(e0Var2);
            } else {
                C2788e0 a = m28963a(d0Var2, j);
                if (a != null && m28961a(e0Var2, a)) {
                    e0Var = a;
                }
                return !m28964a(d0Var2);
            }
            d0Var.f10098f = e0Var.m29011a(e0Var2.f10144c);
            if (!m28970a(e0Var2.f10146e, e0Var.f10146e)) {
                long j3 = e0Var.f10146e;
                boolean z2 = d0Var == this.f10248h && (j2 == Long.MIN_VALUE || j2 >= ((j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : d0Var.m29058e(j3)));
                if (m28964a(d0Var) || z2) {
                    z = false;
                }
                return z;
            }
            d0Var = d0Var.m29061d();
            d0Var2 = d0Var;
        }
    }

    /* renamed from: b */
    public boolean m28949b(boolean z) {
        this.f10246f = z;
        return m28944g();
    }

    /* renamed from: c */
    public C2767d0 m28948c() {
        return this.f10249i;
    }

    /* renamed from: d */
    public C2767d0 m28947d() {
        return this.f10247g;
    }

    /* renamed from: e */
    public C2767d0 m28946e() {
        return this.f10248h;
    }

    /* renamed from: f */
    public boolean m28945f() {
        C2767d0 d0Var = this.f10249i;
        return d0Var == null || (!d0Var.f10098f.f10148g && d0Var.m29053j() && this.f10249i.f10098f.f10146e != -9223372036854775807L && this.f10250j < 100);
    }

    /* renamed from: g */
    public final boolean m28944g() {
        C2767d0 d0Var = this.f10247g;
        if (d0Var == null) {
            return true;
        }
        int a = this.f10244d.mo28339a(d0Var.f10094b);
        while (true) {
            a = this.f10244d.m28353a(a, this.f10241a, this.f10242b, this.f10245e, this.f10246f);
            while (d0Var.m29061d() != null && !d0Var.f10098f.f10147f) {
                d0Var = d0Var.m29061d();
            }
            C2767d0 d = d0Var.m29061d();
            if (a == -1 || d == null || this.f10244d.mo28339a(d.f10094b) != a) {
                break;
            }
            d0Var = d;
        }
        boolean a2 = m28964a(d0Var);
        d0Var.f10098f = m28962a(d0Var.f10098f);
        return !a2;
    }
}
