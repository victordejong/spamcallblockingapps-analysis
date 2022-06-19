package okhttp3.internal.p091a;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.C1955ab;
import okhttp3.C1964d;
import okhttp3.C2087r;
import okhttp3.C2104z;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.p092b.C1989d;
import okhttp3.internal.p092b.C1991e;
/* renamed from: okhttp3.internal.a.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a/c.class */
public final class C1978c {
    @Nullable

    /* renamed from: a */
    public final C2104z f4911a;
    @Nullable

    /* renamed from: b */
    public final C1955ab f4912b;

    /* renamed from: okhttp3.internal.a.c$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/a/c$a.class */
    public static class C1979a {

        /* renamed from: a */
        final long f4913a;

        /* renamed from: b */
        final C2104z f4914b;

        /* renamed from: c */
        final C1955ab f4915c;

        /* renamed from: d */
        private Date f4916d;

        /* renamed from: e */
        private String f4917e;

        /* renamed from: f */
        private Date f4918f;

        /* renamed from: g */
        private String f4919g;

        /* renamed from: h */
        private Date f4920h;

        /* renamed from: i */
        private long f4921i;

        /* renamed from: j */
        private long f4922j;

        /* renamed from: k */
        private String f4923k;

        /* renamed from: l */
        private int f4924l;

        public C1979a(long j, C2104z c2104z, C1955ab c1955ab) {
            this.f4924l = -1;
            this.f4913a = j;
            this.f4914b = c2104z;
            this.f4915c = c1955ab;
            if (c1955ab != null) {
                this.f4921i = c1955ab.m2482k();
                this.f4922j = c1955ab.m2481l();
                C2087r m2487f = c1955ab.m2487f();
                int m1970a = m2487f.m1970a();
                for (int i = 0; i < m1970a; i++) {
                    String m1969a = m2487f.m1969a(i);
                    String m1964b = m2487f.m1964b(i);
                    if ("Date".equalsIgnoreCase(m1969a)) {
                        this.f4916d = C1989d.m2394a(m1964b);
                        this.f4917e = m1964b;
                    } else if ("Expires".equalsIgnoreCase(m1969a)) {
                        this.f4920h = C1989d.m2394a(m1964b);
                    } else if ("Last-Modified".equalsIgnoreCase(m1969a)) {
                        this.f4918f = C1989d.m2394a(m1964b);
                        this.f4919g = m1964b;
                    } else if ("ETag".equalsIgnoreCase(m1969a)) {
                        this.f4923k = m1964b;
                    } else if ("Age".equalsIgnoreCase(m1969a)) {
                        this.f4924l = C1991e.m2385b(m1964b, -1);
                    }
                }
            }
        }

