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

        C2930b(C2928g c2928g, BufferedSource bufferedSource, AbstractC2912a abstractC2912a, BufferedSink bufferedSink) {
            this.f12372c = bufferedSource;
            this.f12373d = abstractC2912a;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.http.g$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/g$c.class */
    public class C2931c implements AbstractC2949m.AbstractC2950a {

        /* renamed from: a */
        private final int f12375a;

        /* renamed from: b */
        private int f12376b;

        C2931c(int i, C2954p c2954p) {
            C2928g.this = r4;
            this.f12375a = i;
        }

        /* renamed from: a */
        public C2861f m953a() {
            return C2928g.this.f12352b;
        }

        /* renamed from: b */
        public C2959r m952b(C2954p c2954p) {
            this.f12376b++;
            if (this.f12375a > 0) {
                AbstractC2949m abstractC2949m = C2928g.this.f12351a.m796y().get(this.f12375a - 1);
                C2852a m711a = m953a().m1283l().m711a();
                if (!c2954p.m785j().m864q().equals(m711a.m1319j()) || c2954p.m785j().m855z() != m711a.m1318k()) {
                    throw new IllegalStateException("network interceptor " + abstractC2949m + " must retain the same host and port");
                } else if (this.f12376b > 1) {
                    throw new IllegalStateException("network interceptor " + abstractC2949m + " must call proceed() exactly once");
                }
            }
            if (this.f12375a < C2928g.this.f12351a.m796y().size()) {
                C2928g c2928g = C2928g.this;
                C2931c c2931c = new C2931c(this.f12375a + 1, c2954p);
                AbstractC2949m abstractC2949m2 = c2928g.f12351a.m796y().get(this.f12375a);
                C2959r m831a = abstractC2949m2.m831a(c2931c);
                if (c2931c.f12376b == 1) {
                    return m831a;
                }
                throw new IllegalStateException("network interceptor " + abstractC2949m2 + " must call proceed() exactly once");
            }
            C2928g.this.f12357g.mo914c(c2954p);
            C2928g.this.f12362l = c2954p;
            if (C2928g.this.m954z() && c2954p.m789f() != null) {
                BufferedSink buffer = Okio.buffer(C2928g.this.f12357g.mo916a(c2954p, c2954p.m789f().mo764a()));
                c2954p.m789f().mo763d(buffer);
                buffer.close();
            }
            C2959r m992A = C2928g.this.m992A();
            int m749n = m992A.m749n();
            if ((m749n != 204 && m749n != 205) || m992A.m752k().mo713p() <= 0) {
                return m992A;
            }
            throw new ProtocolException("HTTP " + m749n + " had non-zero Content-Length: " + m992A.m752k().mo713p());
        }
    }

    public C2928g(C2952o c2952o, C2954p c2954p, boolean z, boolean z2, boolean z3, C2861f c2861f, C2939n c2939n, C2938m c2938m, C2959r c2959r) {
        C2963t c2963t;
        this.f12351a = c2952o;
        this.f12361k = c2954p;
        this.f12360j = z;
        this.f12367q = z2;
        this.f12368r = z3;
        this.f12352b = c2861f;
        this.f12354d = c2939n;
        this.f12365o = c2938m;
        this.f12356f = c2959r;
        if (c2861f != null) {
            AbstractC2965b.f12498b.mo691n(c2861f, this);
            c2963t = c2861f.m1283l();
        } else {
            c2963t = null;
        }
        this.f12355e = c2963t;
    }

    /* renamed from: A */
    public C2959r m992A() {
        this.f12357g.finishRequest();
        C2959r.C2961b mo911f = this.f12357g.mo911f();
        mo911f.m715y(this.f12362l);
        mo911f.m722r(this.f12352b.m1286i());
        mo911f.m721s(C2934j.f12382c, Long.toString(this.f12358h));
        mo911f.m721s(C2934j.f12383d, Long.toString(System.currentTimeMillis()));
        C2959r m727m = mo911f.m727m();
        C2959r c2959r = m727m;
        if (!this.f12368r) {
            C2959r.C2961b m742u = m727m.m742u();
            m742u.m728l(this.f12357g.mo909h(m727m));
            c2959r = m742u.m727m();
        }
        AbstractC2965b.f12498b.mo690o(this.f12352b, c2959r.m741v());
        return c2959r;
    }

    /* renamed from: J */
    private static C2959r m983J(C2959r c2959r) {
        C2959r c2959r2 = c2959r;
        if (c2959r != null) {
            c2959r2 = c2959r;
            if (c2959r.m752k() != null) {
                C2959r.C2961b m742u = c2959r.m742u();
                m742u.m728l(null);
                c2959r2 = m742u.m727m();
            }
        }
        return c2959r2;
    }

    /* renamed from: K */
    private C2959r m982K(C2959r c2959r) {
        C2959r c2959r2 = c2959r;
        if (this.f12359i) {
            if (!"gzip".equalsIgnoreCase(this.f12364n.m747p("Content-Encoding"))) {
                c2959r2 = c2959r;
            } else if (c2959r.m752k() == null) {
                return c2959r;
            } else {
                GzipSource gzipSource = new GzipSource(c2959r.m752k().mo712x());
                C2943k.C2945b m898e = c2959r.m745r().m898e();
                m898e.m888h("Content-Encoding");
                m898e.m888h("Content-Length");
                C2943k m891e = m898e.m891e();
                C2959r.C2961b m742u = c2959r.m742u();
                m742u.m720t(m891e);
                m742u.m728l(new C2936k(m891e, Okio.buffer((Source) gzipSource)));
                c2959r2 = m742u.m727m();
            }
        }
        return c2959r2;
    }

    /* renamed from: L */
    private static boolean m981L(C2959r c2959r, C2959r c2959r2) {
        Date m900c;
        if (c2959r2.m749n() == 304) {
            return true;
        }
        Date m900c2 = c2959r.m745r().m900c("Last-Modified");
        return (m900c2 == null || (m900c = c2959r2.m745r().m900c("Last-Modified")) == null || m900c.getTime() >= m900c2.getTime()) ? false : true;
    }

    /* renamed from: e */
    private C2959r m975e(AbstractC2912a abstractC2912a, C2959r c2959r) {
        Sink body;
        if (abstractC2912a != null && (body = abstractC2912a.body()) != null) {
            C2930b c2930b = new C2930b(this, c2959r.m752k().mo712x(), abstractC2912a, Okio.buffer(body));
            C2959r.C2961b m742u = c2959r.m742u();
            m742u.m728l(new C2936k(c2959r.m745r(), Okio.buffer((Source) c2930b)));
            return m742u.m727m();
        }
        return c2959r;
    }

    /* renamed from: g */
    private static C2943k m973g(C2943k c2943k, C2943k c2943k2) {
        C2943k.C2945b c2945b = new C2943k.C2945b();
        int m897f = c2943k.m897f();
        for (int i = 0; i < m897f; i++) {
            String m899d = c2943k.m899d(i);
            String m896g = c2943k.m896g(i);
            if ((!"Warning".equalsIgnoreCase(m899d) || !m896g.startsWith("1")) && (!C2934j.m942f(m899d) || c2943k2.m902a(m899d) == null)) {
                c2945b.m894b(m899d, m896g);
            }
        }
        int m897f2 = c2943k2.m897f();
        for (int i2 = 0; i2 < m897f2; i2++) {
            String m899d2 = c2943k2.m899d(i2);
            if (!"Content-Length".equalsIgnoreCase(m899d2) && C2934j.m942f(m899d2)) {
                c2945b.m894b(m899d2, c2943k2.m896g(i2));
            }
        }
        return c2945b.m891e();
    }

    /* renamed from: h */
    private void m972h() {
        if (this.f12352b == null) {
            if (this.f12354d == null) {
                C2852a m970j = m970j(this.f12351a, this.f12362l);
                this.f12353c = m970j;
                try {
                    this.f12354d = C2939n.m930b(m970j, this.f12362l, this.f12351a);
                } catch (IOException e) {
                    throw new RequestException(e);
                }
            }
            C2861f m969k = m969k();
            this.f12352b = m969k;
            AbstractC2965b.f12498b.mo700e(this.f12351a, m969k, this, this.f12362l);
            this.f12355e = this.f12352b.m1283l();
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: i */
    private void m971i(C2939n c2939n, IOException iOException) {
        if (AbstractC2965b.f12498b.mo694k(this.f12352b) > 0) {
            return;
        }
        c2939n.m931a(this.f12352b.m1283l(), iOException);
    }

    /* renamed from: j */
    private static C2852a m970j(C2952o c2952o, C2954p c2954p) {
        C2858e c2858e;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (c2954p.m784k()) {
            sSLSocketFactory = c2952o.m799u();
            hostnameVerifier = c2952o.m806m();
            c2858e = c2952o.m813f();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c2858e = null;
        }
        return new C2852a(c2954p.m785j().m864q(), c2954p.m785j().m855z(), c2952o.m800t(), sSLSocketFactory, hostnameVerifier, c2858e, c2952o.m814e(), c2952o.m804o(), c2952o.m805n(), c2952o.m810i(), c2952o.m803q());
    }

    /* renamed from: k */
    private C2861f m969k() {
        C2861f m1267c;
        C2862g m811h = this.f12351a.m811h();
        while (true) {
            m1267c = m811h.m1267c(this.f12353c);
            if (m1267c == null) {
                try {
                    return new C2861f(m811h, this.f12354d.m924h());
                } catch (IOException e) {
                    throw new RouteException(e);
                }
            } else if (this.f12362l.m783l().equals("GET") || AbstractC2965b.f12498b.mo698g(m1267c)) {
                break;
            } else {
                C2975i.m656d(m1267c.m1282m());
            }
        }
        return m1267c;
    }

    /* renamed from: t */
    public static boolean m960t(C2959r c2959r) {
        if (c2959r.m740w().m783l().equals(OkHttpUtils.METHOD.HEAD)) {
            return false;
        }
        int m749n = c2959r.m749n();
        return (((m749n >= 100 && m749n < 200) || m749n == 204 || m749n == 304) && C2934j.m943e(c2959r) == -1 && !"chunked".equalsIgnoreCase(c2959r.m747p("Transfer-Encoding"))) ? false : true;
    }

    /* renamed from: v */
    private boolean m958v(RouteException routeException) {
        if (!this.f12351a.m801s()) {
            return false;
        }
        IOException lastConnectException = routeException.getLastConnectException();
        if ((lastConnectException instanceof ProtocolException) || (lastConnectException instanceof InterruptedIOException)) {
            return false;
        }
        return (!(lastConnectException instanceof SSLHandshakeException) || !(lastConnectException.getCause() instanceof CertificateException)) && !(lastConnectException instanceof SSLPeerUnverifiedException);
    }

    /* renamed from: w */
    private boolean m957w(IOException iOException) {
        return this.f12351a.m801s() && !(iOException instanceof ProtocolException) && !(iOException instanceof InterruptedIOException);
    }

    /* renamed from: x */
    private void m956x() {
        AbstractC2966c mo699f = AbstractC2965b.f12498b.mo699f(this.f12351a);
        if (mo699f == null) {
            return;
        }
        if (C2913b.m1040a(this.f12364n, this.f12362l)) {
            this.f12369s = mo699f.m687c(m983J(this.f12364n));
        } else if (!C2932h.m951a(this.f12362l.m783l())) {
        } else {
            try {
                mo699f.m688b(this.f12362l);
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: y */
    private C2954p m955y(C2954p c2954p) {
        C2954p.C2956b m782m = c2954p.m782m();
        if (c2954p.m787h("Host") == null) {
            m782m.m771h("Host", C2975i.m653g(c2954p.m785j()));
        }
        C2861f c2861f = this.f12352b;
        if ((c2861f == null || c2861f.m1284k() != Protocol.HTTP_1_0) && c2954p.m787h("Connection") == null) {
            m782m.m771h("Connection", "Keep-Alive");
        }
        if (c2954p.m787h("Accept-Encoding") == null) {
            this.f12359i = true;
            m782m.m771h("Accept-Encoding", "gzip");
        }
        CookieHandler m809j = this.f12351a.m809j();
        if (m809j != null) {
            C2934j.m947a(m782m, m809j.get(c2954p.m781n(), C2934j.m939i(m782m.m772g().m786i(), null)));
        }
        if (c2954p.m787h("User-Agent") == null) {
            m782m.m771h("User-Agent", C2977j.m642a());
        }
        return m782m.m772g();
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
    public void m990C(C2943k c2943k) {
        CookieHandler m809j = this.f12351a.m809j();
        if (m809j != null) {
            m809j.put(this.f12361k.m781n(), C2934j.m939i(c2943k, null));
        }
    }

    /* renamed from: D */
    public C2928g m989D(RouteException routeException) {
        C2939n c2939n = this.f12354d;
        if (c2939n != null && this.f12352b != null) {
            m971i(c2939n, routeException.getLastConnectException());
        }
        C2939n c2939n2 = this.f12354d;
        if (c2939n2 == null && this.f12352b == null) {
            return null;
        }
        if ((c2939n2 != null && !c2939n2.m928d()) || !m958v(routeException)) {
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
        C2939n c2939n = this.f12354d;
        if (c2939n != null && this.f12352b != null) {
            m971i(c2939n, iOException);
        }
        boolean z = sink == null || (sink instanceof C2938m);
        C2939n c2939n2 = this.f12354d;
        if (c2939n2 == null && this.f12352b == null) {
            return null;
        }
        if ((c2939n2 != null && !c2939n2.m928d()) || !m957w(iOException) || !z) {
            return null;
        }
        return new C2928g(this.f12351a, this.f12361k, this.f12360j, this.f12367q, this.f12368r, m974f(), this.f12354d, (C2938m) sink, this.f12356f);
    }

    /* renamed from: G */
    public void m986G() {
        AbstractC2941p abstractC2941p = this.f12357g;
        if (abstractC2941p != null && this.f12352b != null) {
            abstractC2941p.mo915b();
        }
        this.f12352b = null;
    }

    /* renamed from: H */
    public boolean m985H(C2946l c2946l) {
        C2946l m785j = this.f12361k.m785j();
        return m785j.m864q().equals(c2946l.m864q()) && m785j.m855z() == c2946l.m855z() && m785j.m883D().equals(c2946l.m883D());
    }

    /* renamed from: I */
    public void m984I() {
        C2959r.C2961b c2961b;
        C2938m c2938m;
        if (this.f12370t != null) {
            return;
        }
        if (this.f12357g != null) {
            throw new IllegalStateException();
        }
        C2954p m955y = m955y(this.f12361k);
        AbstractC2966c mo699f = AbstractC2965b.f12498b.mo699f(this.f12351a);
        C2959r m689a = mo699f != null ? mo699f.m689a(m955y) : null;
        C2913b m1037c = new C2913b.C2915b(System.currentTimeMillis(), m955y, m689a).m1037c();
        this.f12370t = m1037c;
        this.f12362l = m1037c.f12302a;
        this.f12363m = m1037c.f12303b;
        if (mo699f != null) {
            mo699f.m686d(m1037c);
        }
        if (m689a != null && this.f12363m == null) {
            C2975i.m657c(m689a.m752k());
        }
        if (this.f12362l == null) {
            if (this.f12352b != null) {
                AbstractC2965b.f12498b.mo695j(this.f12351a.m811h(), this.f12352b);
                this.f12352b = null;
            }
            C2959r c2959r = this.f12363m;
            if (c2959r != null) {
                c2961b = c2959r.m742u();
                c2961b.m715y(this.f12361k);
                c2961b.m717w(m983J(this.f12356f));
                c2961b.m726n(m983J(this.f12363m));
            } else {
                c2961b = new C2959r.C2961b();
                c2961b.m715y(this.f12361k);
                c2961b.m717w(m983J(this.f12356f));
                c2961b.m716x(Protocol.HTTP_1_1);
                c2961b.m723q(504);
                c2961b.m719u("Unsatisfiable Request (only-if-cached)");
                c2961b.m728l(f12350u);
            }
            this.f12364n = c2961b.m727m();
            this.f12364n = m982K(this.f12364n);
            return;
        }
        if (this.f12352b == null) {
            m972h();
        }
        this.f12357g = AbstractC2965b.f12498b.mo696i(this.f12352b, this);
        if (!this.f12367q || !m954z() || this.f12365o != null) {
            return;
        }
        long m944d = C2934j.m944d(m955y);
        if (!this.f12360j) {
            this.f12357g.mo914c(this.f12362l);
            c2938m = this.f12357g.mo916a(this.f12362l, m944d);
        } else if (m944d > 2147483647L) {
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
        } else {
            if (m944d != -1) {
                this.f12357g.mo914c(this.f12362l);
                this.f12365o = new C2938m((int) m944d);
                return;
            }
            c2938m = new C2938m();
        }
        this.f12365o = c2938m;
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
        if (r4 != null) goto L4;
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
            if (r0 == 0) goto L10
        L9:
            r0 = r4
            com.squareup.okhttp.p089u.C2975i.m657c(r0)
            goto L1c
        L10:
            r0 = r3
            okio.Sink r0 = r0.f12365o
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1c
            goto L9
        L1c:
            r0 = r3
            com.squareup.okhttp.r r0 = r0.f12364n
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L3c
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L35
            r0 = r4
            java.net.Socket r0 = r0.m1282m()
            com.squareup.okhttp.p089u.C2975i.m656d(r0)
        L35:
            r0 = r3
            r1 = 0
            r0.f12352b = r1
            r0 = 0
            return r0
        L3c:
            r0 = r4
            com.squareup.okhttp.s r0 = r0.m752k()
            com.squareup.okhttp.p089u.C2975i.m657c(r0)
            r0 = r3
            com.squareup.okhttp.internal.http.p r0 = r0.f12357g
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L6d
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            if (r0 == 0) goto L6d
            r0 = r4
            boolean r0 = r0.mo910g()
            if (r0 != 0) goto L6d
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            java.net.Socket r0 = r0.m1282m()
            com.squareup.okhttp.p089u.C2975i.m656d(r0)
            r0 = r3
            r1 = 0
            r0.f12352b = r1
            r0 = 0
            return r0
        L6d:
            r0 = r3
            com.squareup.okhttp.f r0 = r0.f12352b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L85
            com.squareup.okhttp.u.b r0 = com.squareup.okhttp.p089u.AbstractC2965b.f12498b
            r1 = r4
            boolean r0 = r0.mo702c(r1)
            if (r0 != 0) goto L85
            r0 = r3
            r1 = 0
            r0.f12352b = r1
        L85:
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
            AbstractC2941p abstractC2941p = this.f12357g;
            if (abstractC2941p != null) {
                abstractC2941p.mo912e(this);
            } else {
                C2861f c2861f = this.f12352b;
                if (c2861f != null) {
                    AbstractC2965b.f12498b.mo701d(c2861f, this);
                }
            }
        } catch (IOException e) {
        }
    }

    /* renamed from: m */
    public C2954p m967m() {
        String m747p;
        C2946l m884C;
        if (this.f12364n != null) {
            Proxy m710b = m961s() != null ? m961s().m710b() : this.f12351a.m804o();
            int m749n = this.f12364n.m749n();
            if (m749n != 307 && m749n != 308) {
                if (m749n != 401) {
                    if (m749n != 407) {
                        switch (m749n) {
                            case 300:
                            case 301:
                            case 302:
                            case 303:
                                break;
                            default:
                                return null;
                        }
                    } else if (m710b.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                }
                return C2934j.m941g(this.f12351a.m814e(), this.f12364n, m710b);
            } else if (!this.f12361k.m783l().equals("GET") && !this.f12361k.m783l().equals(OkHttpUtils.METHOD.HEAD)) {
                return null;
            }
            if (!this.f12351a.m808k() || (m747p = this.f12364n.m747p("Location")) == null || (m884C = this.f12361k.m785j().m884C(m747p)) == null) {
                return null;
            }
            if (!m884C.m883D().equals(this.f12361k.m785j().m883D()) && !this.f12351a.m807l()) {
                return null;
            }
            C2954p.C2956b m782m = this.f12361k.m782m();
            if (C2932h.m950b(this.f12361k.m783l())) {
                m782m.m770i("GET", null);
                m782m.m769j("Transfer-Encoding");
                m782m.m769j("Content-Length");
                m782m.m769j(MIME.CONTENT_TYPE);
            }
            if (!m985H(m884C)) {
                m782m.m769j("Authorization");
            }
            m782m.m768k(m884C);
            return m782m.m772g();
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
        Sink m963q = m963q();
        if (m963q != null) {
            bufferedSink = Okio.buffer(m963q);
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
        C2959r c2959r = this.f12364n;
        if (c2959r != null) {
            return c2959r;
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

    /* renamed from: z */
    public boolean m954z() {
        return C2932h.m950b(this.f12361k.m783l());
    }
}
