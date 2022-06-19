package com.squareup.okhttp;

import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.internal.framed.C2871c;
import com.squareup.okhttp.internal.http.AbstractC2941p;
import com.squareup.okhttp.internal.http.C2916c;
import com.squareup.okhttp.internal.http.C2918e;
import com.squareup.okhttp.internal.http.C2928g;
import com.squareup.okhttp.internal.http.C2933i;
import com.squareup.okhttp.internal.http.C2934j;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.p089u.C2964a;
import com.squareup.okhttp.p089u.C2970g;
import com.squareup.okhttp.p089u.C2975i;
import com.squareup.okhttp.p089u.p091l.C2981a;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import okio.Source;
/* renamed from: com.squareup.okhttp.f */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/f.class */
public final class C2861f {

    /* renamed from: a */
    private final C2862g f12094a;

    /* renamed from: b */
    private final C2963t f12095b;

    /* renamed from: c */
    private Socket f12096c;

    /* renamed from: e */
    private C2918e f12098e;

    /* renamed from: f */
    private C2871c f12099f;

    /* renamed from: h */
    private long f12101h;

    /* renamed from: i */
    private C2942j f12102i;

    /* renamed from: j */
    private int f12103j;

    /* renamed from: k */
    private Object f12104k;

    /* renamed from: d */
    private boolean f12097d = false;

    /* renamed from: g */
    private Protocol f12100g = Protocol.HTTP_1_1;

    public C2861f(C2862g c2862g, C2963t c2963t) {
        this.f12094a = c2862g;
        this.f12095b = c2963t;
    }

    /* renamed from: e */
    private void m1290e(int i, int i2, int i3, C2954p c2954p, C2964a c2964a) {
        this.f12096c.setSoTimeout(i2);
        C2970g.m673f().mo670d(this.f12096c, this.f12095b.m709c(), i);
        if (this.f12095b.f12490a.m1320i() != null) {
            m1289f(i2, i3, c2954p, c2964a);
        }
        Protocol protocol = this.f12100g;
        if (protocol != Protocol.SPDY_3 && protocol != Protocol.HTTP_2) {
            this.f12098e = new C2918e(this.f12094a, this, this.f12096c);
            return;
        }
        this.f12096c.setSoTimeout(0);
        C2871c.C2879h c2879h = new C2871c.C2879h(this.f12095b.f12490a.f12062b, true, this.f12096c);
        c2879h.m1189h(this.f12100g);
        C2871c m1190g = c2879h.m1190g();
        this.f12099f = m1190g;
        m1190g.m1199x0();
    }

