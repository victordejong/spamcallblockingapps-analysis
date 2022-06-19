package okhttp3.internal.p091a;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC1957ac;
import okhttp3.AbstractC2092t;
import okhttp3.C1955ab;
import okhttp3.C2087r;
import okhttp3.C2104z;
import okhttp3.EnumC2101x;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.C1999c;
import okhttp3.internal.p091a.C1978c;
import okhttp3.internal.p092b.C1991e;
import okhttp3.internal.p092b.C1992f;
import okhttp3.internal.p092b.C1994h;
import p000a.AbstractC0007d;
import p000a.AbstractC0008e;
import p000a.AbstractC0025r;
import p000a.AbstractC0026s;
import p000a.C0005c;
import p000a.C0015l;
import p000a.C0027t;
/* renamed from: okhttp3.internal.a.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a/a.class */
public final class C1975a implements AbstractC2092t {

    /* renamed from: a */
    final AbstractC1983e f4905a;

    public C1975a(AbstractC1983e abstractC1983e) {
        this.f4905a = abstractC1983e;
    }

    /* renamed from: a */
    private static C1955ab m2423a(C1955ab c1955ab) {
        C1955ab c1955ab2 = c1955ab;
        if (c1955ab != null) {
            c1955ab2 = c1955ab;
            if (c1955ab.m2486g() != null) {
                c1955ab2 = c1955ab.m2485h().m2473a((AbstractC1957ac) null).m2480a();
            }
        }
        return c1955ab2;
    }

