package p236s9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import p011aa.AbstractC0054g;
import p011aa.AbstractC0055h;
import p011aa.AbstractC0074y;
import p011aa.C0062o;
import p011aa.C0067r;
import p011aa.C0069t;
import p011aa.C0075z;
import p134j4.C3248s0;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4116o;
import p204p9.AbstractC4125t;
import p204p9.C4080a;
import p204p9.C4084b0;
import p204p9.C4099e0;
import p204p9.C4102g;
import p204p9.C4106i;
import p204p9.C4108j;
import p204p9.C4120q;
import p204p9.C4121r;
import p204p9.C4123s;
import p204p9.C4128v;
import p204p9.C4135y;
import p204p9.EnumC4131w;
import p214q9.AbstractC4169a;
import p214q9.C4171c;
import p246t9.AbstractC4433c;
import p246t9.C4436e;
import p246t9.C4437f;
import p257u9.C4554a;
import p268v9.C4663c;
import p268v9.C4664d;
import p268v9.C4667f;
import p268v9.C4684o;
import p268v9.C4688p;
import p290x9.C4945f;
import p310z9.C5119d;
/* renamed from: s9.c */
/* loaded from: classes2-dex2jar.jar:s9/c.class */
public final class C4335c extends C4667f.AbstractC4670c {

    /* renamed from: b */
    public final C4106i f13485b;

    /* renamed from: c */
    public final C4099e0 f13486c;

    /* renamed from: d */
    public Socket f13487d;

    /* renamed from: e */
    public Socket f13488e;

    /* renamed from: f */
    public C4120q f13489f;

    /* renamed from: g */
    public EnumC4131w f13490g;

    /* renamed from: h */
    public C4667f f13491h;

    /* renamed from: i */
    public AbstractC0055h f13492i;

    /* renamed from: j */
    public AbstractC0054g f13493j;

    /* renamed from: k */
    public boolean f13494k;

    /* renamed from: l */
    public int f13495l;

    /* renamed from: m */
    public int f13496m = 1;

    /* renamed from: n */
    public final List<Reference<C4338e>> f13497n = new ArrayList();

    /* renamed from: o */
    public long f13498o = Long.MAX_VALUE;

    public C4335c(C4106i c4106i, C4099e0 c4099e0) {
        this.f13485b = c4106i;
        this.f13486c = c4099e0;
    }

    @Override // p268v9.C4667f.AbstractC4670c
    /* renamed from: a */
    public void mo637a(C4667f c4667f) {
        synchronized (this.f13485b) {
            this.f13496m = c4667f.m641o();
        }
    }

