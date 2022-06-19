package okhttp3.internal.connection;

import com.google.android.gms.common.api.Api;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC1973i;
import okhttp3.AbstractC2082p;
import okhttp3.AbstractC2092t;
import okhttp3.C1952a;
import okhttp3.C1955ab;
import okhttp3.C1959ad;
import okhttp3.C1968g;
import okhttp3.C2072j;
import okhttp3.C2074k;
import okhttp3.C2086q;
import okhttp3.C2089s;
import okhttp3.C2098w;
import okhttp3.C2104z;
import okhttp3.EnumC2101x;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.C1999c;
import okhttp3.internal.C2018d;
import okhttp3.internal.http2.C2042e;
import okhttp3.internal.http2.C2044f;
import okhttp3.internal.http2.C2062h;
import okhttp3.internal.http2.EnumC2036a;
import okhttp3.internal.p092b.AbstractC1988c;
import okhttp3.internal.p092b.C1991e;
import okhttp3.internal.p093c.C2002a;
import okhttp3.internal.p095e.C2030f;
import okhttp3.internal.p096f.C2034d;
import p000a.AbstractC0007d;
import p000a.AbstractC0008e;
import p000a.AbstractC0026s;
import p000a.C0015l;
/* renamed from: okhttp3.internal.connection.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/c.class */
public final class C2012c extends C2044f.AbstractC2052b implements AbstractC1973i {

    /* renamed from: a */
    public boolean f5034a;

    /* renamed from: b */
    public int f5035b;

    /* renamed from: c */
    public int f5036c = 1;

    /* renamed from: d */
    public final List<Reference<C2016f>> f5037d = new ArrayList();

    /* renamed from: e */
    public long f5038e = Long.MAX_VALUE;

    /* renamed from: g */
    private final C2072j f5039g;

    /* renamed from: h */
    private final C1959ad f5040h;

    /* renamed from: i */
    private Socket f5041i;

    /* renamed from: j */
    private Socket f5042j;

    /* renamed from: k */
    private C2086q f5043k;

    /* renamed from: l */
    private EnumC2101x f5044l;

    /* renamed from: m */
    private C2044f f5045m;

    /* renamed from: n */
    private AbstractC0008e f5046n;

    /* renamed from: o */
    private AbstractC0007d f5047o;