        /* renamed from: a */
        private static boolean m2415a(C2104z c2104z) {
            return (c2104z.m1822a("If-Modified-Since") == null && c2104z.m1822a("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58 */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v83, types: [long] */
        /* JADX WARN: Type inference failed for: r0v85, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Type inference failed for: r1v11, types: [long] */
        /* JADX WARN: Type inference failed for: r1v9, types: [long] */
        /* JADX WARN: Type inference failed for: r2v10, types: [long] */
        /* renamed from: b */
        private C1978c m2414b() {
            if (this.f4915c == null) {
                return new C1978c(this.f4914b, null);
            }
            if ((!this.f4914b.m1816g() || this.f4915c.m2488e() != null) && C1978c.m2417a(this.f4915c, this.f4914b)) {
                C1964d m1817f = this.f4914b.m1817f();
                if (m1817f.m2452a() || m2415a(this.f4914b)) {
                    return new C1978c(this.f4914b, null);
                }
                C1964d m2483j = this.f4915c.m2483j();
                if (m2483j.m2442j()) {
                    return new C1978c(null, this.f4915c);
                }
                long m2412d = m2412d();
                ?? m2413c = m2413c();
                ?? r14 = m2413c;
                if (m1817f.m2449c() != -1) {
                    r14 = Math.min((long) m2413c, TimeUnit.SECONDS.toMillis(m1817f.m2449c()));
                }
                ?? millis = m1817f.m2444h() != -1 ? TimeUnit.SECONDS.toMillis(m1817f.m2444h()) : false;
                ?? r19 = 0;
                if (!m2483j.m2446f()) {
                    r19 = 0;
                    if (m1817f.m2445g() != -1) {
                        r19 = TimeUnit.SECONDS.toMillis(m1817f.m2445g());
                    }
                }
                if (!m2483j.m2452a()) {
                    long j = (millis == true ? 1L : 0L) + m2412d;
                    if (j < r19 + r14) {
                        C1955ab.C1956a m2485h = this.f4915c.m2485h();
                        if (j >= r14) {
                            m2485h.m2476a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (m2412d > 86400000 && m2411e()) {
                            m2485h.m2476a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new C1978c(null, m2485h.m2480a());
                    }
                }
                String str = this.f4923k;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.f4918f != null) {
                    str = this.f4919g;
                } else if (this.f4916d == null) {
                    return new C1978c(this.f4914b, null);
                } else {
                    str = this.f4917e;
                }
                C2087r.C2088a m1965b = this.f4914b.m1820c().m1965b();
                AbstractC1974a.f4904a.mo1845a(m1965b, str2, str);
                return new C1978c(this.f4914b.m1818e().m1810a(m1965b.m1962a()).m1815a(), this.f4915c);
            }
            return new C1978c(this.f4914b, null);
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v32, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* renamed from: c */
        private long m2413c() {
            C1964d m2483j;
            if (this.f4915c.m2483j().m2449c() != -1) {
                return TimeUnit.SECONDS.toMillis(m2483j.m2449c());
            }
            char c = 0;
            if (this.f4920h != null) {
                Date date = this.f4916d;
                ?? time = this.f4920h.getTime() - (date != null ? date.getTime() : this.f4922j);
                if (time > 0) {
                    c = time;
                }
                return c;
            }
            char c2 = 0;
            if (this.f4918f != null) {
                c2 = 0;
                if (this.f4915c.m2494a().m1823a().m1929l() == null) {
                    Date date2 = this.f4916d;
                    long time2 = (date2 != null ? date2.getTime() : this.f4921i) - this.f4918f.getTime();
                    c2 = 0;
                    if (time2 > 0) {
                        c2 = time2 / 10;
                    }
                }
            }
            return c2;
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* renamed from: d */
        private long m2412d() {
            Date date = this.f4916d;
            char c = 0;
            if (date != null) {
                c = Math.max(0L, this.f4922j - date.getTime());
            }
            char c2 = c;
            if (this.f4924l != -1) {
                c2 = Math.max((long) c, TimeUnit.SECONDS.toMillis(this.f4924l));
            }
            long j = this.f4922j;
            return c2 + (j - this.f4921i) + (this.f4913a - j);
        }

        /* renamed from: e */
        private boolean m2411e() {
            return this.f4915c.m2483j().m2449c() == -1 && this.f4920h == null;
        }

        /* renamed from: a */
        public C1978c m2416a() {
            C1978c m2414b = m2414b();
            C1978c c1978c = m2414b;
            if (m2414b.f4911a != null) {
                c1978c = m2414b;
                if (this.f4914b.m1817f().m2443i()) {
                    c1978c = new C1978c(null, null);
                }
            }
            return c1978c;
        }
    }

    C1978c(C2104z c2104z, C1955ab c1955ab) {
        this.f4911a = c2104z;
        this.f4912b = c1955ab;
    }

    /* renamed from: a */
    public static boolean m2417a(C1955ab c1955ab, C2104z c2104z) {
        int m2491b = c1955ab.m2491b();
        if (m2491b != 200 && m2491b != 410 && m2491b != 414 && m2491b != 501 && m2491b != 203 && m2491b != 204) {
            if (m2491b != 307) {
                if (m2491b != 308 && m2491b != 404 && m2491b != 405) {
                    switch (m2491b) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (c1955ab.m2493a("Expires") == null && c1955ab.m2483j().m2449c() == -1 && !c1955ab.m2483j().m2447e() && !c1955ab.m2483j().m2448d()) {
                return false;
            }
        }
        boolean z = false;
        if (!c1955ab.m2483j().m2450b()) {
            z = false;
            if (!c2104z.m1817f().m2450b()) {
                z = true;
            }
        }
        return z;
    }
}
