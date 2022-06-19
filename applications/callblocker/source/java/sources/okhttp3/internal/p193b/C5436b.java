package okhttp3.internal.p193b;

import java.net.ProtocolException;
import okhttp3.AbstractC5544u;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5462c;
import okhttp3.internal.connection.C5466f;
import p000a.AbstractC0006d;
import p000a.AbstractC0009g;
import p000a.AbstractC0023r;
import p000a.C0005c;
import p000a.C0014l;
/* renamed from: okhttp3.internal.b.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/b.class */
public final class C5436b implements AbstractC5544u {

    /* renamed from: a */
    private final boolean f22727a;

    /* renamed from: okhttp3.internal.b.b$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/b/b$a.class */
    static final class C5437a extends AbstractC0009g {

        /* renamed from: a */
        long f22728a;

        C5437a(AbstractC0023r abstractC0023r) {
            super(abstractC0023r);
        }

        @Override // p000a.AbstractC0009g, p000a.AbstractC0023r
        /* renamed from: a_ */
        public void mo406a_(C0005c c0005c, long j) {
            super.mo406a_(c0005c, j);
            this.f22728a += j;
        }
    }

    public C5436b(boolean z) {
        this.f22727a = z;
    }

    @Override // okhttp3.AbstractC5544u
    /* renamed from: a */
    public C5404ac mo216a(AbstractC5544u.AbstractC5545a abstractC5545a) {
        C5443g c5443g = (C5443g) abstractC5545a;
        AbstractC5438c m693g = c5443g.m693g();
        C5466f m694f = c5443g.m694f();
        C5462c c5462c = (C5462c) c5443g.m695e();
        C5400aa mo215a = c5443g.mo215a();
        long currentTimeMillis = System.currentTimeMillis();
        c5443g.m691i().m297c(c5443g.m692h());
        m693g.mo495a(mo215a);
        c5443g.m691i().m305a(c5443g.m692h(), mo215a);
        C5404ac.C5405a c5405a = null;
        if (!C5442f.m699c(mo215a.m825b()) || mo215a.m823d() == null) {
            c5405a = null;
        } else {
            if ("100-continue".equalsIgnoreCase(mo215a.m826a("Expect"))) {
                m693g.mo497a();
                c5443g.m691i().m295e(c5443g.m692h());
                c5405a = m693g.mo492a(true);
            }
            if (c5405a == null) {
                c5443g.m691i().m296d(c5443g.m692h());
                C5437a c5437a = new C5437a(m693g.mo494a(mo215a, mo215a.m823d().mo58b()));
                AbstractC0006d m22523a = C0014l.m22523a(c5437a);
                mo215a.m823d().mo59a(m22523a);
                m22523a.close();
                c5443g.m691i().m312a(c5443g.m692h(), c5437a.f22728a);
            } else if (!c5462c.m612e()) {
                m694f.m583e();
            }
        }
        m693g.mo491b();
        C5404ac.C5405a c5405a2 = c5405a;
        if (c5405a == null) {
            c5443g.m691i().m295e(c5443g.m692h());
            c5405a2 = m693g.mo492a(false);
        }
        C5404ac m797a = c5405a2.m791a(mo215a).m788a(m694f.m585c().m613d()).m795a(currentTimeMillis).m785b(System.currentTimeMillis()).m797a();
        int m807b = m797a.m807b();
        int i = m807b;
        if (m807b == 100) {
            m797a = m693g.mo492a(false).m791a(mo215a).m788a(m694f.m585c().m613d()).m795a(currentTimeMillis).m785b(System.currentTimeMillis()).m797a();
            i = m797a.m807b();
        }
        c5443g.m691i().m304a(c5443g.m692h(), m797a);
        C5404ac m797a2 = (!this.f22727a || i != 101) ? m797a.m802g().m789a(m693g.mo493a(m797a)).m797a() : m797a.m802g().m789a(C5449c.f22758c).m797a();
        if ("close".equalsIgnoreCase(m797a2.m810a().m826a("Connection")) || "close".equalsIgnoreCase(m797a2.m809a("Connection"))) {
            m694f.m583e();
        }
        if ((i == 204 || i == 205) && m797a2.m803f().mo88b() > 0) {
            throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + m797a2.m803f().mo88b());
        }
        return m797a2;
    }
}
