package p000;

import android.util.Pair;
import com.google.android.exoplayer2.C0515C;
import hp;
import ph;
/* renamed from: bh */
/* loaded from: classes-dex2jar.jar:bh.class */
public final class C0246bh {

    /* renamed from: c */
    public long f1935c;

    /* renamed from: e */
    public int f1937e;

    /* renamed from: f */
    public boolean f1938f;

    /* renamed from: g */
    public zg f1939g;

    /* renamed from: h */
    public zg f1940h;

    /* renamed from: i */
    public zg f1941i;

    /* renamed from: j */
    public int f1942j;

    /* renamed from: k */
    public Object f1943k;

    /* renamed from: l */
    public long f1944l;

    /* renamed from: a */
    public final ph.b f1933a = new ph.b();

    /* renamed from: b */
    public final ph.c f1934b = new ph.c();

    /* renamed from: d */
    public ph f1936d = ph.a;

    /* renamed from: A */
    public void m5666A(ph phVar) {
        this.f1936d = phVar;
    }

    /* renamed from: B */
    public boolean m5665B() {
        zg zgVar = this.f1941i;
        return zgVar == null || (!zgVar.f.f298g && zgVar.q() && this.f1941i.f.f296e != C0515C.TIME_UNSET && this.f1942j < 100);
    }