    /* renamed from: f */
    private void m1289f(int i, int i2, C2954p c2954p, C2964a c2964a) {
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket;
        SSLSocket sSLSocket2;
        if (this.f12095b.m708d()) {
            m1288g(i, i2, c2954p);
        }
        C2852a m711a = this.f12095b.m711a();
        SSLSocket sSLSocket3 = null;
        try {
            try {
                sSLSocket2 = (SSLSocket) m711a.m1320i().createSocket(this.f12096c, m711a.m1319j(), m711a.m1318k(), true);
            } catch (AssertionError e2) {
                e = e2;
                sSLSocket = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            C2864h m707a = c2964a.m707a(sSLSocket2);
            if (m707a.m1254i()) {
                C2970g.m673f().mo666c(sSLSocket2, m711a.m1319j(), m711a.m1324e());
            }
            sSLSocket2.startHandshake();
            C2942j m907b = C2942j.m907b(sSLSocket2.getSession());
            if (m711a.m1325d().verify(m711a.m1319j(), sSLSocket2.getSession())) {
                m711a.m1327b().m1300a(m711a.m1319j(), m907b.m904e());
                String str = null;
                if (m707a.m1254i()) {
                    str = C2970g.m673f().mo665h(sSLSocket2);
                }
                this.f12100g = str != null ? Protocol.get(str) : Protocol.HTTP_1_1;
                this.f12102i = m907b;
                this.f12096c = sSLSocket2;
                if (sSLSocket2 == null) {
                    return;
                }
                C2970g.m673f().mo667a(sSLSocket2);
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) m907b.m904e().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + m711a.m1319j() + " not verified:\n    certificate: " + C2858e.m1298c(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C2981a.m632a(x509Certificate));
        } catch (AssertionError e3) {
            sSLSocket = sSLSocket2;
            e = e3;
            if (!C2975i.m647m(e)) {
                SSLSocket sSLSocket4 = sSLSocket;
                throw e;
            }
            SSLSocket sSLSocket5 = sSLSocket;
            SSLSocket sSLSocket6 = sSLSocket;
            SSLSocket sSLSocket7 = sSLSocket;
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket3 = sSLSocket2;
            if (sSLSocket3 != null) {
                C2970g.m673f().mo667a(sSLSocket3);
            }
            C2975i.m656d(sSLSocket3);
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: g */
    private void m1288g(int i, int i2, C2954p c2954p) {
        C2954p m1287h = m1287h(c2954p);
        C2918e c2918e = new C2918e(this.f12094a, this, this.f12096c);
        c2918e.m1001y(i, i2);
        C2946l m785j = m1287h.m785j();
        String str = "CONNECT " + m785j.m864q() + ":" + m785j.m855z() + " HTTP/1.1";
        do {
            c2918e.m1000z(m1287h.m786i(), str);
            c2918e.m1012n();
            C2959r.C2961b m1002x = c2918e.m1002x();
            m1002x.m715y(m1287h);
            C2959r m727m = m1002x.m727m();
            ?? m943e = C2934j.m943e(m727m);
            char c = m943e;
            if (m943e == -1) {
                c = 0;
            }
            Source m1006t = c2918e.m1006t(c);
            C2975i.m645o(m1006t, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            m1006t.close();
            int m749n = m727m.m749n();
            if (m749n == 200) {
                if (c2918e.m1016j() > 0) {
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                return;
            } else if (m749n != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + m727m.m749n());
            } else {
                m1287h = C2934j.m941g(this.f12095b.m711a().m1328a(), m727m, this.f12095b.m710b());
            }
        } while (m1287h != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    /* renamed from: h */
    private C2954p m1287h(C2954p c2954p) {
        C2946l.C2948b c2948b = new C2946l.C2948b();
        c2948b.m836s("https");
        c2948b.m847h(c2954p.m785j().m864q());
        c2948b.m840o(c2954p.m785j().m855z());
        C2946l m854a = c2948b.m854a();
        C2954p.C2956b c2956b = new C2954p.C2956b();
        c2956b.m768k(m854a);
        c2956b.m771h("Host", C2975i.m653g(m854a));
        c2956b.m771h("Proxy-Connection", "Keep-Alive");
        String m787h = c2954p.m787h("User-Agent");
        if (m787h != null) {
            c2956b.m771h("User-Agent", m787h);
        }
        String m787h2 = c2954p.m787h("Proxy-Authorization");
        if (m787h2 != null) {
            c2956b.m771h("Proxy-Authorization", m787h2);
        }
        return c2956b.m772g();
    }

    /* renamed from: a */
    public boolean m1294a() {
        synchronized (this.f12094a) {
            if (this.f12104k == null) {
                return false;
            }
            this.f12104k = null;
            return true;
        }
    }

    /* renamed from: b */
    public void m1293b(Object obj) {
        if (!m1278q()) {
            synchronized (this.f12094a) {
                if (this.f12104k != obj) {
                    return;
                }
                this.f12104k = null;
                Socket socket = this.f12096c;
                if (socket == null) {
                    return;
                }
                socket.close();
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    void m1292c(int i, int i2, int i3, C2954p c2954p, List<C2864h> list, boolean z) {
        Socket socket;
        if (!this.f12097d) {
            C2964a c2964a = new C2964a(list);
            Proxy m710b = this.f12095b.m710b();
            C2852a m711a = this.f12095b.m711a();
            if (this.f12095b.f12490a.m1320i() == null && !list.contains(C2864h.f12114h)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
            }
            RouteException routeException = null;
            while (!this.f12097d) {
                try {
                } catch (IOException e) {
                    C2975i.m656d(this.f12096c);
                    this.f12096c = null;
                    if (routeException == null) {
                        routeException = new RouteException(e);
                    } else {
                        routeException.addConnectException(e);
                    }
                    if (!z || !c2964a.m706b(e)) {
                        throw routeException;
                    }
                }
                if (m710b.type() != Proxy.Type.DIRECT && m710b.type() != Proxy.Type.HTTP) {
                    socket = new Socket(m710b);
                    this.f12096c = socket;
                    m1290e(i, i2, i3, c2954p, c2964a);
                    this.f12097d = true;
                }
                socket = m711a.m1321h().createSocket();
                this.f12096c = socket;
                m1290e(i, i2, i3, c2954p, c2964a);
                this.f12097d = true;
            }
            return;
        }
        throw new IllegalStateException("already connected");
    }

    /* renamed from: d */
    public void m1291d(C2952o c2952o, Object obj, C2954p c2954p) {
        m1272w(obj);
        if (!m1279p()) {
            m1292c(c2952o.m812g(), c2952o.m802r(), c2952o.m798v(), c2954p, this.f12095b.f12490a.m1326c(), c2952o.m801s());
            if (m1278q()) {
                c2952o.m811h().m1263g(this);
            }
            c2952o.m795z().m662a(m1283l());
        }
        m1270y(c2952o.m802r(), c2952o.m798v());
    }

    /* renamed from: i */
    public C2942j m1286i() {
        return this.f12102i;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: j */
    public long m1285j() {
        C2871c c2871c = this.f12099f;
        return c2871c == null ? this.f12101h : c2871c.m1214k0();
    }

    /* renamed from: k */
    public Protocol m1284k() {
        return this.f12100g;
    }

    /* renamed from: l */
    public C2963t m1283l() {
        return this.f12095b;
    }

    /* renamed from: m */
    public Socket m1282m() {
        return this.f12096c;
    }

    /* renamed from: n */
    public void m1281n() {
        this.f12103j++;
    }

    /* renamed from: o */
    public boolean m1280o() {
        return !this.f12096c.isClosed() && !this.f12096c.isInputShutdown() && !this.f12096c.isOutputShutdown();
    }

    /* renamed from: p */
    boolean m1279p() {
        return this.f12097d;
    }

    /* renamed from: q */
    public boolean m1278q() {
        return this.f12099f != null;
    }

    /* renamed from: r */
    public boolean m1277r() {
        C2871c c2871c = this.f12099f;
        return c2871c == null || c2871c.m1211n0();
    }

    /* renamed from: s */
    public boolean m1276s() {
        C2918e c2918e = this.f12098e;
        if (c2918e != null) {
            return c2918e.m1010p();
        }
        return true;
    }

    /* renamed from: t */
    public AbstractC2941p m1275t(C2928g c2928g) {
        return this.f12099f != null ? new C2916c(c2928g, this.f12099f) : new C2933i(c2928g, this.f12098e);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f12095b.f12490a.f12062b);
        sb.append(":");
        sb.append(this.f12095b.f12490a.f12063c);
        sb.append(", proxy=");
        sb.append(this.f12095b.f12491b);
        sb.append(" hostAddress=");
        sb.append(this.f12095b.f12492c.getAddress().getHostAddress());
        sb.append(" cipherSuite=");
        C2942j c2942j = this.f12102i;
        sb.append(c2942j != null ? c2942j.m908a() : "none");
        sb.append(" protocol=");
        sb.append(this.f12100g);
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: u */
    public int m1274u() {
        return this.f12103j;
    }

    /* renamed from: v */
    public void m1273v() {
        if (this.f12099f == null) {
            this.f12101h = System.nanoTime();
            return;
        }
        throw new IllegalStateException("framedConnection != null");
    }

    /* renamed from: w */
    public void m1272w(Object obj) {
        if (m1278q()) {
            return;
        }
        synchronized (this.f12094a) {
            if (this.f12104k != null) {
                throw new IllegalStateException("Connection already has an owner!");
            }
            this.f12104k = obj;
        }
    }

    /* renamed from: x */
    public void m1271x(Protocol protocol) {
        if (protocol != null) {
            this.f12100g = protocol;
            return;
        }
        throw new IllegalArgumentException("protocol == null");
    }

    /* renamed from: y */
    void m1270y(int i, int i2) {
        if (this.f12097d) {
            if (this.f12098e == null) {
                return;
            }
            try {
                this.f12096c.setSoTimeout(i);
                this.f12098e.m1001y(i, i2);
                return;
            } catch (IOException e) {
                throw new RouteException(e);
            }
        }
        throw new IllegalStateException("setTimeouts - not connected");
    }
}
