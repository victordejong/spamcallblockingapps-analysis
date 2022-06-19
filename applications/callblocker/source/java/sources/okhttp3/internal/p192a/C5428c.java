package okhttp3.internal.p192a;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5413d;
import okhttp3.C5539s;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.p193b.C5439d;
import okhttp3.internal.p193b.C5441e;
/* renamed from: okhttp3.internal.a.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a/c.class */
public final class C5428c {
    @Nullable

    /* renamed from: a */
    public final C5400aa f22685a;
    @Nullable

    /* renamed from: b */
    public final C5404ac f22686b;

    /* renamed from: okhttp3.internal.a.c$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/a/c$a.class */
    public static class C5429a {

        /* renamed from: a */
        final long f22687a;

        /* renamed from: b */
        final C5400aa f22688b;

        /* renamed from: c */
        final C5404ac f22689c;

        /* renamed from: d */
        private Date f22690d;

        /* renamed from: e */
        private String f22691e;

        /* renamed from: f */
        private Date f22692f;

        /* renamed from: g */
        private String f22693g;

        /* renamed from: h */
        private Date f22694h;

        /* renamed from: i */
        private long f22695i;

        /* renamed from: j */
        private long f22696j;

        /* renamed from: k */
        private String f22697k;

        /* renamed from: l */
        private int f22698l;

        public C5429a(long j, C5400aa c5400aa, C5404ac c5404ac) {
            this.f22698l = -1;
            this.f22687a = j;
            this.f22688b = c5400aa;
            this.f22689c = c5404ac;
            if (c5404ac != null) {
                this.f22695i = c5404ac.m799j();
                this.f22696j = c5404ac.m798k();
                C5539s m804e = c5404ac.m804e();
                int m284a = m804e.m284a();
                for (int i = 0; i < m284a; i++) {
                    String m283a = m804e.m283a(i);
                    String m278b = m804e.m278b(i);
                    if ("Date".equalsIgnoreCase(m283a)) {
                        this.f22690d = C5439d.m712a(m278b);
                        this.f22691e = m278b;
                    } else if ("Expires".equalsIgnoreCase(m283a)) {
                        this.f22694h = C5439d.m712a(m278b);
                    } else if ("Last-Modified".equalsIgnoreCase(m283a)) {
                        this.f22692f = C5439d.m712a(m278b);
                        this.f22693g = m278b;
                    } else if ("ETag".equalsIgnoreCase(m283a)) {
                        this.f22697k = m278b;
                    } else if ("Age".equalsIgnoreCase(m283a)) {
                        this.f22698l = C5441e.m703b(m278b, -1);
                    }
                }
            }
        }