    public C2012c(C2072j c2072j, C1959ad c1959ad) {
        this.f5039g = c2072j;
        this.f5040h = c1959ad;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: a */
    private C2104z m2303a(int i, int i2, C2104z c2104z, C2089s c2089s) {
        C1955ab m2480a;
        String str = "CONNECT " + C1999c.m2337a(c2089s, true) + " HTTP/1.1";
        do {
            C2002a c2002a = new C2002a(null, null, this.f5046n, this.f5047o);
            this.f5046n.mo2088a().mo8029a(i, TimeUnit.MILLISECONDS);
            this.f5047o.mo2091a().mo8029a(i2, TimeUnit.MILLISECONDS);
            c2002a.m2322a(c2104z.m1820c(), str);
            c2002a.mo2173b();
            m2480a = c2002a.mo2174a(false).m2469a(c2104z).m2480a();
            ?? m2388a = C1991e.m2388a(m2480a);
            char c = m2388a;
            if (m2388a == -1) {
                c = 0;
            }
            AbstractC0026s m2320b = c2002a.m2320b(c);
            C1999c.m2333b(m2320b, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, TimeUnit.MILLISECONDS);
            m2320b.close();
            int m2491b = m2480a.m2491b();
            if (m2491b == 200) {
                if (this.f5046n.mo8072c().mo8070e() && this.f5047o.mo8072c().mo8070e()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            } else if (m2491b != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + m2480a.m2491b());
            } else {
                c2104z = this.f5040h.m2459a().m2505d().mo2453a(this.f5040h, m2480a);
                if (c2104z == null) {
                    throw new IOException("Failed to authenticate with proxy");
                }
            }
        } while (!"close".equalsIgnoreCase(m2480a.m2493a("Connection")));
        return c2104z;
    }

    /* renamed from: a */
    private void m2305a(int i, int i2, int i3, AbstractC1966e abstractC1966e, AbstractC2082p abstractC2082p) {
        C2104z m2292e = m2292e();
        C2089s m1823a = m2292e.m1823a();
        for (int i4 = 0; i4 < 21; i4++) {
            m2304a(i, i2, abstractC1966e, abstractC2082p);
            m2292e = m2303a(i2, i3, m2292e, m1823a);
            if (m2292e == null) {
                return;
            }
            C1999c.m2341a(this.f5041i);
            this.f5041i = null;
            this.f5047o = null;
            this.f5046n = null;
            abstractC2082p.m1989a(abstractC1966e, this.f5040h.m2457c(), this.f5040h.m2458b(), null);
        }
    }

    /* renamed from: a */
    private void m2304a(int i, int i2, AbstractC1966e abstractC1966e, AbstractC2082p abstractC2082p) {
        Proxy m2458b = this.f5040h.m2458b();
        this.f5041i = (m2458b.type() == Proxy.Type.DIRECT || m2458b.type() == Proxy.Type.HTTP) ? this.f5040h.m2459a().m2506c().createSocket() : new Socket(m2458b);
        abstractC2082p.m1990a(abstractC1966e, this.f5040h.m2457c(), m2458b);
        this.f5041i.setSoTimeout(i2);
        try {
            C2030f.m2224c().mo2234a(this.f5041i, this.f5040h.m2457c(), i);
            try {
                this.f5046n = C0015l.m8098a(C0015l.m8092b(this.f5041i));
                this.f5047o = C0015l.m8099a(C0015l.m8093a(this.f5041i));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f5040h.m2457c());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* renamed from: a */
    private void m2300a(C2011b c2011b) {
        SSLSocket sSLSocket;
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket2;
        C1952a m2459a = this.f5040h.m2459a();
        try {
            try {
                sSLSocket = (SSLSocket) m2459a.m2500i().createSocket(this.f5041i, m2459a.m2509a().m1934g(), m2459a.m2509a().m1933h(), true);
            } catch (Throwable th2) {
                th = th2;
                sSLSocket = null;
            }
        } catch (AssertionError e2) {
            e = e2;
            sSLSocket2 = null;
        }
        try {
            C2074k m2309a = c2011b.m2309a(sSLSocket);
            if (m2309a.m2025d()) {
                C2030f.m2224c().mo2231a(sSLSocket, m2459a.m2509a().m1934g(), m2459a.m2504e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            if (!m2302a(session)) {
                throw new IOException("a valid ssl session was not established");
            }
            C2086q m1972a = C2086q.m1972a(session);
            if (!m2459a.m2499j().verify(m2459a.m2509a().m1934g(), session)) {
                X509Certificate x509Certificate = (X509Certificate) m1972a.m1971b().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + m2459a.m2509a().m1934g() + " not verified:\n    certificate: " + C1968g.m2434a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C2034d.m2216a(x509Certificate));
            }
            m2459a.m2498k().m2435a(m2459a.m2509a().m1934g(), m1972a.m1971b());
            String str = null;
            if (m2309a.m2025d()) {
                str = C2030f.m2224c().mo2232a(sSLSocket);
            }
            this.f5042j = sSLSocket;
            this.f5046n = C0015l.m8098a(C0015l.m8092b(this.f5042j));
            this.f5047o = C0015l.m8099a(C0015l.m8093a(this.f5042j));
            this.f5043k = m1972a;
            this.f5044l = str != null ? EnumC2101x.m1838a(str) : EnumC2101x.HTTP_1_1;
            if (sSLSocket == null) {
                return;
            }
            C2030f.m2224c().mo2226b(sSLSocket);
        } catch (AssertionError e3) {
            sSLSocket2 = sSLSocket;
            e = e3;
            if (!C1999c.m2352a(e)) {
                SSLSocket sSLSocket3 = sSLSocket2;
                throw e;
            }
            SSLSocket sSLSocket4 = sSLSocket2;
            SSLSocket sSLSocket5 = sSLSocket2;
            SSLSocket sSLSocket6 = sSLSocket2;
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            if (sSLSocket != null) {
                C2030f.m2224c().mo2226b(sSLSocket);
            }
            C1999c.m2341a((Socket) sSLSocket);
            throw th;
        }
    }

    /* renamed from: a */
    private void m2299a(C2011b c2011b, int i, AbstractC1966e abstractC1966e, AbstractC2082p abstractC2082p) {
        if (this.f5040h.m2459a().m2500i() == null) {
            this.f5044l = EnumC2101x.HTTP_1_1;
            this.f5042j = this.f5041i;
            return;
        }
        abstractC2082p.m1982b(abstractC1966e);
        m2300a(c2011b);
        abstractC2082p.m1985a(abstractC1966e, this.f5043k);
        if (this.f5044l != EnumC2101x.HTTP_2) {
            return;
        }
        this.f5042j.setSoTimeout(0);
        this.f5045m = new C2044f.C2051a(true).m2141a(this.f5042j, this.f5040h.m2459a().m2509a().m1934g(), this.f5046n, this.f5047o).m2140a(this).m2142a(i).m2143a();
        this.f5045m.m2149c();
    }

    /* renamed from: a */
    private boolean m2302a(SSLSession sSLSession) {
        return !"NONE".equals(sSLSession.getProtocol()) && !"SSL_NULL_WITH_NULL_NULL".equals(sSLSession.getCipherSuite());
    }

    /* renamed from: e */
    private C2104z m2292e() {
        return new C2104z.C2105a().m1809a(this.f5040h.m2459a().m2509a()).m1813a("Host", C1999c.m2337a(this.f5040h.m2459a().m2509a(), true)).m1813a("Proxy-Connection", "Keep-Alive").m1813a(AbstractC1468a.HEADER_USER_AGENT, C2018d.m2260a()).m1815a();
    }

    /* renamed from: a */
    public C1959ad m2307a() {
        return this.f5040h;
    }

    /* renamed from: a */
    public AbstractC1988c m2297a(C2098w c2098w, AbstractC2092t.AbstractC2093a abstractC2093a, C2016f c2016f) {
        C2044f c2044f = this.f5045m;
        if (c2044f != null) {
            return new C2042e(c2098w, abstractC2093a, c2016f, c2044f);
        }
        this.f5042j.setSoTimeout(abstractC2093a.mo1899c());
        this.f5046n.mo2088a().mo8029a(abstractC2093a.mo1899c(), TimeUnit.MILLISECONDS);
        this.f5047o.mo2091a().mo8029a(abstractC2093a.mo1898d(), TimeUnit.MILLISECONDS);
        return new C2002a(c2098w, c2016f, this.f5046n, this.f5047o);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ab A[Catch: IOException -> 0x0150, TRY_LEAVE, TryCatch #1 {IOException -> 0x0150, blocks: (B:15:0x00a1, B:17:0x00ab), top: B:59:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0145 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c7 A[EDGE_INSN: B:67:0x01c7->B:53:0x01c7 ?: BREAK  ] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2306a(int r8, int r9, int r10, int r11, boolean r12, okhttp3.AbstractC1966e r13, okhttp3.AbstractC2082p r14) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.C2012c.m2306a(int, int, int, int, boolean, okhttp3.e, okhttp3.p):void");
    }

    @Override // okhttp3.internal.http2.C2044f.AbstractC2052b
    /* renamed from: a */
    public void mo2139a(C2044f c2044f) {
        synchronized (this.f5039g) {
            this.f5036c = c2044f.m2170a();
        }
    }

    @Override // okhttp3.internal.http2.C2044f.AbstractC2052b
    /* renamed from: a */
    public void mo2138a(C2062h c2062h) {
        c2062h.m2106a(EnumC2036a.REFUSED_STREAM);
    }

    /* renamed from: a */
    public boolean m2301a(C1952a c1952a, @Nullable C1959ad c1959ad) {
        if (this.f5037d.size() >= this.f5036c || this.f5034a || !AbstractC1974a.f4904a.mo1853a(this.f5040h.m2459a(), c1952a)) {
            return false;
        }
        if (c1952a.m2509a().m1934g().equals(m2307a().m2459a().m2509a().m1934g())) {
            return true;
        }
        if (this.f5045m == null || c1959ad == null || c1959ad.m2458b().type() != Proxy.Type.DIRECT || this.f5040h.m2458b().type() != Proxy.Type.DIRECT || !this.f5040h.m2457c().equals(c1959ad.m2457c()) || c1959ad.m2459a().m2499j() != C2034d.f5106a || !m2298a(c1952a.m2509a())) {
            return false;
        }
        try {
            c1952a.m2498k().m2435a(c1952a.m2509a().m1934g(), m2294c().m1971b());
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m2298a(C2089s c2089s) {
        if (c2089s.m1933h() != this.f5040h.m2459a().m2509a().m1933h()) {
            return false;
        }
        boolean z = true;
        if (!c2089s.m1934g().equals(this.f5040h.m2459a().m2509a().m1934g())) {
            z = this.f5043k != null && C2034d.f5106a.m2217a(c2089s.m1934g(), (X509Certificate) this.f5043k.m1971b().get(0));
        }
        return z;
    }

    /* renamed from: a */
    public boolean m2296a(boolean z) {
        if (this.f5042j.isClosed() || this.f5042j.isInputShutdown() || this.f5042j.isOutputShutdown()) {
            return false;
        }
        C2044f c2044f = this.f5045m;
        if (c2044f != null) {
            return !c2044f.m2146d();
        }
        if (!z) {
            return true;
        }
        try {
            int soTimeout = this.f5042j.getSoTimeout();
            this.f5042j.setSoTimeout(1);
            if (this.f5046n.mo8070e()) {
                this.f5042j.setSoTimeout(soTimeout);
                return false;
            }
            this.f5042j.setSoTimeout(soTimeout);
            return true;
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    /* renamed from: b */
    public Socket m2295b() {
        return this.f5042j;
    }

    /* renamed from: c */
    public C2086q m2294c() {
        return this.f5043k;
    }

    /* renamed from: d */
    public boolean m2293d() {
        return this.f5045m != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f5040h.m2459a().m2509a().m1934g());
        sb.append(":");
        sb.append(this.f5040h.m2459a().m2509a().m1933h());
        sb.append(", proxy=");
        sb.append(this.f5040h.m2458b());
        sb.append(" hostAddress=");
        sb.append(this.f5040h.m2457c());
        sb.append(" cipherSuite=");
        C2086q c2086q = this.f5043k;
        sb.append(c2086q != null ? c2086q.m1973a() : "none");
        sb.append(" protocol=");
        sb.append(this.f5044l);
        sb.append('}');
        return sb.toString();
    }
}