    /* renamed from: C */
    public final boolean m5664C() {
        zg m5652i = m5652i();
        if (m5652i == null) {
            return true;
        }
        int b = this.f1936d.b(m5652i.b);
        while (true) {
            b = this.f1936d.d(b, this.f1933a, this.f1934b, this.f1937e, this.f1938f);
            while (m5652i.j() != null && !m5652i.f.f297f) {
                m5652i = m5652i.j();
            }
            zg j = m5652i.j();
            if (b == -1 || j == null || this.f1936d.b(j.b) != b) {
                break;
            }
            m5652i = j;
        }
        boolean m5638w = m5638w(m5652i);
        m5652i.f = m5644q(m5652i.f);
        boolean z = true;
        if (m5638w) {
            z = !m5643r();
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: D */
    public boolean m5663D(long j, long j2) {
        C0036ah c0036ah;
        zg m5652i = m5652i();
        zg zgVar = null;
        while (true) {
            boolean z = true;
            if (m5652i != null) {
                C0036ah c0036ah2 = m5652i.f;
                if (zgVar != null) {
                    C0036ah m5653h = m5653h(zgVar, j);
                    if (m5653h != null && m5657d(c0036ah2, m5653h)) {
                        c0036ah = m5653h;
                    }
                    return !m5638w(zgVar);
                }
                c0036ah = m5644q(c0036ah2);
                m5652i.f = c0036ah.m7213a(c0036ah2.f294c);
                if (!m5658c(c0036ah2.f296e, c0036ah.f296e)) {
                    long j3 = c0036ah.f296e;
                    boolean z2 = m5652i == this.f1940h && (j2 == Long.MIN_VALUE || j2 >= ((j3 > C0515C.TIME_UNSET ? 1 : (j3 == C0515C.TIME_UNSET ? 0 : -1)) == 0 ? (char) 65535 : m5652i.y(j3)));
                    if (m5638w(m5652i) || z2) {
                        z = false;
                    }
                    return z;
                }
                zgVar = m5652i;
                m5652i = m5652i.j();
            } else {
                return true;
            }
        }
    }

    /* renamed from: E */
    public boolean m5662E(int i) {
        this.f1937e = i;
        return m5664C();
    }

    /* renamed from: F */
    public boolean m5661F(boolean z) {
        this.f1938f = z;
        return m5664C();
    }

    /* renamed from: a */
    public zg m5660a() {
        zg zgVar = this.f1939g;
        if (zgVar != null) {
            if (zgVar == this.f1940h) {
                this.f1940h = zgVar.j();
            }
            this.f1939g.t();
            int i = this.f1942j - 1;
            this.f1942j = i;
            if (i == 0) {
                this.f1941i = null;
                zg zgVar2 = this.f1939g;
                this.f1943k = zgVar2.b;
                this.f1944l = zgVar2.f.f292a.d;
            }
            this.f1939g = this.f1939g.j();
        } else {
            zg zgVar3 = this.f1941i;
            this.f1939g = zgVar3;
            this.f1940h = zgVar3;
        }
        return this.f1939g;
    }

    /* renamed from: b */
    public zg m5659b() {
        zg zgVar = this.f1940h;
        it.f((zgVar == null || zgVar.j() == null) ? false : true);
        zg j = this.f1940h.j();
        this.f1940h = j;
        return j;
    }

    /* renamed from: c */
    public final boolean m5658c(long j, long j2) {
        return j == C0515C.TIME_UNSET || j == j2;
    }

    /* renamed from: d */
    public final boolean m5657d(C0036ah c0036ah, C0036ah c0036ah2) {
        return c0036ah.f293b == c0036ah2.f293b && c0036ah.f292a.equals(c0036ah2.f292a);
    }

    /* renamed from: e */
    public void m5656e(boolean z) {
        zg m5652i = m5652i();
        if (m5652i != null) {
            this.f1943k = z ? m5652i.b : null;
            this.f1944l = m5652i.f.f292a.d;
            m5652i.t();
            m5638w(m5652i);
        } else if (!z) {
            this.f1943k = null;
        }
        this.f1939g = null;
        this.f1941i = null;
        this.f1940h = null;
        this.f1942j = 0;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: f */
    public fp m5655f(kh[] khVarArr, AbstractC0256bs abstractC0256bs, AbstractC1377es abstractC1377es, hp hpVar, C0036ah c0036ah) {
        zg zgVar = this.f1941i;
        zg zgVar2 = new zg(khVarArr, zgVar == null ? c0036ah.f293b : zgVar.l() + this.f1941i.f.f296e, abstractC0256bs, abstractC1377es, hpVar, c0036ah);
        if (this.f1941i != null) {
            it.f(m5643r());
            this.f1941i.w(zgVar2);
        }
        this.f1943k = null;
        this.f1941i = zgVar2;
        this.f1942j++;
        return zgVar2.a;
    }

    /* renamed from: g */
    public final C0036ah m5654g(C1292dh c1292dh) {
        return m5650k(c1292dh.f5870c, c1292dh.f5872e, c1292dh.f5871d);
    }

    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* renamed from: h */
    public final C0036ah m5653h(zg zgVar, long j) {
        Object obj;
        C0036ah c0036ah = zgVar.f;
        long l = (zgVar.l() + c0036ah.f296e) - j;
        char c = 0;
        if (c0036ah.f297f) {
            int d = this.f1936d.d(this.f1936d.b(c0036ah.f292a.a), this.f1933a, this.f1934b, this.f1937e, this.f1938f);
            if (d == -1) {
                return null;
            }
            int i = this.f1936d.g(d, this.f1933a, true).c;
            Object obj2 = this.f1933a.b;
            char c2 = c0036ah.f292a.d;
            if (this.f1936d.m(i, this.f1934b).f == d) {
                Pair k = this.f1936d.k(this.f1934b, this.f1933a, i, (long) C0515C.TIME_UNSET, Math.max(0L, l));
                if (k == null) {
                    return null;
                }
                Object obj3 = k.first;
                c = ((Long) k.second).longValue();
                zg j2 = zgVar.j();
                if (j2 == null || !j2.b.equals(obj3)) {
                    c2 = this.f1935c;
                    this.f1935c = 1 + c2;
                } else {
                    c2 = j2.f.f292a.d;
                }
                obj = obj3;
            } else {
                obj = obj2;
            }
            return m5650k(m5636y(obj, c, c2), c, c);
        }
        hp.a aVar = c0036ah.f292a;
        this.f1936d.h(aVar.a, this.f1933a);
        if (!aVar.b()) {
            int e = this.f1933a.e(c0036ah.f295d);
            if (e == -1) {
                return m5648m(aVar.a, c0036ah.f296e, aVar.d);
            }
            int i2 = this.f1933a.i(e);
            return !this.f1933a.m(e, i2) ? null : m5649l(aVar.a, e, i2, c0036ah.f296e, aVar.d);
        }
        int i3 = aVar.b;
        int a = this.f1933a.a(i3);
        if (a == -1) {
            return null;
        }
        int j3 = this.f1933a.j(i3, aVar.c);
        if (j3 < a) {
            return !this.f1933a.m(i3, j3) ? null : m5649l(aVar.a, i3, j3, c0036ah.f294c, aVar.d);
        }
        char c3 = c0036ah.f294c;
        if (this.f1933a.c() == 1 && this.f1933a.f(0) == 0) {
            ph phVar = this.f1936d;
            ph.c cVar = this.f1934b;
            ph.b bVar = this.f1933a;
            Pair k2 = phVar.k(cVar, bVar, bVar.c, (long) C0515C.TIME_UNSET, Math.max(0L, l));
            if (k2 == null) {
                return null;
            }
            c3 = ((Long) k2.second).longValue();
        }
        return m5648m(aVar.a, c3, aVar.d);
    }

    /* renamed from: i */
    public zg m5652i() {
        return m5643r() ? this.f1939g : this.f1941i;
    }

    /* renamed from: j */
    public zg m5651j() {
        return this.f1941i;
    }

    /* renamed from: k */
    public final C0036ah m5650k(hp.a aVar, long j, long j2) {
        this.f1936d.h(aVar.a, this.f1933a);
        if (aVar.b()) {
            if (this.f1933a.m(aVar.b, aVar.c)) {
                return m5649l(aVar.a, aVar.b, aVar.c, j, aVar.d);
            }
            return null;
        }
        return m5648m(aVar.a, j2, aVar.d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: l */
    public final C0036ah m5649l(Object obj, int i, int i2, long j, long j2) {
        hp.a aVar = new hp.a(obj, i, i2, j2);
        return new C0036ah(aVar, (i2 == this.f1933a.i(i) ? this.f1933a.g() : false) == true ? 1L : 0L, j, C0515C.TIME_UNSET, this.f1936d.h(aVar.a, this.f1933a).b(aVar.b, aVar.c), false, false);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: m */
    public final C0036ah m5648m(Object obj, long j, long j2) {
        int d = this.f1933a.d(j);
        hp.a aVar = new hp.a(obj, j2, d);
        boolean m5642s = m5642s(aVar);
        boolean m5641t = m5641t(aVar, m5642s);
        char f = d != -1 ? this.f1933a.f(d) : (char) 1;
        return new C0036ah(aVar, j, C0515C.TIME_UNSET, f, (f == C0515C.TIME_UNSET || f == Long.MIN_VALUE) ? this.f1933a.d : f, m5642s, m5641t);
    }

    /* renamed from: n */
    public C0036ah m5647n(long j, C1292dh c1292dh) {
        zg zgVar = this.f1941i;
        return zgVar == null ? m5654g(c1292dh) : m5653h(zgVar, j);
    }

    /* renamed from: o */
    public zg m5646o() {
        return this.f1939g;
    }

    /* renamed from: p */
    public zg m5645p() {
        return this.f1940h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x005a, code lost:
        if (r0 == Long.MIN_VALUE) goto L9;
     */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000.C0036ah m5644q(p000.C0036ah r15) {
        /*
            r14 = this;
            r0 = r15
            hp$a r0 = r0.f292a
            r16 = r0
            r0 = r14
            r1 = r16
            boolean r0 = r0.m5642s(r1)
            r17 = r0
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.m5641t(r1, r2)
            r18 = r0
            r0 = r14
            ph r0 = r0.f1936d
            r1 = r15
            hp$a r1 = r1.f292a
            java.lang.Object r1 = r1.a
            r2 = r14
            ph$b r2 = r2.f1933a
            ph$b r0 = r0.h(r1, r2)
            r0 = r16
            boolean r0 = r0.b()
            if (r0 == 0) goto L41
            r0 = r14
            ph$b r0 = r0.f1933a
            r1 = r16
            int r1 = r1.b
            r2 = r16
            int r2 = r2.c
            long r0 = r0.b(r1, r2)
            r19 = r0
        L3e:
            goto L69
        L41:
            r0 = r15
            long r0 = r0.f295d
            r21 = r0
            r0 = r21
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L5d
            r0 = r21
            r19 = r0
            r0 = r21
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3e
        L5d:
            r0 = r14
            ph$b r0 = r0.f1933a
            long r0 = r0.h()
            r19 = r0
            goto L3e
        L69:
            ah r0 = new ah
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.f293b
            r4 = r15
            long r4 = r4.f294c
            r5 = r15
            long r5 = r5.f295d
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0246bh.m5644q(ah):ah");
    }

    /* renamed from: r */
    public boolean m5643r() {
        return this.f1939g != null;
    }

    /* renamed from: s */
    public final boolean m5642s(hp.a aVar) {
        return !aVar.b() && aVar.e == -1;
    }

    /* renamed from: t */
    public final boolean m5641t(hp.a aVar, boolean z) {
        int b = this.f1936d.b(aVar.a);
        return !this.f1936d.m(this.f1936d.f(b, this.f1933a).c, this.f1934b).e && this.f1936d.r(b, this.f1933a, this.f1934b, this.f1937e, this.f1938f) && z;
    }

    /* renamed from: u */
    public boolean m5640u(fp fpVar) {
        zg zgVar = this.f1941i;
        return zgVar != null && zgVar.a == fpVar;
    }

    /* renamed from: v */
    public void m5639v(long j) {
        zg zgVar = this.f1941i;
        if (zgVar != null) {
            zgVar.s(j);
        }
    }

    /* renamed from: w */
    public boolean m5638w(zg zgVar) {
        it.f(zgVar != null);
        this.f1941i = zgVar;
        boolean z = false;
        while (zgVar.j() != null) {
            zgVar = zgVar.j();
            if (zgVar == this.f1940h) {
                this.f1940h = this.f1939g;
                z = true;
            }
            zgVar.t();
            this.f1942j--;
        }
        this.f1941i.w((zg) null);
        return z;
    }

    /* renamed from: x */
    public hp.a m5637x(Object obj, long j) {
        return m5636y(obj, j, m5635z(obj));
    }

    /* renamed from: y */
    public final hp.a m5636y(Object obj, long j, long j2) {
        this.f1936d.h(obj, this.f1933a);
        int e = this.f1933a.e(j);
        return e == -1 ? new hp.a(obj, j2, this.f1933a.d(j)) : new hp.a(obj, e, this.f1933a.i(e), j2);
    }

    /* renamed from: z */
    public final long m5635z(Object obj) {
        int b;
        int i = this.f1936d.h(obj, this.f1933a).c;
        Object obj2 = this.f1943k;
        if (obj2 == null || (b = this.f1936d.b(obj2)) == -1 || this.f1936d.f(b, this.f1933a).c != i) {
            zg m5652i = m5652i();
            while (true) {
                zg zgVar = m5652i;
                if (zgVar == null) {
                    zg m5652i2 = m5652i();
                    while (true) {
                        zg zgVar2 = m5652i2;
                        if (zgVar2 == null) {
                            long j = this.f1935c;
                            this.f1935c = 1 + j;
                            return j;
                        }
                        int b2 = this.f1936d.b(zgVar2.b);
                        if (b2 != -1 && this.f1936d.f(b2, this.f1933a).c == i) {
                            return zgVar2.f.f292a.d;
                        }
                        m5652i2 = zgVar2.j();
                    }
                } else if (zgVar.b.equals(obj)) {
                    return zgVar.f.f292a.d;
                } else {
                    m5652i = zgVar.j();
                }
            }
        } else {
            return this.f1944l;
        }
    }
}