        /* renamed from: a */
        private static boolean m733a(C5400aa c5400aa) {
            return (c5400aa.m826a("If-Modified-Since") == null && c5400aa.m826a("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Type inference failed for: r0v26, types: [long] */
        /* JADX WARN: Type inference failed for: r0v82, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        /* JADX WARN: Type inference failed for: r0v86, types: [long] */
        /* renamed from: b */
        private C5428c m732b() {
            C5428c c5428c;
            String str;
            String str2;
            if (this.f22689c == null) {
                c5428c = new C5428c(this.f22688b, null);
            } else if (this.f22688b.m820g() && this.f22689c.m805d() == null) {
                c5428c = new C5428c(this.f22688b, null);
            } else if (!C5428c.m735a(this.f22689c, this.f22688b)) {
                c5428c = new C5428c(this.f22688b, null);
            } else {
                C5413d m821f = this.f22688b.m821f();
                if (m821f.m770a() || m733a(this.f22688b)) {
                    c5428c = new C5428c(this.f22688b, null);
                } else {
                    C5413d m800i = this.f22689c.m800i();
                    if (m800i.m760j()) {
                        c5428c = new C5428c(null, this.f22689c);
                    } else {
                        long m730d = m730d();
                        ?? m731c = m731c();
                        char c = m731c;
                        if (m821f.m767c() != -1) {
                            c = Math.min((long) m731c, TimeUnit.SECONDS.toMillis(m821f.m767c()));
                        }
                        char millis = m821f.m762h() != -1 ? TimeUnit.SECONDS.toMillis(m821f.m762h()) : (char) 0;
                        char c2 = 0;
                        if (!m800i.m764f()) {
                            c2 = 0;
                            if (m821f.m763g() != -1) {
                                c2 = TimeUnit.SECONDS.toMillis(m821f.m763g());
                            }
                        }
                        if (m800i.m770a() || m730d + millis >= c2 + c) {
                            if (this.f22697k != null) {
                                str = "If-None-Match";
                                str2 = this.f22697k;
                            } else if (this.f22692f != null) {
                                str = "If-Modified-Since";
                                str2 = this.f22693g;
                            } else if (this.f22690d != null) {
                                str = "If-Modified-Since";
                                str2 = this.f22691e;
                            } else {
                                c5428c = new C5428c(this.f22688b, null);
                            }
                            C5539s.C5540a m279b = this.f22688b.m824c().m279b();
                            AbstractC5424a.f22678a.mo165a(m279b, str, str2);
                            c5428c = new C5428c(this.f22688b.m822e().m815a(m279b.m276a()).m819a(), this.f22689c);
                        } else {
                            C5404ac.C5405a m802g = this.f22689c.m802g();
                            if (millis + m730d >= c) {
                                m802g.m793a("Warning", "110 HttpURLConnection \"Response is stale\"");
                            }
                            if (m730d > 86400000 && m729e()) {
                                m802g.m793a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                            }
                            c5428c = new C5428c(null, m802g.m797a());
                        }
                    }
                }
            }
            return c5428c;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v34, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* renamed from: c */
        private long m731c() {
            C5413d m800i;
            char c;
            if (this.f22689c.m800i().m767c() != -1) {
                c = TimeUnit.SECONDS.toMillis(m800i.m767c());
            } else if (this.f22694h != null) {
                c = this.f22694h.getTime() - (this.f22690d != null ? this.f22690d.getTime() : this.f22696j);
                if (c <= 0) {
                    c = 0;
                }
            } else {
                c = 0;
                if (this.f22692f != null) {
                    c = 0;
                    if (this.f22689c.m810a().m827a().m242l() == null) {
                        long time = (this.f22690d != null ? this.f22690d.getTime() : this.f22695i) - this.f22692f.getTime();
                        c = 0;
                        if (time > 0) {
                            c = time / 10;
                        }
                    }
                }
            }
            return c;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        /* renamed from: d */
        private long m730d() {
            char c = 0;
            if (this.f22690d != null) {
                c = Math.max(0L, this.f22696j - this.f22690d.getTime());
            }
            char c2 = c;
            if (this.f22698l != -1) {
                c2 = Math.max((long) c, TimeUnit.SECONDS.toMillis(this.f22698l));
            }
            return c2 + (this.f22696j - this.f22695i) + (this.f22687a - this.f22696j);
        }

        /* renamed from: e */
        private boolean m729e() {
            return this.f22689c.m800i().m767c() == -1 && this.f22694h == null;
        }

        /* renamed from: a */
        public C5428c m734a() {
            C5428c m732b = m732b();
            C5428c c5428c = m732b;
            if (m732b.f22685a != null) {
                c5428c = m732b;
                if (this.f22688b.m821f().m761i()) {
                    c5428c = new C5428c(null, null);
                }
            }
            return c5428c;
        }
    }

    C5428c(C5400aa c5400aa, C5404ac c5404ac) {
        this.f22685a = c5400aa;
        this.f22686b = c5404ac;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a3, code lost:
        if (r3.m800i().m766d() != false) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m735a(okhttp3.C5404ac r3, okhttp3.C5400aa r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r3
            int r0 = r0.m807b()
            switch(r0) {
                case 200: goto La6;
                case 203: goto La6;
                case 204: goto La6;
                case 300: goto La6;
                case 301: goto La6;
                case 302: goto L7c;
                case 307: goto L7c;
                case 308: goto La6;
                case 404: goto La6;
                case 405: goto La6;
                case 410: goto La6;
                case 414: goto La6;
                case 501: goto La6;
                default: goto L78;
            }
        L78:
            r0 = r5
            r6 = r0
        L7a:
            r0 = r6
            return r0
        L7c:
            r0 = r3
            java.lang.String r1 = "Expires"
            java.lang.String r0 = r0.m809a(r1)
            if (r0 != 0) goto La6
            r0 = r3
            okhttp3.d r0 = r0.m800i()
            int r0 = r0.m767c()
            r1 = -1
            if (r0 != r1) goto La6
            r0 = r3
            okhttp3.d r0 = r0.m800i()
            boolean r0 = r0.m765e()
            if (r0 != 0) goto La6
            r0 = r5
            r6 = r0
            r0 = r3
            okhttp3.d r0 = r0.m800i()
            boolean r0 = r0.m766d()
            if (r0 == 0) goto L7a
        La6:
            r0 = r5
            r6 = r0
            r0 = r3
            okhttp3.d r0 = r0.m800i()
            boolean r0 = r0.m768b()
            if (r0 != 0) goto L7a
            r0 = r5
            r6 = r0
            r0 = r4
            okhttp3.d r0 = r0.m821f()
            boolean r0 = r0.m768b()
            if (r0 != 0) goto L7a
            r0 = 1
            r6 = r0
            goto L7a
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p192a.C5428c.m735a(okhttp3.ac, okhttp3.aa):boolean");
    }
}
