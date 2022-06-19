package p148k7;

import com.koushikdutta.async.AsyncSSLException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import p124i4.C3102d;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
import p159l7.AbstractC3517f;
import p181n7.C3765m;
import p255u7.C4534a;
import p266v7.AbstractC4653a;
/* renamed from: k7.c */
/* loaded from: classes2-dex2jar.jar:k7/c.class */
public class C3331c implements AbstractC4653a, AbstractC3330b {

    /* renamed from: t */
    public static SSLContext f11297t;

    /* renamed from: a */
    public AbstractC3356j f11298a;

    /* renamed from: b */
    public C3357k f11299b;

    /* renamed from: c */
    public boolean f11300c;

    /* renamed from: d */
    public SSLEngine f11301d;

    /* renamed from: e */
    public boolean f11302e;

    /* renamed from: f */
    public String f11303f;

    /* renamed from: g */
    public boolean f11304g;

    /* renamed from: h */
    public HostnameVerifier f11305h;

    /* renamed from: i */
    public AbstractC3338g f11306i;

    /* renamed from: j */
    public X509Certificate[] f11307j;

    /* renamed from: k */
    public AbstractC3517f f11308k;

    /* renamed from: l */
    public AbstractC3513c f11309l;

    /* renamed from: m */
    public boolean f11310m;

    /* renamed from: n */
    public boolean f11311n;

    /* renamed from: o */
    public Exception f11312o;

    /* renamed from: q */
    public final AbstractC3513c f11314q;

    /* renamed from: s */
    public AbstractC3510a f11316s;

    /* renamed from: p */
    public final C3358l f11313p = new C3358l();

    /* renamed from: r */
    public C3358l f11315r = new C3358l();

    /* renamed from: k7.c$a */
    /* loaded from: classes2-dex2jar.jar:k7/c$a.class */
    public static final class C3332a implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                if (x509Certificate != null && x509Certificate.getCriticalExtensionOIDs() != null) {
                    x509Certificate.getCriticalExtensionOIDs().remove("2.5.29.15");
                }
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* renamed from: k7.c$b */
    /* loaded from: classes2-dex2jar.jar:k7/c$b.class */
    public static final class C3333b implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* renamed from: k7.c$c */
    /* loaded from: classes2-dex2jar.jar:k7/c$c.class */
    public class C3334c implements AbstractC3517f {
        public C3334c() {
            C3331c.this = r4;
        }

        @Override // p159l7.AbstractC3517f
        /* renamed from: f */
        public void mo148f() {
            AbstractC3517f abstractC3517f = C3331c.this.f11308k;
            if (abstractC3517f != null) {
                abstractC3517f.mo148f();
            }
        }
    }

    /* renamed from: k7.c$d */
    /* loaded from: classes2-dex2jar.jar:k7/c$d.class */
    public class C3335d implements AbstractC3510a {
        public C3335d() {
            C3331c.this = r4;
        }

        @Override // p159l7.AbstractC3510a
        /* renamed from: a */
        public void mo1098a(Exception exc) {
            AbstractC3510a abstractC3510a;
            C3331c c3331c = C3331c.this;
            if (c3331c.f11311n) {
                return;
            }
            c3331c.f11311n = true;
            c3331c.f11312o = exc;
            if (c3331c.f11313p.m2344i() || (abstractC3510a = C3331c.this.f11316s) == null) {
                return;
            }
            abstractC3510a.mo1098a(exc);
        }
    }

    /* renamed from: k7.c$e */
    /* loaded from: classes2-dex2jar.jar:k7/c$e.class */
    public class C3336e implements AbstractC3513c {

        /* renamed from: a */
        public final C4534a f11319a;

        /* renamed from: b */
        public final C3358l f11320b = new C3358l();

        public C3336e() {
            C3331c.this = r5;
            C4534a c4534a = new C4534a();
            c4534a.m862b(8192);
            this.f11319a = c4534a;
        }

