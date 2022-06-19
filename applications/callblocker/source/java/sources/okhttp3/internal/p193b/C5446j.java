package okhttp3.internal.p193b;

import java.io.IOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.AbstractC5406ad;
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5532p;
import okhttp3.AbstractC5544u;
import okhttp3.C5399a;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5418g;
import okhttp3.C5541t;
import okhttp3.C5550x;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5466f;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
/* renamed from: okhttp3.internal.b.j */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/j.class */
public final class C5446j implements AbstractC5544u {

    /* renamed from: a */
    private final C5550x f22748a;

    /* renamed from: b */
    private final boolean f22749b;

    /* renamed from: c */
    private volatile C5466f f22750c;

    /* renamed from: d */
    private Object f22751d;

    /* renamed from: e */
    private volatile boolean f22752e;

    public C5446j(C5550x c5550x, boolean z) {
        this.f22748a = c5550x;
        this.f22749b = z;
    }

    /* renamed from: a */
    private int m683a(C5404ac c5404ac, int i) {
        String m809a = c5404ac.m809a("Retry-After");
        if (m809a != null) {
            i = m809a.matches("\\d+") ? Integer.valueOf(m809a).intValue() : Integer.MAX_VALUE;
        }
        return i;
    }

    /* renamed from: a */
    private C5399a m680a(C5541t c5541t) {
        C5418g c5418g;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (c5541t.m254c()) {
            sSLSocketFactory = this.f22748a.m189k();
            hostnameVerifier = this.f22748a.m188l();
            c5418g = this.f22748a.m187m();
        } else {
            c5418g = null;
            hostnameVerifier = null;
            sSLSocketFactory = null;
        }
        return new C5399a(c5541t.m248f(), c5541t.m247g(), this.f22748a.m191i(), this.f22748a.m190j(), sSLSocketFactory, hostnameVerifier, c5418g, this.f22748a.m185o(), this.f22748a.m195e(), this.f22748a.m179u(), this.f22748a.m178v(), this.f22748a.m194f());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e1, code lost:
        if (r0.equals("HEAD") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0136, code lost:
        if (r4.f22748a.m183q() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01eb, code lost:
        if (r5.m801h().m807b() != 408) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0216, code lost:
        if (r5.m801h().m807b() != 503) goto L66;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.C5400aa m682a(okhttp3.C5404ac r5, okhttp3.C5408ae r6) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p193b.C5446j.m682a(okhttp3.ac, okhttp3.ae):okhttp3.aa");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        if ((r8.m823d() instanceof okhttp3.internal.p193b.AbstractC5448l) == false) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m686a(java.io.IOException r5, okhttp3.internal.connection.C5466f r6, boolean r7, okhttp3.C5400aa r8) {
        /*
            r4 = this;
            r0 = 0
            r9 = r0
            r0 = r6
            r1 = r5
            r0.m593a(r1)
            r0 = r4
            okhttp3.x r0 = r0.f22748a
            boolean r0 = r0.m181s()
            if (r0 != 0) goto L19
            r0 = r9
            r10 = r0
        L16:
            r0 = r10
            return r0
        L19:
            r0 = r7
            if (r0 == 0) goto L2c
            r0 = r9
            r10 = r0
            r0 = r8
            okhttp3.ab r0 = r0.m823d()
            boolean r0 = r0 instanceof okhttp3.internal.p193b.AbstractC5448l
            if (r0 != 0) goto L16
        L2c:
            r0 = r9
            r10 = r0
            r0 = r4
            r1 = r5
            r2 = r7
            boolean r0 = r0.m685a(r1, r2)
            if (r0 == 0) goto L16
            r0 = r9
            r10 = r0
            r0 = r6
            boolean r0 = r0.m581g()
            if (r0 == 0) goto L16
            r0 = 1
            r10 = r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p193b.C5446j.m686a(java.io.IOException, okhttp3.internal.connection.f, boolean, okhttp3.aa):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        if ((r3.getCause() instanceof java.security.cert.CertificateException) == false) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m685a(java.io.IOException r3, boolean r4) {
        /*
            r2 = this;
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r3
            boolean r0 = r0 instanceof java.net.ProtocolException
            if (r0 == 0) goto L11
            r0 = r6
            r4 = r0
        Lf:
            r0 = r4
            return r0
        L11:
            r0 = r3
            boolean r0 = r0 instanceof java.io.InterruptedIOException
            if (r0 == 0) goto L2d
            r0 = r3
            boolean r0 = r0 instanceof java.net.SocketTimeoutException
            if (r0 == 0) goto L28
            r0 = r4
            if (r0 != 0) goto L28
            r0 = r5
            r4 = r0
        L25:
            goto Lf
        L28:
            r0 = 0
            r4 = r0
            goto L25
        L2d:
            r0 = r3
            boolean r0 = r0 instanceof javax.net.ssl.SSLHandshakeException
            if (r0 == 0) goto L41
            r0 = r6
            r4 = r0
            r0 = r3
            java.lang.Throwable r0 = r0.getCause()
            boolean r0 = r0 instanceof java.security.cert.CertificateException
            if (r0 != 0) goto Lf
        L41:
            r0 = r6
            r4 = r0
            r0 = r3
            boolean r0 = r0 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r0 != 0) goto Lf
            r0 = 1
            r4 = r0
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p193b.C5446j.m685a(java.io.IOException, boolean):boolean");
    }

    /* renamed from: a */
    private boolean m681a(C5404ac c5404ac, C5541t c5541t) {
        C5541t m827a = c5404ac.m810a().m827a();
        return m827a.m248f().equals(c5541t.m248f()) && m827a.m247g() == c5541t.m247g() && m827a.m257b().equals(c5541t.m257b());
    }

    @Override // okhttp3.AbstractC5544u
    /* renamed from: a */
    public C5404ac mo216a(AbstractC5544u.AbstractC5545a abstractC5545a) {
        C5404ac c5404ac;
        C5400aa m682a;
        C5466f c5466f;
        C5400aa mo215a = abstractC5545a.mo215a();
        C5443g c5443g = (C5443g) abstractC5545a;
        AbstractC5415e m692h = c5443g.m692h();
        AbstractC5532p m691i = c5443g.m691i();
        C5466f c5466f2 = new C5466f(this.f22748a.m184p(), m680a(mo215a.m827a()), m692h, m691i, this.f22751d);
        this.f22750c = c5466f2;
        C5404ac c5404ac2 = null;
        int i = 0;
        C5400aa c5400aa = mo215a;
        while (!this.f22752e) {
            try {
                try {
                    C5404ac m696a = c5443g.m696a(c5400aa, c5466f2, null, null);
                    c5404ac = m696a;
                    if (c5404ac2 != null) {
                        c5404ac = m696a.m802g().m783c(c5404ac2.m802g().m789a((AbstractC5406ad) null).m797a()).m797a();
                    }
                    m682a = m682a(c5404ac, c5466f2.m587b());
                } catch (IOException e) {
                    if (!m686a(e, c5466f2, !(e instanceof ConnectionShutdownException), c5400aa)) {
                        throw e;
                    }
                } catch (RouteException e2) {
                    if (!m686a(e2.m633a(), c5466f2, false, c5400aa)) {
                        throw e2.m633a();
                    }
                }
                if (m682a == null) {
                    if (!this.f22749b) {
                        c5466f2.m584d();
                    }
                    return c5404ac;
                }
                C5449c.m673a(c5404ac.m803f());
                i++;
                if (i > 20) {
                    c5466f2.m584d();
                    throw new ProtocolException("Too many follow-up requests: " + i);
                } else if (m682a.m823d() instanceof AbstractC5448l) {
                    c5466f2.m584d();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", c5404ac.m807b());
                } else {
                    if (!m681a(c5404ac, m682a.m827a())) {
                        c5466f2.m584d();
                        c5466f = new C5466f(this.f22748a.m184p(), m680a(m682a.m827a()), m692h, m691i, this.f22751d);
                        this.f22750c = c5466f;
                    } else {
                        c5466f = c5466f2;
                        if (c5466f2.m596a() != null) {
                            throw new IllegalStateException("Closing the body of " + c5404ac + " didn't close its backing stream. Bad interceptor?");
                        }
                    }
                    C5404ac c5404ac3 = c5404ac;
                    c5400aa = m682a;
                    c5466f2 = c5466f;
                    c5404ac2 = c5404ac3;
                }
            } catch (Throwable th) {
                c5466f2.m593a((IOException) null);
                c5466f2.m584d();
                throw th;
            }
        }
        c5466f2.m584d();
        throw new IOException("Canceled");
    }

    /* renamed from: a */
    public void m687a() {
        this.f22752e = true;
        C5466f c5466f = this.f22750c;
        if (c5466f != null) {
            c5466f.m582f();
        }
    }

    /* renamed from: a */
    public void m684a(Object obj) {
        this.f22751d = obj;
    }

    /* renamed from: b */
    public boolean m679b() {
        return this.f22752e;
    }
}
