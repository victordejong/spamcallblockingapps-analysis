package com.squareup.okhttp.internal.http;

import com.lidroid.xutils.http.client.multipart.MIME;
import com.squareup.okhttp.AbstractC2949m;
import com.squareup.okhttp.AbstractC2962s;
import com.squareup.okhttp.C2852a;
import com.squareup.okhttp.C2858e;
import com.squareup.okhttp.C2861f;
import com.squareup.okhttp.C2862g;
import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2952o;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.C2963t;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.http.C2913b;
import com.squareup.okhttp.p089u.AbstractC2965b;
import com.squareup.okhttp.p089u.AbstractC2966c;
import com.squareup.okhttp.p089u.C2975i;
import com.squareup.okhttp.p089u.C2977j;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* renamed from: com.squareup.okhttp.internal.http.g */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/g.class */
public final class C2928g {

    /* renamed from: u */
    private static final AbstractC2962s f12350u = new C2929a();

    /* renamed from: a */
    final C2952o f12351a;

    /* renamed from: b */
    private C2861f f12352b;

    /* renamed from: c */
    private C2852a f12353c;

    /* renamed from: d */
    private C2939n f12354d;

    /* renamed from: e */
    private C2963t f12355e;

    /* renamed from: f */
    private final C2959r f12356f;

    /* renamed from: g */
    private AbstractC2941p f12357g;

    /* renamed from: h */
    long f12358h = -1;

    /* renamed from: i */
    private boolean f12359i;

    /* renamed from: j */
    public final boolean f12360j;

    /* renamed from: k */
    private final C2954p f12361k;

    /* renamed from: l */
    private C2954p f12362l;

    /* renamed from: m */
    private C2959r f12363m;

    /* renamed from: n */
    private C2959r f12364n;

    /* renamed from: o */
    private Sink f12365o;

    /* renamed from: p */
    private BufferedSink f12366p;

    /* renamed from: q */
    private final boolean f12367q;

    /* renamed from: r */
    private final boolean f12368r;

    /* renamed from: s */
    private AbstractC2912a f12369s;

    /* renamed from: t */
    private C2913b f12370t;

    /* renamed from: com.squareup.okhttp.internal.http.g$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/g$a.class */
    static final class C2929a extends AbstractC2962s {
        C2929a() {
        }

        @Override // com.squareup.okhttp.AbstractC2962s
        /* renamed from: p */
        public long mo713p() {
            return 0L;
        }

