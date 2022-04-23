package com.squareup.okhttp;

import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.internal.framed.C2871c;
import com.squareup.okhttp.internal.http.AbstractC2941p;
import com.squareup.okhttp.internal.http.C2916c;
import com.squareup.okhttp.internal.http.C2918e;
import com.squareup.okhttp.internal.http.C2928g;
import com.squareup.okhttp.internal.http.C2933i;
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
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
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

    public C2861f(C2862g gVar, C2963t tVar) {
        this.f12094a = gVar;
        this.f12095b = tVar;
    }

    /* renamed from: e */
    private void m1290e(int i, int i2, int i3, C2954p pVar, C2964a aVar) {
        this.f12096c.setSoTimeout(i2);
        C2970g.m673f().mo670d(this.f12096c, this.f12095b.m709c(), i);
        if (this.f12095b.f12490a.m1320i() != null) {
            m1289f(i2, i3, pVar, aVar);
        }
        Protocol protocol = this.f12100g;
        if (protocol == Protocol.SPDY_3 || protocol == Protocol.HTTP_2) {
            this.f12096c.setSoTimeout(0);
            C2871c.C2879h hVar = new C2871c.C2879h(this.f12095b.f12490a.f12062b, true, this.f12096c);
            hVar.m1189h(this.f12100g);
            C2871c g = hVar.m1190g();
            this.f12099f = g;
            g.m1199x0();
            return;
        }
        this.f12098e = new C2918e(this.f12094a, this, this.f12096c);
    }

    /* renamed from: f */
    private void m1289f(int i, int i2, C2954p pVar, C2964a aVar) {
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket;
        if (this.f12095b.m708d()) {
            m1288g(i, i2, pVar);
        }
        C2852a a = this.f12095b.m711a();
        SSLSocket sSLSocket2 = null;
        SSLSocket sSLSocket3 = null;
        String str = null;
        try {
            try {
                sSLSocket = (SSLSocket) a.m1320i().createSocket(this.f12096c, a.m1319j(), a.m1318k(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            C2864h a2 = aVar.m707a(sSLSocket);
            if (a2.m1254i()) {
                C2970g.m673f().mo666c(sSLSocket, a.m1319j(), a.m1324e());
            }
            sSLSocket.startHandshake();
            C2942j b = C2942j.m907b(sSLSocket.getSession());
            if (a.m1325d().verify(a.m1319j(), sSLSocket.getSession())) {
                a.m1327b().m1300a(a.m1319j(), b.m904e());
                if (a2.m1254i()) {
                    str = C2970g.m673f().mo665h(sSLSocket);
                }
                this.f12100g = str != null ? Protocol.get(str) : Protocol.HTTP_1_1;
                this.f12102i = b;
                this.f12096c = sSLSocket;
                if (sSLSocket != null) {
                    C2970g.m673f().mo667a(sSLSocket);
                    return;
                }
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) b.m904e().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + a.m1319j() + " not verified:\n    certificate: " + C2858e.m1298c(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C2981a.m632a(x509Certificate));
        } catch (AssertionError e3) {
            e = e3;
            sSLSocket3 = sSLSocket;
            if (C2975i.m647m(e)) {
                throw new IOException(e);
            }
            throw e;
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                C2970g.m673f().mo667a(sSLSocket2);
            }
            C2975i.m656d(sSLSocket2);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1288g(int r7, int r8, com.squareup.okhttp.C2954p r9) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.C2861f.m1288g(int, int, com.squareup.okhttp.p):void");
    }

    /* renamed from: h */
    private C2954p m1287h(C2954p pVar) {
        C2946l.C2948b bVar = new C2946l.C2948b();
        bVar.m836s("https");
        bVar.m847h(pVar.m785j().m864q());
        bVar.m840o(pVar.m785j().m855z());
        C2946l a = bVar.m854a();
        C2954p.C2956b bVar2 = new C2954p.C2956b();
        bVar2.m768k(a);
        bVar2.m771h("Host", C2975i.m653g(a));
        bVar2.m771h("Proxy-Connection", "Keep-Alive");
        String h = pVar.m787h("User-Agent");
        if (h != null) {
            bVar2.m771h("User-Agent", h);
        }
        String h2 = pVar.m787h("Proxy-Authorization");
        if (h2 != null) {
            bVar2.m771h("Proxy-Authorization", h2);
        }
        return bVar2.m772g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1293b(Object obj) {
        if (!m1278q()) {
            synchronized (this.f12094a) {
                if (this.f12104k == obj) {
                    this.f12104k = null;
                    Socket socket = this.f12096c;
                    if (socket != null) {
                        socket.close();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    void m1292c(int i, int i2, int i3, C2954p pVar, List<C2864h> list, boolean z) {
        Socket socket;
        if (!this.f12097d) {
            C2964a aVar = new C2964a(list);
            Proxy b = this.f12095b.m710b();
            C2852a a = this.f12095b.m711a();
            if (this.f12095b.f12490a.m1320i() != null || list.contains(C2864h.f12114h)) {
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
                        if (!z || !aVar.m706b(e)) {
                            throw routeException;
                        }
                    }
                    if (!(b.type() == Proxy.Type.DIRECT || b.type() == Proxy.Type.HTTP)) {
                        socket = new Socket(b);
                        this.f12096c = socket;
                        m1290e(i, i2, i3, pVar, aVar);
                        this.f12097d = true;
                    }
                    socket = a.m1321h().createSocket();
                    this.f12096c = socket;
                    m1290e(i, i2, i3, pVar, aVar);
                    this.f12097d = true;
                }
                return;
            }
            throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
        }
        throw new IllegalStateException("already connected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m1291d(C2952o oVar, Object obj, C2954p pVar) {
        m1272w(obj);
        if (!m1279p()) {
            m1292c(oVar.m812g(), oVar.m802r(), oVar.m798v(), pVar, this.f12095b.f12490a.m1326c(), oVar.m801s());
            if (m1278q()) {
                oVar.m811h().m1263g(this);
            }
            oVar.m795z().m662a(m1283l());
        }
        m1270y(oVar.m802r(), oVar.m798v());
    }

    /* renamed from: i */
    public C2942j m1286i() {
        return this.f12102i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public long m1285j() {
        C2871c cVar = this.f12099f;
        return cVar == null ? this.f12101h : cVar.m1214k0();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m1281n() {
        this.f12103j++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m1280o() {
        return !this.f12096c.isClosed() && !this.f12096c.isInputShutdown() && !this.f12096c.isOutputShutdown();
    }

    /* renamed from: p */
    boolean m1279p() {
        return this.f12097d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public boolean m1278q() {
        return this.f12099f != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m1277r() {
        C2871c cVar = this.f12099f;
        return cVar == null || cVar.m1211n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public boolean m1276s() {
        C2918e eVar = this.f12098e;
        if (eVar != null) {
            return eVar.m1010p();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public AbstractC2941p m1275t(C2928g gVar) {
        return this.f12099f != null ? new C2916c(gVar, this.f12099f) : new C2933i(gVar, this.f12098e);
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
        C2942j jVar = this.f12102i;
        sb.append(jVar != null ? jVar.m908a() : "none");
        sb.append(" protocol=");
        sb.append(this.f12100g);
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public int m1274u() {
        return this.f12103j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m1273v() {
        if (this.f12099f == null) {
            this.f12101h = System.nanoTime();
            return;
        }
        throw new IllegalStateException("framedConnection != null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m1272w(Object obj) {
        if (!m1278q()) {
            synchronized (this.f12094a) {
                if (this.f12104k == null) {
                    this.f12104k = obj;
                } else {
                    throw new IllegalStateException("Connection already has an owner!");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        if (!this.f12097d) {
            throw new IllegalStateException("setTimeouts - not connected");
        } else if (this.f12098e != null) {
            try {
                this.f12096c.setSoTimeout(i);
                this.f12098e.m1001y(i, i2);
            } catch (IOException e) {
                throw new RouteException(e);
            }
        }
    }
}
