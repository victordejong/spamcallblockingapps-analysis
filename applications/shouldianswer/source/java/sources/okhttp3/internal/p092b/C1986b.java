package okhttp3.internal.p092b;

import java.net.ProtocolException;
import okhttp3.AbstractC2092t;
import okhttp3.C1955ab;
import okhttp3.C2104z;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2012c;
import okhttp3.internal.connection.C2016f;
import p000a.AbstractC0007d;
import p000a.AbstractC0010g;
import p000a.AbstractC0025r;
import p000a.C0005c;
import p000a.C0015l;
/* renamed from: okhttp3.internal.b.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/b.class */
public final class C1986b implements AbstractC2092t {

    /* renamed from: a */
    private final boolean f4953a;

    /* renamed from: okhttp3.internal.b.b$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/b/b$a.class */
    static final class C1987a extends AbstractC0010g {

        /* renamed from: a */
        long f4954a;

        C1987a(AbstractC0025r abstractC0025r) {
            super(abstractC0025r);
        }

        @Override // p000a.AbstractC0010g, p000a.AbstractC0025r
        /* renamed from: a_ */
        public void mo2089a_(C0005c c0005c, long j) {
            super.mo2089a_(c0005c, j);
            this.f4954a += j;
        }
    }

    public C1986b(boolean z) {
        this.f4953a = z;
    }

    @Override // okhttp3.AbstractC2092t
    /* renamed from: a */
    public C1955ab mo1903a(AbstractC2092t.AbstractC2093a abstractC2093a) {
        C1993g c1993g = (C1993g) abstractC2093a;
        AbstractC1988c m2375g = c1993g.m2375g();
        C2016f m2376f = c1993g.m2376f();
        C2012c c2012c = (C2012c) c1993g.m2377e();
        C2104z mo1902a = c1993g.mo1902a();
        long currentTimeMillis = System.currentTimeMillis();
        c1993g.m2373i().m1979c(c1993g.m2374h());
        m2375g.mo2176a(mo1902a);
        c1993g.m2373i().m1984a(c1993g.m2374h(), mo1902a);
        C1955ab.C1956a c1956a = null;
        C1955ab.C1956a c1956a2 = null;
        if (C1992f.m2381c(mo1902a.m1821b())) {
            c1956a2 = null;
            if (mo1902a.m1819d() != null) {
                if ("100-continue".equalsIgnoreCase(mo1902a.m1822a("Expect"))) {
                    m2375g.mo2179a();
                    c1993g.m2373i().m1977e(c1993g.m2374h());
                    c1956a = m2375g.mo2174a(true);
                }
                if (c1956a == null) {
                    c1993g.m2373i().m1978d(c1993g.m2374h());
                    C1987a c1987a = new C1987a(m2375g.mo2175a(mo1902a, mo1902a.m1819d().mo1889b()));
                    AbstractC0007d m8099a = C0015l.m8099a(c1987a);
                    mo1902a.m1819d().mo1892a(m8099a);
                    m8099a.close();
                    c1993g.m2373i().m1994a(c1993g.m2374h(), c1987a.f4954a);
                    c1956a2 = c1956a;
                } else {
                    c1956a2 = c1956a;
                    if (!c2012c.m2293d()) {
                        m2376f.m2264e();
                        c1956a2 = c1956a;
                    }
                }
            }
        }
        m2375g.mo2173b();
        C1955ab.C1956a c1956a3 = c1956a2;
        if (c1956a2 == null) {
            c1993g.m2373i().m1977e(c1993g.m2374h());
            c1956a3 = m2375g.mo2174a(false);
        }
        C1955ab m2480a = c1956a3.m2469a(mo1902a).m2472a(m2376f.m2266c().m2294c()).m2478a(currentTimeMillis).m2468b(System.currentTimeMillis()).m2480a();
        int m2491b = m2480a.m2491b();
        int i = m2491b;
        if (m2491b == 100) {
            m2480a = m2375g.mo2174a(false).m2469a(mo1902a).m2472a(m2376f.m2266c().m2294c()).m2478a(currentTimeMillis).m2468b(System.currentTimeMillis()).m2480a();
            i = m2480a.m2491b();
        }
        c1993g.m2373i().m1987a(c1993g.m2374h(), m2480a);
        C1955ab m2480a2 = (!this.f4953a || i != 101) ? m2480a.m2485h().m2473a(m2375g.mo2177a(m2480a)).m2480a() : m2480a.m2485h().m2473a(C1999c.f4984c).m2480a();
        if ("close".equalsIgnoreCase(m2480a2.m2494a().m1822a("Connection")) || "close".equalsIgnoreCase(m2480a2.m2493a("Connection"))) {
            m2376f.m2264e();
        }
        if ((i == 204 || i == 205) && m2480a2.m2486g().mo2371b() > 0) {
            throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + m2480a2.m2486g().mo2371b());
        }
        return m2480a2;
    }
}