        @Override // com.squareup.okhttp.AbstractC2962s
        /* renamed from: x */
        public BufferedSource mo712x() {
            return new Buffer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.http.g$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/g$b.class */
    public class C2930b implements Source {

        /* renamed from: b */
        boolean f12371b;

        /* renamed from: c */
        final /* synthetic */ BufferedSource f12372c;

        /* renamed from: d */
        final /* synthetic */ AbstractC2912a f12373d;

        /* renamed from: e */
        final /* synthetic */ BufferedSink f12374e;

        C2930b(C2928g gVar, BufferedSource bufferedSource, AbstractC2912a aVar, BufferedSink bufferedSink) {
            this.f12372c = bufferedSource;
            this.f12373d = aVar;
            this.f12374e = bufferedSink;
        }

        public void close() {
            if (!this.f12371b && !C2975i.m655e(this, 100, TimeUnit.MILLISECONDS)) {
                this.f12371b = true;
                this.f12373d.abort();
            }
            this.f12372c.close();
        }

        public long read(Buffer buffer, long j) {
            try {
                long read = this.f12372c.read(buffer, j);
                if (read != -1) {
                    buffer.copyTo(this.f12374e.buffer(), buffer.size() - read, read);
                    this.f12374e.emitCompleteSegments();
                    return read;
                } else if (this.f12371b) {
                    return -1L;
                } else {
                    this.f12371b = true;
                    this.f12374e.close();
                    return -1L;
                }
            } catch (IOException e) {
                if (!this.f12371b) {
                    this.f12371b = true;
                    this.f12373d.abort();
                }
                throw e;
            }
        }

        public Timeout timeout() {
            return this.f12372c.timeout();
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.g$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/g$c.class */
    class C2931c implements AbstractC2949m.AbstractC2950a {

        /* renamed from: a */
        private final int f12375a;

        /* renamed from: b */
        private int f12376b;

        C2931c(int i, C2954p pVar) {
            this.f12375a = i;
        }

        /* renamed from: a */
        public C2861f m953a() {
            return C2928g.this.f12352b;
        }

        /* renamed from: b */
        public C2959r m952b(C2954p pVar) {
            this.f12376b++;
            if (this.f12375a > 0) {
                AbstractC2949m mVar = C2928g.this.f12351a.m796y().get(this.f12375a - 1);
                C2852a a = m953a().m1283l().m711a();
                if (!pVar.m785j().m864q().equals(a.m1319j()) || pVar.m785j().m855z() != a.m1318k()) {
                    throw new IllegalStateException("network interceptor " + mVar + " must retain the same host and port");
                } else if (this.f12376b > 1) {
                    throw new IllegalStateException("network interceptor " + mVar + " must call proceed() exactly once");
                }
            }
            if (this.f12375a < C2928g.this.f12351a.m796y().size()) {
                C2928g gVar = C2928g.this;
                C2931c cVar = new C2931c(this.f12375a + 1, pVar);
                AbstractC2949m mVar2 = gVar.f12351a.m796y().get(this.f12375a);
                C2959r a2 = mVar2.m831a(cVar);
                if (cVar.f12376b == 1) {
                    return a2;
                }
                throw new IllegalStateException("network interceptor " + mVar2 + " must call proceed() exactly once");
            }
            C2928g.this.f12357g.mo914c(pVar);
            C2928g.this.f12362l = pVar;
            if (C2928g.this.m954z() && pVar.m789f() != null) {
                BufferedSink buffer = Okio.buffer(C2928g.this.f12357g.mo916a(pVar, pVar.m789f().mo764a()));
                pVar.m789f().mo763d(buffer);
                buffer.close();
            }
            C2959r A = C2928g.this.m992A();
            int n = A.m749n();
            if ((n != 204 && n != 205) || A.m752k().mo713p() <= 0) {
                return A;
            }
            throw new ProtocolException("HTTP " + n + " had non-zero Content-Length: " + A.m752k().mo713p());
        }
    }

    public C2928g(C2952o oVar, C2954p pVar, boolean z, boolean z2, boolean z3, C2861f fVar, C2939n nVar, C2938m mVar, C2959r rVar) {
        C2963t tVar;
        this.f12351a = oVar;
        this.f12361k = pVar;
        this.f12360j = z;
        this.f12367q = z2;
        this.f12368r = z3;
        this.f12352b = fVar;
        this.f12354d = nVar;
        this.f12365o = mVar;
        this.f12356f = rVar;
        if (fVar != null) {
            AbstractC2965b.f12498b.mo691n(fVar, this);
            tVar = fVar.m1283l();
        } else {
            tVar = null;
        }
        this.f12355e = tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public C2959r m992A() {
        this.f12357g.finishRequest();
        C2959r.C2961b f = this.f12357g.mo911f();
        f.m715y(this.f12362l);
        f.m722r(this.f12352b.m1286i());
        f.m721s(C2934j.f12382c, Long.toString(this.f12358h));
        f.m721s(C2934j.f12383d, Long.toString(System.currentTimeMillis()));
        C2959r m = f.m727m();
        C2959r rVar = m;
        if (!this.f12368r) {
            C2959r.C2961b u = m.m742u();
            u.m728l(this.f12357g.mo909h(m));
            rVar = u.m727m();
        }
        AbstractC2965b.f12498b.mo690o(this.f12352b, rVar.m741v());
        return rVar;
    }

    /* renamed from: J */
    private static C2959r m983J(C2959r rVar) {
        C2959r rVar2 = rVar;
        if (rVar != null) {
            rVar2 = rVar;
            if (rVar.m752k() != null) {
                C2959r.C2961b u = rVar.m742u();
                u.m728l(null);
                rVar2 = u.m727m();
            }
        }
        return rVar2;
    }

    /* renamed from: K */
    private C2959r m982K(C2959r rVar) {
        C2959r rVar2 = rVar;
        if (this.f12359i) {
            if (!"gzip".equalsIgnoreCase(this.f12364n.m747p("Content-Encoding"))) {
                rVar2 = rVar;
            } else if (rVar.m752k() == null) {
                return rVar;
            } else {
                GzipSource gzipSource = new GzipSource(rVar.m752k().mo712x());
                C2943k.C2945b e = rVar.m745r().m898e();
                e.m888h("Content-Encoding");
                e.m888h("Content-Length");
                C2943k e2 = e.m891e();
                C2959r.C2961b u = rVar.m742u();
                u.m720t(e2);
                u.m728l(new C2936k(e2, Okio.buffer((Source) gzipSource)));
                rVar2 = u.m727m();
            }
        }
        return rVar2;
    }

    /* renamed from: L */
    private static boolean m981L(C2959r rVar, C2959r rVar2) {
        Date c;
        if (rVar2.m749n() == 304) {
            return true;
        }
        Date c2 = rVar.m745r().m900c("Last-Modified");
        return (c2 == null || (c = rVar2.m745r().m900c("Last-Modified")) == null || c.getTime() >= c2.getTime()) ? false : true;
    }

    /* renamed from: e */
    private C2959r m975e(AbstractC2912a aVar, C2959r rVar) {
        Sink body;
        if (!(aVar == null || (body = aVar.body()) == null)) {
            C2930b bVar = new C2930b(this, rVar.m752k().mo712x(), aVar, Okio.buffer(body));
            C2959r.C2961b u = rVar.m742u();
            u.m728l(new C2936k(rVar.m745r(), Okio.buffer((Source) bVar)));
            return u.m727m();
        }
        return rVar;
    }

    /* renamed from: g */
    private static C2943k m973g(C2943k kVar, C2943k kVar2) {
        C2943k.C2945b bVar = new C2943k.C2945b();
        int f = kVar.m897f();
        for (int i = 0; i < f; i++) {
            String d = kVar.m899d(i);
            String g = kVar.m896g(i);
            if ((!"Warning".equalsIgnoreCase(d) || !g.startsWith("1")) && (!C2934j.m942f(d) || kVar2.m902a(d) == null)) {
                bVar.m894b(d, g);
            }
        }
        int f2 = kVar2.m897f();
        for (int i2 = 0; i2 < f2; i2++) {
            String d2 = kVar2.m899d(i2);
            if (!"Content-Length".equalsIgnoreCase(d2) && C2934j.m942f(d2)) {
                bVar.m894b(d2, kVar2.m896g(i2));
            }
        }
        return bVar.m891e();
    }

    /* renamed from: h */
    private void m972h() {
        if (this.f12352b == null) {
            if (this.f12354d == null) {
                C2852a j = m970j(this.f12351a, this.f12362l);
                this.f12353c = j;
                try {
                    this.f12354d = C2939n.m930b(j, this.f12362l, this.f12351a);
                } catch (IOException e) {
                    throw new RequestException(e);
                }
            }
            C2861f k = m969k();
            this.f12352b = k;
            AbstractC2965b.f12498b.mo700e(this.f12351a, k, this, this.f12362l);
            this.f12355e = this.f12352b.m1283l();
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: i */
    private void m971i(C2939n nVar, IOException iOException) {
        if (AbstractC2965b.f12498b.mo694k(this.f12352b) <= 0) {
            nVar.m931a(this.f12352b.m1283l(), iOException);
        }
    }

    /* renamed from: j */
    private static C2852a m970j(C2952o oVar, C2954p pVar) {
        C2858e eVar;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (pVar.m784k()) {
            sSLSocketFactory = oVar.m799u();
            hostnameVerifier = oVar.m806m();
            eVar = oVar.m813f();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            eVar = null;
        }
        return new C2852a(pVar.m785j().m864q(), pVar.m785j().m855z(), oVar.m800t(), sSLSocketFactory, hostnameVerifier, eVar, oVar.m814e(), oVar.m804o(), oVar.m805n(), oVar.m810i(), oVar.m803q());
    }

    /* renamed from: k */
    private C2861f m969k() {
        C2861f c;
        C2862g h = this.f12351a.m811h();
        while (true) {
            c = h.m1267c(this.f12353c);
            if (c == null) {
                try {
                    return new C2861f(h, this.f12354d.m924h());
                } catch (IOException e) {
                    throw new RouteException(e);
                }
            } else if (this.f12362l.m783l().equals("GET") || AbstractC2965b.f12498b.mo698g(c)) {
                break;
            } else {
                C2975i.m656d(c.m1282m());
            }
        }
        return c;
    }

    /* renamed from: t */
    public static boolean m960t(C2959r rVar) {
        if (rVar.m740w().m783l().equals(OkHttpUtils.METHOD.HEAD)) {
            return false;
        }
        int n = rVar.m749n();
        return (((n >= 100 && n < 200) || n == 204 || n == 304) && C2934j.m943e(rVar) == -1 && !"chunked".equalsIgnoreCase(rVar.m747p("Transfer-Encoding"))) ? false : true;
    }

    /* renamed from: v */
    private boolean m958v(RouteException routeException) {
        if (!this.f12351a.m801s()) {
            return false;
        }
        IOException lastConnectException = routeException.getLastConnectException();
        if (!(lastConnectException instanceof ProtocolException) && !(lastConnectException instanceof InterruptedIOException)) {
            return (!(lastConnectException instanceof SSLHandshakeException) || !(lastConnectException.getCause() instanceof CertificateException)) && !(lastConnectException instanceof SSLPeerUnverifiedException);
        }
        return false;
    }

    /* renamed from: w */
    private boolean m957w(IOException iOException) {
        return this.f12351a.m801s() && !(iOException instanceof ProtocolException) && !(iOException instanceof InterruptedIOException);
    }

    /* renamed from: x */
    private void m956x() {
        AbstractC2966c f = AbstractC2965b.f12498b.mo699f(this.f12351a);
        if (f != null) {
            if (C2913b.m1040a(this.f12364n, this.f12362l)) {
                this.f12369s = f.m687c(m983J(this.f12364n));
            } else if (C2932h.m951a(this.f12362l.m783l())) {
                try {
                    f.m688b(this.f12362l);
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: y */
    private C2954p m955y(C2954p pVar) {
        C2954p.C2956b m = pVar.m782m();
        if (pVar.m787h("Host") == null) {
            m.m771h("Host", C2975i.m653g(pVar.m785j()));
        }
        C2861f fVar = this.f12352b;
        if ((fVar == null || fVar.m1284k() != Protocol.HTTP_1_0) && pVar.m787h("Connection") == null) {
            m.m771h("Connection", "Keep-Alive");
        }
        if (pVar.m787h("Accept-Encoding") == null) {
            this.f12359i = true;
            m.m771h("Accept-Encoding", "gzip");
        }
        CookieHandler j = this.f12351a.m809j();
        if (j != null) {
            C2934j.m947a(m, j.get(pVar.m781n(), C2934j.m939i(m.m772g().m786i(), null)));
        }
        if (pVar.m787h("User-Agent") == null) {
            m.m771h("User-Agent", C2977j.m642a());
        }
        return m.m772g();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m991B() {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.C2928g.m991B():void");
    }

    /* renamed from: C */
    public void m990C(C2943k kVar) {
        CookieHandler j = this.f12351a.m809j();
        if (j != null) {
            j.put(this.f12361k.m781n(), C2934j.m939i(kVar, null));
        }
    }

    /* renamed from: D */
    public C2928g m989D(RouteException routeException) {
        C2939n nVar = this.f12354d;
        if (!(nVar == null || this.f12352b == null)) {
            m971i(nVar, routeException.getLastConnectException());
        }
        C2939n nVar2 = this.f12354d;
        if (nVar2 == null && this.f12352b == null) {
            return null;
        }
        if ((nVar2 != null && !nVar2.m928d()) || !m958v(routeException)) {
            return null;
        }
        return new C2928g(this.f12351a, this.f12361k, this.f12360j, this.f12367q, this.f12368r, m974f(), this.f12354d, this.f12365o, this.f12356f);
    }

    /* renamed from: E */
    public C2928g m988E(IOException iOException) {
        return m987F(iOException, this.f12365o);
    }

    /* renamed from: F */
    public C2928g m987F(IOException iOException, Sink sink) {
        C2939n nVar = this.f12354d;
        if (!(nVar == null || this.f12352b == null)) {
            m971i(nVar, iOException);
        }
        boolean z = sink == null || (sink instanceof C2938m);
        C2939n nVar2 = this.f12354d;
        if (nVar2 == null && this.f12352b == null) {
            return null;
        }
        if ((nVar2 != null && !nVar2.m928d()) || !m957w(iOException) || !z) {
            return null;
        }
        return new C2928g(this.f12351a, this.f12361k, this.f12360j, this.f12367q, this.f12368r, m974f(), this.f12354d, (C2938m) sink, this.f12356f);
    }

    /* renamed from: G */
    public void m986G() {
        AbstractC2941p pVar = this.f12357g;
        if (!(pVar == null || this.f12352b == null)) {
            pVar.mo915b();
        }
        this.f12352b = null;
    }

    /* renamed from: H */
    public boolean m985H(C2946l lVar) {
        C2946l j = this.f12361k.m785j();
        return j.m864q().equals(lVar.m864q()) && j.m855z() == lVar.m855z() && j.m883D().equals(lVar.m883D());
    }

    /* renamed from: I */
    public void m984I() {
        C2959r.C2961b bVar;
        C2938m mVar;
        if (this.f12370t == null) {
            if (this.f12357g == null) {
                C2954p y = m955y(this.f12361k);
                AbstractC2966c f = AbstractC2965b.f12498b.mo699f(this.f12351a);
                C2959r a = f != null ? f.m689a(y) : null;
                C2913b c = new C2913b.C2915b(System.currentTimeMillis(), y, a).m1037c();
                this.f12370t = c;
                this.f12362l = c.f12302a;
                this.f12363m = c.f12303b;
                if (f != null) {
                    f.m686d(c);
                }
                if (a != null && this.f12363m == null) {
                    C2975i.m657c(a.m752k());
                }
                if (this.f12362l != null) {
                    if (this.f12352b == null) {
                        m972h();
                    }
                    this.f12357g = AbstractC2965b.f12498b.mo696i(this.f12352b, this);
                    if (this.f12367q && m954z() && this.f12365o == null) {
                        long d = C2934j.m944d(y);
                        if (!this.f12360j) {
                            this.f12357g.mo914c(this.f12362l);
                            mVar = this.f12357g.mo916a(this.f12362l, d);
                        } else if (d > 2147483647L) {
                            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                        } else if (d != -1) {
                            this.f12357g.mo914c(this.f12362l);
                            this.f12365o = new C2938m((int) d);
                            return;
                        } else {
                            mVar = new C2938m();
                        }
                        this.f12365o = mVar;
                        return;
                    }
                    return;
                }
                if (this.f12352b != null) {
                    AbstractC2965b.f12498b.mo695j(this.f12351a.m811h(), this.f12352b);
                    this.f12352b = null;
                }
                C2959r rVar = this.f12363m;
                if (rVar != null) {
                    bVar = rVar.m742u();
                    bVar.m715y(this.f12361k);
                    bVar.m717w(m983J(this.f12356f));
                    bVar.m726n(m983J(this.f12363m));
                } else {
                    bVar = new C2959r.C2961b();
                    bVar.m715y(this.f12361k);
                    bVar.m717w(m983J(this.f12356f));
                    bVar.m716x(Protocol.HTTP_1_1);
                    bVar.m723q(504);
                    bVar.m719u("Unsatisfiable Request (only-if-cached)");
                    bVar.m728l(f12350u);
                }
                this.f12364n = bVar.m727m();
                this.f12364n = m982K(this.f12364n);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: M */
    public void m980M() {
        if (this.f12358h == -1) {
            this.f12358h = System.currentTimeMillis();
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
        if (r4 != null) goto L_0x0009;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.squareup.okhttp.C2861f m974f() {
        /*
            r3 = this;
            r0 = r3
            okio.BufferedSink r0 = r0.f12366p
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0010
        L_0x0009:
            r0 = r4
            com.squareup.okhttp.p089u.C2975i.m657c(r0)
            goto L_0x001c
        L_0x0010:
            r0 = r3
            okio.Sink r0 = r0.f12365o
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            goto L_0x0009
        L_0x001c:
            r0 = r3
            com.squareup.okhttp.r r0 = r0.f12364n
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x003c
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0035
            r0 = r4
            java.net.Socket r0 = r0.m1282m()
            com.squareup.okhttp.p089u.C2975i.m656d(r0)
        L_0x0035:
            r0 = r3
            r1 = 0
            r0.f12352b = r1
            r0 = 0
            return r0
        L_0x003c:
            r0 = r4
            com.squareup.okhttp.s r0 = r0.m752k()
            com.squareup.okhttp.p089u.C2975i.m657c(r0)
            r0 = r3
            com.squareup.okhttp.internal.http.p r0 = r0.f12357g
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x006d
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            if (r0 == 0) goto L_0x006d
            r0 = r4
            boolean r0 = r0.mo910g()
            if (r0 != 0) goto L_0x006d
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            java.net.Socket r0 = r0.m1282m()
            com.squareup.okhttp.p089u.C2975i.m656d(r0)
            r0 = r3
            r1 = 0
            r0.f12352b = r1
            r0 = 0
            return r0
        L_0x006d:
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0085
            com.squareup.okhttp.u.b r0 = com.squareup.okhttp.p089u.AbstractC2965b.f12498b
            r1 = r4
            boolean r0 = r0.mo702c(r1)
            if (r0 != 0) goto L_0x0085
            r0 = r3
            r1 = 0
            r0.f12352b = r1
        L_0x0085:
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            r4 = r0
            r0 = r3
            r1 = 0
            r0.f12352b = r1
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.C2928g.m974f():com.squareup.okhttp.f");
    }

    /* renamed from: l */
    public void m968l() {
        try {
            AbstractC2941p pVar = this.f12357g;
            if (pVar != null) {
                pVar.mo912e(this);
            } else {
                C2861f fVar = this.f12352b;
                if (fVar != null) {
                    AbstractC2965b.f12498b.mo701d(fVar, this);
                }
            }
        } catch (IOException e) {
        }
    }

    /* renamed from: m */
    public C2954p m967m() {
        String p;
        C2946l C;
        if (this.f12364n != null) {
            Proxy b = m961s() != null ? m961s().m710b() : this.f12351a.m804o();
            int n = this.f12364n.m749n();
            if (n != 307 && n != 308) {
                if (n != 401) {
                    if (n != 407) {
                        switch (n) {
                            case 300:
                            case 301:
                            case 302:
                            case 303:
                                break;
                            default:
                                return null;
                        }
                    } else if (b.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                }
                return C2934j.m941g(this.f12351a.m814e(), this.f12364n, b);
            } else if (!this.f12361k.m783l().equals("GET") && !this.f12361k.m783l().equals(OkHttpUtils.METHOD.HEAD)) {
                return null;
            }
            if (!this.f12351a.m808k() || (p = this.f12364n.m747p("Location")) == null || (C = this.f12361k.m785j().m884C(p)) == null) {
                return null;
            }
            if (!C.m883D().equals(this.f12361k.m785j().m883D()) && !this.f12351a.m807l()) {
                return null;
            }
            C2954p.C2956b m = this.f12361k.m782m();
            if (C2932h.m950b(this.f12361k.m783l())) {
                m.m770i("GET", null);
                m.m769j("Transfer-Encoding");
                m.m769j("Content-Length");
                m.m769j(MIME.CONTENT_TYPE);
            }
            if (!m985H(C)) {
                m.m769j("Authorization");
            }
            m.m768k(C);
            return m.m772g();
        }
        throw new IllegalStateException();
    }

    /* renamed from: n */
    public BufferedSink m966n() {
        BufferedSink bufferedSink;
        BufferedSink bufferedSink2 = this.f12366p;
        if (bufferedSink2 != null) {
            return bufferedSink2;
        }
        Sink q = m963q();
        if (q != null) {
            bufferedSink = Okio.buffer(q);
            this.f12366p = bufferedSink;
        } else {
            bufferedSink = null;
        }
        return bufferedSink;
    }

    /* renamed from: o */
    public C2861f m965o() {
        return this.f12352b;
    }

    /* renamed from: p */
    public C2954p m964p() {
        return this.f12361k;
    }

    /* renamed from: q */
    public Sink m963q() {
        if (this.f12370t != null) {
            return this.f12365o;
        }
        throw new IllegalStateException();
    }

    /* renamed from: r */
    public C2959r m962r() {
        C2959r rVar = this.f12364n;
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException();
    }

    /* renamed from: s */
    public C2963t m961s() {
        return this.f12355e;
    }

    /* renamed from: u */
    public boolean m959u() {
        return this.f12364n != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public boolean m954z() {
        return C2932h.m950b(this.f12361k.m783l());
    }
}