    /* renamed from: a */
    private C1955ab m2422a(final AbstractC1977b abstractC1977b, C1955ab c1955ab) {
        AbstractC0025r m2419a;
        if (abstractC1977b != null && (m2419a = abstractC1977b.m2419a()) != null) {
            final AbstractC0008e mo2370d = c1955ab.m2486g().mo2370d();
            final AbstractC0007d m8099a = C0015l.m8099a(m2419a);
            return c1955ab.m2485h().m2473a(new C1994h(c1955ab.m2493a("Content-Type"), c1955ab.m2486g().mo2371b(), C0015l.m8098a(new AbstractC0026s() { // from class: okhttp3.internal.a.a.1

                /* renamed from: a */
                boolean f4906a;

                @Override // p000a.AbstractC0026s
                /* renamed from: a */
                public long mo2087a(C0005c c0005c, long j) {
                    try {
                        long a = mo2370d.mo2087a(c0005c, j);
                        if (a != -1) {
                            c0005c.m8144a(m8099a.mo8072c(), c0005c.m8137b() - a, a);
                            m8099a.mo8081u();
                            return a;
                        } else if (this.f4906a) {
                            return -1L;
                        } else {
                            this.f4906a = true;
                            m8099a.close();
                            return -1L;
                        }
                    } catch (IOException e) {
                        if (!this.f4906a) {
                            this.f4906a = true;
                            abstractC1977b.m2418b();
                        }
                        throw e;
                    }
                }

                @Override // p000a.AbstractC0026s
                /* renamed from: a */
                public C0027t mo2088a() {
                    return mo2370d.mo2088a();
                }

                @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    if (!this.f4906a && !C1999c.m2354a(this, 100, TimeUnit.MILLISECONDS)) {
                        this.f4906a = true;
                        abstractC1977b.m2418b();
                    }
                    mo2370d.close();
                }
            }))).m2480a();
        }
        return c1955ab;
    }

    /* renamed from: a */
    private static C2087r m2421a(C2087r c2087r, C2087r c2087r2) {
        C2087r.C2088a c2088a = new C2087r.C2088a();
        int m1970a = c2087r.m1970a();
        for (int i = 0; i < m1970a; i++) {
            String m1969a = c2087r.m1969a(i);
            String m1964b = c2087r.m1964b(i);
            if ((!"Warning".equalsIgnoreCase(m1969a) || !m1964b.startsWith("1")) && (m2420b(m1969a) || !m2424a(m1969a) || c2087r2.m1968a(m1969a) == null)) {
                AbstractC1974a.f4904a.mo1845a(c2088a, m1969a, m1964b);
            }
        }
        int m1970a2 = c2087r2.m1970a();
        for (int i2 = 0; i2 < m1970a2; i2++) {
            String m1969a2 = c2087r2.m1969a(i2);
            if (!m2420b(m1969a2) && m2424a(m1969a2)) {
                AbstractC1974a.f4904a.mo1845a(c2088a, m1969a2, c2087r2.m1964b(i2));
            }
        }
        return c2088a.m1962a();
    }

    /* renamed from: a */
    static boolean m2424a(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    /* renamed from: b */
    static boolean m2420b(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    /* JADX WARN: Finally extract failed */
    @Override // okhttp3.AbstractC2092t
    /* renamed from: a */
    public C1955ab mo1903a(AbstractC2092t.AbstractC2093a abstractC2093a) {
        AbstractC1983e abstractC1983e = this.f4905a;
        C1955ab m2397a = abstractC1983e != null ? abstractC1983e.m2397a(abstractC2093a.mo1902a()) : null;
        C1978c m2416a = new C1978c.C1979a(System.currentTimeMillis(), abstractC2093a.mo1902a(), m2397a).m2416a();
        C2104z c2104z = m2416a.f4911a;
        C1955ab c1955ab = m2416a.f4912b;
        AbstractC1983e abstractC1983e2 = this.f4905a;
        if (abstractC1983e2 != null) {
            abstractC1983e2.m2398a(m2416a);
        }
        if (m2397a != null && c1955ab == null) {
            C1999c.m2353a(m2397a.m2486g());
        }
        if (c2104z == null && c1955ab == null) {
            return new C1955ab.C1956a().m2469a(abstractC2093a.mo1902a()).m2470a(EnumC2101x.HTTP_1_1).m2479a(504).m2477a("Unsatisfiable Request (only-if-cached)").m2473a(C1999c.f4984c).m2478a(-1L).m2468b(System.currentTimeMillis()).m2480a();
        }
        if (c2104z == null) {
            return c1955ab.m2485h().m2467b(m2423a(c1955ab)).m2480a();
        }
        try {
            C1955ab mo1901a = abstractC2093a.mo1901a(c2104z);
            if (mo1901a == null && m2397a != null) {
                C1999c.m2353a(m2397a.m2486g());
            }
            if (c1955ab != null) {
                if (mo1901a.m2491b() == 304) {
                    C1955ab m2480a = c1955ab.m2485h().m2471a(m2421a(c1955ab.m2487f(), mo1901a.m2487f())).m2478a(mo1901a.m2482k()).m2468b(mo1901a.m2481l()).m2467b(m2423a(c1955ab)).m2474a(m2423a(mo1901a)).m2480a();
                    mo1901a.m2486g().close();
                    this.f4905a.m2401a();
                    this.f4905a.m2399a(c1955ab, m2480a);
                    return m2480a;
                }
                C1999c.m2353a(c1955ab.m2486g());
            }
            C1955ab m2480a2 = mo1901a.m2485h().m2467b(m2423a(c1955ab)).m2474a(m2423a(mo1901a)).m2480a();
            if (this.f4905a != null) {
                if (C1991e.m2384b(m2480a2) && C1978c.m2417a(m2480a2, c2104z)) {
                    return m2422a(this.f4905a.m2400a(m2480a2), m2480a2);
                }
                if (C1992f.m2383a(c2104z.m1821b())) {
                    try {
                        this.f4905a.m2396b(c2104z);
                    } catch (IOException e) {
                    }
                }
            }
            return m2480a2;
        } catch (Throwable th) {
            if (m2397a != null) {
                C1999c.m2353a(m2397a.m2486g());
            }
            throw th;
        }
    }
}
