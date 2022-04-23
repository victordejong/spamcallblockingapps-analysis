package p012b.p076s.p078b.p079a;

import android.util.Pair;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1673l;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
/* renamed from: b.s.b.a.a0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a0.class */
public final class C1159a0 {

    /* renamed from: c */
    public long f4672c;

    /* renamed from: e */
    public int f4674e;

    /* renamed from: f */
    public boolean f4675f;

    /* renamed from: g */
    public C1652y f4676g;

    /* renamed from: h */
    public C1652y f4677h;

    /* renamed from: i */
    public C1652y f4678i;

    /* renamed from: j */
    public int f4679j;

    /* renamed from: k */
    public Object f4680k;

    /* renamed from: l */
    public long f4681l;

    /* renamed from: a */
    public final AbstractC1252n0.C1254b f4670a = new AbstractC1252n0.C1254b();

    /* renamed from: b */
    public final AbstractC1252n0.C1255c f4671b = new AbstractC1252n0.C1255c();

    /* renamed from: d */
    public AbstractC1252n0 f4673d = AbstractC1252n0.f5012a;

    /* renamed from: a */
    public final long m34540a(Object obj) {
        int a;
        int i = this.f4673d.mo32960a(obj, this.f4670a).f5015c;
        Object obj2 = this.f4680k;
        if (!(obj2 == null || (a = this.f4673d.mo32715a(obj2)) == -1 || this.f4673d.m34047a(a, this.f4670a).f5015c != i)) {
            return this.f4681l;
        }
        for (C1652y c = m34530c(); c != null; c = c.m32467d()) {
            if (c.f6793b.equals(obj)) {
                return c.f6797f.f6860a.f6758d;
            }
        }
        for (C1652y c2 = m34530c(); c2 != null; c2 = c2.m32467d()) {
            int a2 = this.f4673d.mo32715a(c2.f6793b);
            if (a2 != -1 && this.f4673d.m34047a(a2, this.f4670a).f5015c == i) {
                return c2.f6797f.f6860a.f6758d;
            }
        }
        long j = this.f4672c;
        this.f4672c = 1 + j;
        return j;
    }

    /* renamed from: a */
    public AbstractC1631p m34535a(AbstractC1238i0[] i0VarArr, AbstractC1673l lVar, AbstractC1678b bVar, AbstractC1634r rVar, C1676z zVar) {
        C1652y yVar = this.f4678i;
        C1652y yVar2 = new C1652y(i0VarArr, yVar == null ? zVar.f6861b : yVar.m32464f() + this.f4678i.f6797f.f6864e, lVar, bVar, rVar, zVar);
        if (this.f4678i != null) {
            C1160a.m34518b(m34526g());
            this.f4678i.m32475a(yVar2);
        }
        this.f4680k = null;
        this.f4678i = yVar2;
        this.f4679j++;
        return yVar2.f6792a;
    }

    /* renamed from: a */
    public AbstractC1634r.C1635a m34538a(Object obj, long j) {
        return m34532b(obj, j, m34540a(obj));
    }

    /* renamed from: a */
    public C1652y m34555a() {
        C1652y yVar = this.f4676g;
        if (yVar != null) {
            if (yVar == this.f4677h) {
                this.f4677h = yVar.m32467d();
            }
            this.f4676g.m32458l();
            int i = this.f4679j - 1;
            this.f4679j = i;
            if (i == 0) {
                this.f4678i = null;
                C1652y yVar2 = this.f4676g;
                this.f4680k = yVar2.f6793b;
                this.f4681l = yVar2.f6797f.f6860a.f6758d;
            }
            this.f4676g = this.f4676g.m32467d();
        } else {
            C1652y yVar3 = this.f4678i;
            this.f4676g = yVar3;
            this.f4677h = yVar3;
        }
        return this.f4676g;
    }

    /* renamed from: a */
    public C1676z m34551a(long j, C1198b0 b0Var) {
        C1652y yVar = this.f4678i;
        return yVar == null ? m34550a(b0Var) : m34543a(yVar, j);
    }

    /* renamed from: a */
    public final C1676z m34550a(C1198b0 b0Var) {
        return m34546a(b0Var.f4784c, b0Var.f4786e, b0Var.f4785d);
    }