    @Override // p268v9.C4667f.AbstractC4670c
    /* renamed from: b */
    public void mo636b(C4684o c4684o) throws IOException {
        c4684o.m621c(5);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0130 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0249 A[EDGE_INSN: B:99:0x0249->B:79:0x0249 ?: BREAK  , SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1093c(int r9, int r10, int r11, int r12, boolean r13, p204p9.AbstractC4097e r14, p204p9.AbstractC4116o r15) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p236s9.C4335c.m1093c(int, int, int, int, boolean, p9.e, p9.o):void");
    }

    /* renamed from: d */
    public final void m1092d(int i, int i2, AbstractC4097e abstractC4097e, AbstractC4116o abstractC4116o) throws IOException {
        C4099e0 c4099e0 = this.f13486c;
        Proxy proxy = c4099e0.f12876b;
        this.f13487d = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? c4099e0.f12875a.f12787c.createSocket() : new Socket(proxy);
        Objects.requireNonNull(this.f13486c);
        Objects.requireNonNull(abstractC4116o);
        this.f13487d.setSoTimeout(i2);
        try {
            C4945f.f15078a.mo215g(this.f13487d, this.f13486c.f12877c, i);
            try {
                this.f13492i = new C0069t(C0062o.m8823h(this.f13487d));
                this.f13493j = new C0067r(C0062o.m8826e(this.f13487d));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            StringBuilder m8752j = C0082b.m8752j("Failed to connect to ");
            m8752j.append(this.f13486c.f12877c);
            ConnectException connectException = new ConnectException(m8752j.toString());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* renamed from: e */
    public final void m1091e(int i, int i2, int i3, AbstractC4097e abstractC4097e, AbstractC4116o abstractC4116o) throws IOException {
        C4135y.C4136a c4136a = new C4135y.C4136a();
        c4136a.m1357e(this.f13486c.f12875a.f12785a);
        c4136a.m1359c("CONNECT", null);
        c4136a.m1360b("Host", C4171c.m1323m(this.f13486c.f12875a.f12785a, true));
        c4136a.m1360b("Proxy-Connection", "Keep-Alive");
        c4136a.m1360b("User-Agent", "okhttp/3.12.1");
        C4135y m1361a = c4136a.m1361a();
        C4084b0.C4085a c4085a = new C4084b0.C4085a();
        c4085a.f12810a = m1361a;
        c4085a.f12811b = EnumC4131w.HTTP_1_1;
        c4085a.f12812c = 407;
        c4085a.f12813d = "Preemptive Authenticate";
        c4085a.f12816g = C4171c.f13146c;
        c4085a.f12820k = -1L;
        c4085a.f12821l = -1L;
        C4121r.C4122a c4122a = c4085a.f12815f;
        Objects.requireNonNull(c4122a);
        C4121r.m1403a("Proxy-Authenticate");
        C4121r.m1402b("OkHttp-Preemptive", "Proxy-Authenticate");
        c4122a.m1392d("Proxy-Authenticate");
        c4122a.f12953a.add("Proxy-Authenticate");
        c4122a.f12953a.add("OkHttp-Preemptive");
        c4085a.m1434b();
        Objects.requireNonNull(this.f13486c.f12875a.f12788d);
        C4123s c4123s = m1361a.f13041a;
        m1092d(i, i2, abstractC4097e, abstractC4116o);
        String str = "CONNECT " + C4171c.m1323m(c4123s, true) + " HTTP/1.1";
        AbstractC0055h abstractC0055h = this.f13492i;
        AbstractC0054g abstractC0054g = this.f13493j;
        C4554a c4554a = new C4554a(null, null, abstractC0055h, abstractC0054g);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        abstractC0055h.mo610b().mo8771g(i2, timeUnit);
        this.f13493j.mo612b().mo8771g(i3, timeUnit);
        c4554a.m839k(m1361a.f13043c, str);
        abstractC0054g.flush();
        C4084b0.C4085a mo651f = c4554a.mo651f(false);
        mo651f.f12810a = m1361a;
        C4084b0 m1434b = mo651f.m1434b();
        ?? m933a = C4436e.m933a(m1434b);
        char c = m933a;
        if (m933a == -1) {
            c = 0;
        }
        AbstractC0074y m842h = c4554a.m842h(c);
        C4171c.m1316t(m842h, Api.BaseClientBuilder.API_PRIORITY_OTHER, timeUnit);
        ((C4554a.C4560f) m842h).close();
        int i4 = m1434b.f12799c;
        if (i4 == 200) {
            if (this.f13492i.mo8807a().mo8798v() && this.f13493j.mo8807a().mo8798v()) {
                return;
            }
            throw new IOException("TLS tunnel buffered too many bytes!");
        } else if (i4 == 407) {
            Objects.requireNonNull(this.f13486c.f12875a.f12788d);
            throw new IOException("Failed to authenticate with proxy");
        } else {
            StringBuilder m8752j = C0082b.m8752j("Unexpected response code for CONNECT: ");
            m8752j.append(m1434b.f12799c);
            throw new IOException(m8752j.toString());
        }
    }

    /* renamed from: f */
    public final void m1090f(C4334b c4334b, int i, AbstractC4097e abstractC4097e, AbstractC4116o abstractC4116o) throws IOException {
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket;
        SSLSocket sSLSocket2;
        EnumC4131w enumC4131w = EnumC4131w.HTTP_1_1;
        C4080a c4080a = this.f13486c.f12875a;
        if (c4080a.f12793i == null) {
            List<EnumC4131w> list = c4080a.f12789e;
            EnumC4131w enumC4131w2 = EnumC4131w.H2_PRIOR_KNOWLEDGE;
            if (!list.contains(enumC4131w2)) {
                this.f13488e = this.f13487d;
                this.f13490g = enumC4131w;
                return;
            }
            this.f13488e = this.f13487d;
            this.f13490g = enumC4131w2;
            m1086j(i);
            return;
        }
        Objects.requireNonNull(abstractC4116o);
        C4080a c4080a2 = this.f13486c.f12875a;
        SSLSocketFactory sSLSocketFactory = c4080a2.f12793i;
        SSLSocket sSLSocket3 = null;
        try {
            try {
                Socket socket = this.f13487d;
                C4123s c4123s = c4080a2.f12785a;
                sSLSocket2 = (SSLSocket) sSLSocketFactory.createSocket(socket, c4123s.f12958d, c4123s.f12959e, true);
            } catch (AssertionError e2) {
                e = e2;
                sSLSocket = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            C4108j m1094a = c4334b.m1094a(sSLSocket2);
            if (m1094a.f12920b) {
                C4945f.f15078a.mo216f(sSLSocket2, c4080a2.f12785a.f12958d, c4080a2.f12789e);
            }
            sSLSocket2.startHandshake();
            SSLSession session = sSLSocket2.getSession();
            C4120q m1404a = C4120q.m1404a(session);
            if (!c4080a2.f12794j.verify(c4080a2.f12785a.f12958d, session)) {
                X509Certificate x509Certificate = (X509Certificate) m1404a.f12950c.get(0);
                throw new SSLPeerUnverifiedException("Hostname " + c4080a2.f12785a.f12958d + " not verified:\n    certificate: " + C4102g.m1419b(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C5119d.m3a(x509Certificate));
            }
            c4080a2.f12795k.m1420a(c4080a2.f12785a.f12958d, m1404a.f12950c);
            String str = null;
            if (m1094a.f12920b) {
                str = C4945f.f15078a.mo213i(sSLSocket2);
            }
            this.f13488e = sSLSocket2;
            this.f13492i = new C0069t(C0062o.m8823h(sSLSocket2));
            this.f13493j = new C0067r(C0062o.m8826e(this.f13488e));
            this.f13489f = m1404a;
            EnumC4131w enumC4131w3 = enumC4131w;
            if (str != null) {
                enumC4131w3 = EnumC4131w.m1368a(str);
            }
            this.f13490g = enumC4131w3;
            C4945f.f15078a.mo221a(sSLSocket2);
            if (this.f13490g != EnumC4131w.HTTP_2) {
                return;
            }
            m1086j(i);
        } catch (AssertionError e3) {
            sSLSocket = sSLSocket2;
            e = e3;
            if (!C4171c.m1318r(e)) {
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
                C4945f.f15078a.mo221a(sSLSocket3);
            }
            C4171c.m1331e(sSLSocket3);
            throw th;
        }
    }

    /* renamed from: g */
    public boolean m1089g(C4080a c4080a, @Nullable C4099e0 c4099e0) {
        if (this.f13497n.size() >= this.f13496m || this.f13494k) {
            return false;
        }
        AbstractC4169a abstractC4169a = AbstractC4169a.f13142a;
        C4080a c4080a2 = this.f13486c.f12875a;
        Objects.requireNonNull((C4128v.C4129a) abstractC4169a);
        if (!c4080a2.m1437a(c4080a)) {
            return false;
        }
        if (c4080a.f12785a.f12958d.equals(this.f13486c.f12875a.f12785a.f12958d)) {
            return true;
        }
        if (this.f13491h == null || c4099e0 == null || c4099e0.f12876b.type() != Proxy.Type.DIRECT || this.f13486c.f12876b.type() != Proxy.Type.DIRECT || !this.f13486c.f12877c.equals(c4099e0.f12877c) || c4099e0.f12875a.f12794j != C5119d.f15486a || !m1085k(c4080a.f12785a)) {
            return false;
        }
        try {
            c4080a.f12795k.m1420a(c4080a.f12785a.f12958d, this.f13489f.f12950c);
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    /* renamed from: h */
    public boolean m1088h() {
        return this.f13491h != null;
    }

    /* renamed from: i */
    public AbstractC4433c m1087i(C4128v c4128v, AbstractC4125t.AbstractC4126a abstractC4126a, C4338e c4338e) throws SocketException {
        if (this.f13491h != null) {
            return new C4664d(c4128v, abstractC4126a, c4338e, this.f13491h);
        }
        C4437f c4437f = (C4437f) abstractC4126a;
        this.f13488e.setSoTimeout(c4437f.f13797j);
        C0075z mo610b = this.f13492i.mo610b();
        long j = c4437f.f13797j;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        mo610b.mo8771g(j, timeUnit);
        this.f13493j.mo612b().mo8771g(c4437f.f13798k, timeUnit);
        return new C4554a(c4128v, c4338e, this.f13492i, this.f13493j);
    }

    /* renamed from: j */
    public final void m1086j(int i) throws IOException {
        int m2511a;
        this.f13488e.setSoTimeout(0);
        C4667f.C4669b c4669b = new C4667f.C4669b(true);
        Socket socket = this.f13488e;
        String str = this.f13486c.f12875a.f12785a.f12958d;
        AbstractC0055h abstractC0055h = this.f13492i;
        AbstractC0054g abstractC0054g = this.f13493j;
        c4669b.f14425a = socket;
        c4669b.f14426b = str;
        c4669b.f14427c = abstractC0055h;
        c4669b.f14428d = abstractC0054g;
        c4669b.f14429e = this;
        c4669b.f14430f = i;
        C4667f c4667f = new C4667f(c4669b);
        this.f13491h = c4667f;
        C4688p c4688p = c4667f.f14419r;
        synchronized (c4688p) {
            if (c4688p.f14493e) {
                throw new IOException("closed");
            }
            if (c4688p.f14490b) {
                Logger logger = C4688p.f14488g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(C4171c.m1324l(">> CONNECTION %s", C4663c.f14384a.mo8788h()));
                }
                c4688p.f14489a.mo8814z((byte[]) C4663c.f14384a.f123a.clone());
                c4688p.f14489a.flush();
            }
        }
        C4688p c4688p2 = c4667f.f14419r;
        C3248s0 c3248s0 = c4667f.f14415n;
        synchronized (c4688p2) {
            if (c4688p2.f14493e) {
                throw new IOException("closed");
            }
            c4688p2.m601l(0, Integer.bitCount(c3248s0.f10959a) * 6, (byte) 4, (byte) 0);
            int i2 = 0;
            while (i2 < 10) {
                if (((1 << i2) & c3248s0.f10959a) != 0) {
                    c4688p2.f14489a.mo8817m(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                    c4688p2.f14489a.mo8816q(((int[]) c3248s0.f10960b)[i2]);
                }
                i2++;
            }
            c4688p2.f14489a.flush();
        }
        if (c4667f.f14415n.m2511a() != 65535) {
            c4667f.f14419r.m605A(0, m2511a - 65535);
        }
        new Thread(c4667f.f14420s).start();
    }

    /* renamed from: k */
    public boolean m1085k(C4123s c4123s) {
        int i = c4123s.f12959e;
        C4123s c4123s2 = this.f13486c.f12875a.f12785a;
        if (i != c4123s2.f12959e) {
            return false;
        }
        if (c4123s.f12958d.equals(c4123s2.f12958d)) {
            return true;
        }
        C4120q c4120q = this.f13489f;
        boolean z = false;
        if (c4120q != null) {
            z = false;
            if (C5119d.f15486a.m1c(c4123s.f12958d, (X509Certificate) c4120q.f12950c.get(0))) {
                z = true;
            }
        }
        return z;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Connection{");
        m8752j.append(this.f13486c.f12875a.f12785a.f12958d);
        m8752j.append(":");
        m8752j.append(this.f13486c.f12875a.f12785a.f12959e);
        m8752j.append(", proxy=");
        m8752j.append(this.f13486c.f12876b);
        m8752j.append(" hostAddress=");
        m8752j.append(this.f13486c.f12877c);
        m8752j.append(" cipherSuite=");
        C4120q c4120q = this.f13489f;
        m8752j.append(c4120q != null ? c4120q.f12949b : "none");
        m8752j.append(" protocol=");
        m8752j.append(this.f13490g);
        m8752j.append('}');
        return m8752j.toString();
    }
}