        /* JADX WARN: Removed duplicated region for block: B:70:0x0161 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0056 A[SYNTHETIC] */
        @Override // p159l7.AbstractC3513c
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1099c(p148k7.AbstractC3360m r5, p148k7.C3358l r6) {
            /*
                Method dump skipped, instructions count: 421
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p148k7.C3331c.C3336e.mo1099c(k7.m, k7.l):void");
        }
    }

    /* renamed from: k7.c$f */
    /* loaded from: classes2-dex2jar.jar:k7/c$f.class */
    public class RunnableC3337f implements Runnable {
        public RunnableC3337f() {
            C3331c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC3517f abstractC3517f = C3331c.this.f11308k;
            if (abstractC3517f != null) {
                abstractC3517f.mo148f();
            }
        }
    }

    /* renamed from: k7.c$g */
    /* loaded from: classes2-dex2jar.jar:k7/c$g.class */
    public interface AbstractC3338g {
    }

    static {
        try {
            f11297t = SSLContext.getInstance("Default");
        } catch (Exception e) {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                f11297t = sSLContext;
                sSLContext.init(null, new TrustManager[]{new C3332a()}, null);
            } catch (Exception e2) {
                e.printStackTrace();
                e2.printStackTrace();
            }
        }
        try {
            SSLContext.getInstance("TLS").init(null, new TrustManager[]{new C3333b()}, null);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public C3331c(AbstractC3356j abstractC3356j, String str, int i, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z) {
        C3336e c3336e = new C3336e();
        this.f11314q = c3336e;
        this.f11298a = abstractC3356j;
        this.f11305h = hostnameVerifier;
        this.f11310m = z;
        this.f11301d = sSLEngine;
        this.f11303f = str;
        sSLEngine.setUseClientMode(z);
        C3357k c3357k = new C3357k(abstractC3356j);
        this.f11299b = c3357k;
        c3357k.f11370d = new C3334c();
        this.f11298a.mo936h(new C3335d());
        this.f11298a.mo939b(c3336e);
    }

    @Override // p148k7.AbstractC3356j, p148k7.AbstractC3360m, p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f11298a.mo940a();
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: b */
    public void mo939b(AbstractC3513c abstractC3513c) {
        this.f11309l = abstractC3513c;
    }

    /* renamed from: c */
    public final void m2368c(SSLEngineResult.HandshakeStatus handshakeStatus) {
        SSLException e;
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
            this.f11301d.getDelegatedTask().run();
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
            mo1479k(this.f11315r);
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
            this.f11314q.mo1099c(this, new C3358l());
        }
        try {
            if (this.f11302e) {
                return;
            }
            if (this.f11301d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING && this.f11301d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.FINISHED) {
                return;
            }
            if (this.f11310m) {
                boolean z = false;
                try {
                    this.f11307j = (X509Certificate[]) this.f11301d.getSession().getPeerCertificates();
                    String str = this.f11303f;
                    if (str != null) {
                        HostnameVerifier hostnameVerifier = this.f11305h;
                        if (hostnameVerifier == null) {
                            new StrictHostnameVerifier().verify(this.f11303f, StrictHostnameVerifier.getCNs(this.f11307j[0]), StrictHostnameVerifier.getDNSSubjectAlts(this.f11307j[0]));
                        } else if (!hostnameVerifier.verify(str, this.f11301d.getSession())) {
                            throw new SSLException("hostname <" + this.f11303f + "> has been denied");
                        }
                    }
                    e = null;
                    z = true;
                } catch (SSLException e2) {
                    e = e2;
                }
                this.f11302e = true;
                if (!z) {
                    AsyncSSLException asyncSSLException = new AsyncSSLException(e);
                    m2366o(asyncSSLException);
                    throw asyncSSLException;
                }
            } else {
                this.f11302e = true;
            }
            ((C3765m) this.f11306i).m1814a(null, this);
            this.f11306i = null;
            this.f11298a.mo1480g(null);
            mo940a().m2359g(new RunnableC3337f());
            m2367n();
        } catch (Exception e3) {
            m2366o(e3);
        }
    }

    @Override // p148k7.AbstractC3360m
    public void close() {
        this.f11298a.close();
    }

    @Override // p266v7.AbstractC4653a
    /* renamed from: d */
    public AbstractC3356j mo680d() {
        return this.f11298a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: e */
    public boolean mo938e() {
        return this.f11298a.mo938e();
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: f */
    public String mo937f() {
        return null;
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: g */
    public void mo1480g(AbstractC3510a abstractC3510a) {
        this.f11298a.mo1480g(abstractC3510a);
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: h */
    public void mo936h(AbstractC3510a abstractC3510a) {
        this.f11316s = abstractC3510a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: i */
    public AbstractC3513c mo935i() {
        return this.f11309l;
    }

    @Override // p148k7.AbstractC3362o
    public boolean isOpen() {
        return this.f11298a.isOpen();
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: j */
    public void mo1267j() {
        this.f11298a.mo1267j();
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a2 A[SYNTHETIC] */
    @Override // p148k7.AbstractC3362o
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1479k(p148k7.C3358l r5) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p148k7.C3331c.mo1479k(k7.l):void");
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: m */
    public void mo1478m(AbstractC3517f abstractC3517f) {
        this.f11308k = abstractC3517f;
    }

    /* renamed from: n */
    public void m2367n() {
        AbstractC3510a abstractC3510a;
        C3102d.m2623p(this, this.f11313p);
        if (!this.f11311n || this.f11313p.m2344i() || (abstractC3510a = this.f11316s) == null) {
            return;
        }
        abstractC3510a.mo1098a(this.f11312o);
    }

    /* renamed from: o */
    public final void m2366o(Exception exc) {
        AbstractC3338g abstractC3338g = this.f11306i;
        if (abstractC3338g == null) {
            AbstractC3510a abstractC3510a = this.f11316s;
            if (abstractC3510a == null) {
                return;
            }
            abstractC3510a.mo1098a(exc);
            return;
        }
        this.f11306i = null;
        this.f11298a.mo939b(new AbstractC3513c.C3514a());
        this.f11298a.mo1267j();
        this.f11298a.mo1480g(null);
        this.f11298a.close();
        ((C3765m) abstractC3338g).m1814a(exc, null);
    }
}