    /* renamed from: a */
    public final C1676z m34546a(AbstractC1634r.C1635a aVar, long j, long j2) {
        this.f4673d.mo32960a(aVar.f6755a, this.f4670a);
        if (!aVar.m32501a()) {
            return m34537a(aVar.f6755a, j2, aVar.f6758d);
        }
        if (!this.f4670a.m34027c(aVar.f6756b, aVar.f6757c)) {
            return null;
        }
        return m34539a(aVar.f6755a, aVar.f6756b, aVar.f6757c, j, aVar.f6758d);
    }

    /* renamed from: a */
    public final C1676z m34543a(C1652y yVar, long j) {
        C1676z zVar = yVar.f6797f;
        long f = (yVar.m32464f() + zVar.f6864e) - j;
        long j2 = 0;
        C1676z zVar2 = null;
        C1676z zVar3 = null;
        if (zVar.f6865f) {
            int a = this.f4673d.m34046a(this.f4673d.mo32715a(zVar.f6860a.f6755a), this.f4670a, this.f4671b, this.f4674e, this.f4675f);
            if (a == -1) {
                return null;
            }
            int i = this.f4673d.mo32738a(a, this.f4670a, true).f5015c;
            Object obj = this.f4670a.f5014b;
            long j3 = zVar.f6860a.f6758d;
            if (this.f4673d.m34045a(i, this.f4671b).f5024f == a) {
                Pair<Object, Long> a2 = this.f4673d.m34042a(this.f4671b, this.f4670a, i, -9223372036854775807L, Math.max(0L, f));
                if (a2 == null) {
                    return null;
                }
                Object obj2 = a2.first;
                j2 = ((Long) a2.second).longValue();
                C1652y d = yVar.m32467d();
                if (d == null || !d.f6793b.equals(obj2)) {
                    j3 = this.f4672c;
                    this.f4672c = 1 + j3;
                } else {
                    j3 = d.f6797f.f6860a.f6758d;
                }
                obj = obj2;
            }
            return m34546a(m34532b(obj, j2, j3), j2, j2);
        }
        AbstractC1634r.C1635a aVar = zVar.f6860a;
        this.f4673d.mo32960a(aVar.f6755a, this.f4670a);
        if (aVar.m32501a()) {
            int i2 = aVar.f6756b;
            int a3 = this.f4670a.m34038a(i2);
            if (a3 == -1) {
                return null;
            }
            int b = this.f4670a.m34031b(i2, aVar.f6757c);
            if (b < a3) {
                if (this.f4670a.m34027c(i2, b)) {
                    zVar3 = m34539a(aVar.f6755a, i2, b, zVar.f6862c, aVar.f6758d);
                }
                return zVar3;
            }
            long j4 = zVar.f6862c;
            if (this.f4670a.m34039a() == 1 && this.f4670a.m34032b(0) == 0) {
                AbstractC1252n0 n0Var = this.f4673d;
                AbstractC1252n0.C1255c cVar = this.f4671b;
                AbstractC1252n0.C1254b bVar = this.f4670a;
                Pair<Object, Long> a4 = n0Var.m34042a(cVar, bVar, bVar.f5015c, -9223372036854775807L, Math.max(0L, f));
                if (a4 == null) {
                    return null;
                }
                j4 = ((Long) a4.second).longValue();
            }
            return m34537a(aVar.f6755a, j4, aVar.f6758d);
        }
        int b2 = this.f4670a.m34030b(zVar.f6863d);
        if (b2 == -1) {
            return m34537a(aVar.f6755a, zVar.f6864e, aVar.f6758d);
        }
        int c = this.f4670a.m34028c(b2);
        if (this.f4670a.m34027c(b2, c)) {
            zVar2 = m34539a(aVar.f6755a, b2, c, zVar.f6864e, aVar.f6758d);
        }
        return zVar2;
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
    public p012b.p076s.p078b.p079a.C1676z m34542a(p012b.p076s.p078b.p079a.C1676z r15) {
        /*
            r14 = this;
            r0 = r15
            b.s.b.a.w0.r$a r0 = r0.f6860a
            r16 = r0
            r0 = r14
            r1 = r16
            boolean r0 = r0.m34547a(r1)
            r17 = r0
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.m34545a(r1, r2)
            r18 = r0
            r0 = r14
            b.s.b.a.n0 r0 = r0.f4673d
            r1 = r15
            b.s.b.a.w0.r$a r1 = r1.f6860a
            java.lang.Object r1 = r1.f6755a
            r2 = r14
            b.s.b.a.n0$b r2 = r2.f4670a
            b.s.b.a.n0$b r0 = r0.mo32960a(r1, r2)
            r0 = r16
            boolean r0 = r0.m32501a()
            if (r0 == 0) goto L_0x0041
            r0 = r14
            b.s.b.a.n0$b r0 = r0.f4670a
            r1 = r16
            int r1 = r1.f6756b
            r2 = r16
            int r2 = r2.f6757c
            long r0 = r0.m34037a(r1, r2)
            r19 = r0
        L_0x003e:
            goto L_0x0069
        L_0x0041:
            r0 = r15
            long r0 = r0.f6863d
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
            b.s.b.a.n0$b r0 = r0.f4670a
            long r0 = r0.m34029c()
            r19 = r0
            goto L_0x003e
        L_0x0069:
            b.s.b.a.z r0 = new b.s.b.a.z
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.f6861b
            r4 = r15
            long r4 = r4.f6862c
            r5 = r15
            long r5 = r5.f6863d
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1159a0.m34542a(b.s.b.a.z):b.s.b.a.z");
    }

    /* renamed from: a */
    public final C1676z m34539a(Object obj, int i, int i2, long j, long j2) {
        AbstractC1634r.C1635a aVar = new AbstractC1634r.C1635a(obj, i, i2, j2);
        return new C1676z(aVar, i2 == this.f4670a.m34028c(i) ? this.f4670a.m34033b() : 0L, j, -9223372036854775807L, this.f4673d.mo32960a(aVar.f6755a, this.f4670a).m34037a(aVar.f6756b, aVar.f6757c), false, false);
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
    public final p012b.p076s.p078b.p079a.C1676z m34537a(java.lang.Object r15, long r16, long r18) {
        /*
            r14 = this;
            r0 = r14
            b.s.b.a.n0$b r0 = r0.f4670a
            r1 = r16
            int r0 = r0.m34036a(r1)
            r20 = r0
            b.s.b.a.w0.r$a r0 = new b.s.b.a.w0.r$a
            r1 = r0
            r2 = r15
            r3 = r18
            r4 = r20
            r1.<init>(r2, r3, r4)
            r15 = r0
            r0 = r14
            r1 = r15
            boolean r0 = r0.m34547a(r1)
            r21 = r0
            r0 = r14
            r1 = r15
            r2 = r21
            boolean r0 = r0.m34545a(r1, r2)
            r22 = r0
            r0 = r20
            r1 = -1
            if (r0 == r1) goto L_0x003b
            r0 = r14
            b.s.b.a.n0$b r0 = r0.f4670a
            r1 = r20
            long r0 = r0.m34032b(r1)
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
            b.s.b.a.n0$b r0 = r0.f4670a
            long r0 = r0.f5016d
            r23 = r0
        L_0x0065:
            b.s.b.a.z r0 = new b.s.b.a.z
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
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1159a0.m34537a(java.lang.Object, long, long):b.s.b.a.z");
    }

    /* renamed from: a */
    public void m34553a(long j) {
        C1652y yVar = this.f4678i;
        if (yVar != null) {
            yVar.m32471b(j);
        }
    }

    /* renamed from: a */
    public void m34549a(AbstractC1252n0 n0Var) {
        this.f4673d = n0Var;
    }

    /* renamed from: a */
    public void m34536a(boolean z) {
        C1652y c = m34530c();
        if (c != null) {
            this.f4680k = z ? c.f6793b : null;
            this.f4681l = c.f6797f.f6860a.f6758d;
            c.m32458l();
            m34544a(c);
        } else if (!z) {
            this.f4680k = null;
        }
        this.f4676g = null;
        this.f4678i = null;
        this.f4677h = null;
        this.f4679j = 0;
    }

    /* renamed from: a */
    public boolean m34554a(int i) {
        this.f4674e = i;
        return m34524i();
    }

    /* renamed from: a */
    public final boolean m34552a(long j, long j2) {
        return j == -9223372036854775807L || j == j2;
    }

    /* renamed from: a */
    public boolean m34548a(AbstractC1631p pVar) {
        C1652y yVar = this.f4678i;
        return yVar != null && yVar.f6792a == pVar;
    }

    /* renamed from: a */
    public final boolean m34547a(AbstractC1634r.C1635a aVar) {
        return !aVar.m32501a() && aVar.f6759e == -1;
    }

    /* renamed from: a */
    public final boolean m34545a(AbstractC1634r.C1635a aVar, boolean z) {
        int a = this.f4673d.mo32715a(aVar.f6755a);
        return !this.f4673d.m34045a(this.f4673d.m34047a(a, this.f4670a).f5015c, this.f4671b).f5023e && this.f4673d.m34041b(a, this.f4670a, this.f4671b, this.f4674e, this.f4675f) && z;
    }

    /* renamed from: a */
    public boolean m34544a(C1652y yVar) {
        boolean z = false;
        C1160a.m34518b(yVar != null);
        this.f4678i = yVar;
        while (yVar.m32467d() != null) {
            yVar = yVar.m32467d();
            if (yVar == this.f4677h) {
                this.f4677h = this.f4676g;
                z = true;
            }
            yVar.m32458l();
            this.f4679j--;
        }
        this.f4678i.m32475a((C1652y) null);
        return z;
    }

    /* renamed from: a */
    public final boolean m34541a(C1676z zVar, C1676z zVar2) {
        return zVar.f6861b == zVar2.f6861b && zVar.f6860a.equals(zVar2.f6860a);
    }

    /* renamed from: b */
    public final AbstractC1634r.C1635a m34532b(Object obj, long j, long j2) {
        this.f4673d.mo32960a(obj, this.f4670a);
        int b = this.f4670a.m34030b(j);
        return b == -1 ? new AbstractC1634r.C1635a(obj, j2, this.f4670a.m34036a(j)) : new AbstractC1634r.C1635a(obj, b, this.f4670a.m34028c(b), j2);
    }

    /* renamed from: b */
    public C1652y m34534b() {
        C1652y yVar = this.f4677h;
        C1160a.m34518b((yVar == null || yVar.m32467d() == null) ? false : true);
        C1652y d = this.f4677h.m32467d();
        this.f4677h = d;
        return d;
    }

    /* renamed from: b */
    public boolean m34533b(long j, long j2) {
        C1676z zVar;
        C1652y c = m34530c();
        C1652y yVar = null;
        while (true) {
            boolean z = true;
            if (c == null) {
                return true;
            }
            C1676z zVar2 = c.f6797f;
            if (yVar == null) {
                zVar = m34542a(zVar2);
            } else {
                C1676z a = m34543a(yVar, j);
                if (a != null && m34541a(zVar2, a)) {
                    zVar = a;
                }
                return !m34544a(yVar);
            }
            c.f6797f = zVar.m32396a(zVar2.f6862c);
            if (!m34552a(zVar2.f6864e, zVar.f6864e)) {
                long j3 = zVar.f6864e;
                boolean z2 = c == this.f4677h && (j2 == Long.MIN_VALUE || j2 >= ((j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : c.m32466d(j3)));
                if (m34544a(c) || z2) {
                    z = false;
                }
                return z;
            }
            c = c.m32467d();
            yVar = c;
        }
    }

    /* renamed from: b */
    public boolean m34531b(boolean z) {
        this.f4675f = z;
        return m34524i();
    }

    /* renamed from: c */
    public C1652y m34530c() {
        return m34526g() ? this.f4676g : this.f4678i;
    }

    /* renamed from: d */
    public C1652y m34529d() {
        return this.f4678i;
    }

    /* renamed from: e */
    public C1652y m34528e() {
        return this.f4676g;
    }

    /* renamed from: f */
    public C1652y m34527f() {
        return this.f4677h;
    }

    /* renamed from: g */
    public boolean m34526g() {
        return this.f4676g != null;
    }

    /* renamed from: h */
    public boolean m34525h() {
        C1652y yVar = this.f4678i;
        return yVar == null || (!yVar.f6797f.f6866g && yVar.m32460j() && this.f4678i.f6797f.f6864e != -9223372036854775807L && this.f4679j < 100);
    }

    /* renamed from: i */
    public final boolean m34524i() {
        C1652y c = m34530c();
        if (c == null) {
            return true;
        }
        int a = this.f4673d.mo32715a(c.f6793b);
        while (true) {
            a = this.f4673d.m34046a(a, this.f4670a, this.f4671b, this.f4674e, this.f4675f);
            while (c.m32467d() != null && !c.f6797f.f6865f) {
                c = c.m32467d();
            }
            C1652y d = c.m32467d();
            if (a == -1 || d == null || this.f4673d.mo32715a(d.f6793b) != a) {
                break;
            }
            c = d;
        }
        boolean a2 = m34544a(c);
        c.f6797f = m34542a(c.f6797f);
        boolean z = true;
        if (a2) {
            z = !m34526g();
        }
        return z;
    }
}
