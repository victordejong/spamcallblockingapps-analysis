package okhttp3.internal.p092b;

import com.google.android.gms.common.api.Api;
import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.AbstractC1953aa;
import okhttp3.AbstractC1957ac;
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC2082p;
import okhttp3.AbstractC2092t;
import okhttp3.C1952a;
import okhttp3.C1955ab;
import okhttp3.C1959ad;
import okhttp3.C1968g;
import okhttp3.C2089s;
import okhttp3.C2098w;
import okhttp3.C2104z;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2016f;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
/* renamed from: okhttp3.internal.b.j */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/j.class */
public final class C1996j implements AbstractC2092t {

    /* renamed from: a */
    private final C2098w f4974a;

    /* renamed from: b */
    private final boolean f4975b;

    /* renamed from: c */
    private volatile C2016f f4976c;

    /* renamed from: d */
    private Object f4977d;

    /* renamed from: e */
    private volatile boolean f4978e;

    public C1996j(C2098w c2098w, boolean z) {
        this.f4974a = c2098w;
        this.f4975b = z;
    }

    /* renamed from: a */
    private int m2362a(C1955ab c1955ab, int i) {
        String m2493a = c1955ab.m2493a("Retry-After");
        return m2493a == null ? i : m2493a.matches("\\d+") ? Integer.valueOf(m2493a).intValue() : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: a */
    private C1952a m2359a(C2089s c2089s) {
        C1968g c1968g;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (c2089s.m1939d()) {
            sSLSocketFactory = this.f4974a.m1869k();
            hostnameVerifier = this.f4974a.m1868l();
            c1968g = this.f4974a.m1867m();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c1968g = null;
        }
        return new C1952a(c2089s.m1934g(), c2089s.m1933h(), this.f4974a.m1871i(), this.f4974a.m1870j(), sSLSocketFactory, hostnameVerifier, c1968g, this.f4974a.m1865o(), this.f4974a.m1875e(), this.f4974a.m1859u(), this.f4974a.m1858v(), this.f4974a.m1874f());
    }

    /* renamed from: a */
    private C2104z m2361a(C1955ab c1955ab, C1959ad c1959ad) {
        String m2493a;
        C2089s m1940c;
        if (c1955ab != null) {
            int m2491b = c1955ab.m2491b();
            String m1821b = c1955ab.m2494a().m1821b();
            if (m2491b == 307 || m2491b == 308) {
                if (!m1821b.equals(FirebasePerformance.HttpMethod.GET) && !m1821b.equals(FirebasePerformance.HttpMethod.HEAD)) {
                    return null;
                }
            } else if (m2491b == 401) {
                return this.f4974a.m1866n().mo2453a(c1959ad, c1955ab);
            } else {
                if (m2491b == 503) {
                    if ((c1955ab.m2484i() != null && c1955ab.m2484i().m2491b() == 503) || m2362a(c1955ab, Api.BaseClientBuilder.API_PRIORITY_OTHER) != 0) {
                        return null;
                    }
                    return c1955ab.m2494a();
                } else if (m2491b == 407) {
                    if ((c1959ad != null ? c1959ad.m2458b() : this.f4974a.m1875e()).type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                    return this.f4974a.m1865o().mo2453a(c1959ad, c1955ab);
                } else if (m2491b == 408) {
                    if (!this.f4974a.m1861s() || (c1955ab.m2494a().m1819d() instanceof AbstractC1998l)) {
                        return null;
                    }
                    if ((c1955ab.m2484i() != null && c1955ab.m2484i().m2491b() == 408) || m2362a(c1955ab, 0) > 0) {
                        return null;
                    }
                    return c1955ab.m2494a();
                } else {
                    switch (m2491b) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                }
            }
            if (!this.f4974a.m1862r() || (m2493a = c1955ab.m2493a("Location")) == null || (m1940c = c1955ab.m2494a().m1823a().m1940c(m2493a)) == null) {
                return null;
            }
            if (!m1940c.m1941c().equals(c1955ab.m2494a().m1823a().m1941c()) && !this.f4974a.m1863q()) {
                return null;
            }
            C2104z.C2105a m1818e = c1955ab.m2494a().m1818e();
            if (C1992f.m2381c(m1821b)) {
                boolean m2380d = C1992f.m2380d(m1821b);
                if (C1992f.m2379e(m1821b)) {
                    m1818e.m1812a(FirebasePerformance.HttpMethod.GET, (AbstractC1953aa) null);
                } else {
                    AbstractC1953aa abstractC1953aa = null;
                    if (m2380d) {
                        abstractC1953aa = c1955ab.m2494a().m1819d();
                    }
                    m1818e.m1812a(m1821b, abstractC1953aa);
                }
                if (!m2380d) {
                    m1818e.m1808b("Transfer-Encoding");
                    m1818e.m1808b("Content-Length");
                    m1818e.m1808b("Content-Type");
                }
            }
            if (!m2360a(c1955ab, m1940c)) {
                m1818e.m1808b("Authorization");
            }
            return m1818e.m1809a(m1940c).m1815a();
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    private boolean m2365a(IOException iOException, C2016f c2016f, boolean z, C2104z c2104z) {
        c2016f.m2274a(iOException);
        if (!this.f4974a.m1861s()) {
            return false;
        }
        return (!z || !(c2104z.m1819d() instanceof AbstractC1998l)) && m2364a(iOException, z) && c2016f.m2263f();
    }

    /* renamed from: a */
    private boolean m2364a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (!(iOException instanceof InterruptedIOException)) {
            return (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException);
        }
        boolean z2 = false;
        if (iOException instanceof SocketTimeoutException) {
            z2 = false;
            if (!z) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: a */
    private boolean m2360a(C1955ab c1955ab, C2089s c2089s) {
        C2089s m1823a = c1955ab.m2494a().m1823a();
        return m1823a.m1934g().equals(c2089s.m1934g()) && m1823a.m1933h() == c2089s.m1933h() && m1823a.m1941c().equals(c2089s.m1941c());
    }

    @Override // okhttp3.AbstractC2092t
    /* renamed from: a */
    public C1955ab mo1903a(AbstractC2092t.AbstractC2093a abstractC2093a) {
        C1955ab c1955ab;
        C2104z m2361a;
        C2104z mo1902a = abstractC2093a.mo1902a();
        C1993g c1993g = (C1993g) abstractC2093a;
        AbstractC1966e m2374h = c1993g.m2374h();
        AbstractC2082p m2373i = c1993g.m2373i();
        C2016f c2016f = new C2016f(this.f4974a.m1864p(), m2359a(mo1902a.m1823a()), m2374h, m2373i, this.f4977d);
        this.f4976c = c2016f;
        int i = 0;
        C1955ab c1955ab2 = null;
        C2104z c2104z = mo1902a;
        while (!this.f4978e) {
            try {
                try {
                    try {
                        C1955ab m2378a = c1993g.m2378a(c2104z, c2016f, null, null);
                        c1955ab = m2378a;
                        if (c1955ab2 != null) {
                            c1955ab = m2378a.m2485h().m2466c(c1955ab2.m2485h().m2473a((AbstractC1957ac) null).m2480a()).m2480a();
                        }
                        m2361a = m2361a(c1955ab, c2016f.m2268b());
                    } catch (IOException e) {
                        if (!m2365a(e, c2016f, !(e instanceof ConnectionShutdownException), c2104z)) {
                            throw e;
                        }
                    }
                } catch (RouteException e2) {
                    if (!m2365a(e2.m2313a(), c2016f, false, c2104z)) {
                        throw e2.m2313a();
                    }
                }
                if (m2361a == null) {
                    if (!this.f4975b) {
                        c2016f.m2265d();
                    }
                    return c1955ab;
                }
                C1999c.m2353a(c1955ab.m2486g());
                i++;
                if (i > 20) {
                    c2016f.m2265d();
                    throw new ProtocolException("Too many follow-up requests: " + i);
                } else if (m2361a.m1819d() instanceof AbstractC1998l) {
                    c2016f.m2265d();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", c1955ab.m2491b());
                } else {
                    if (!m2360a(c1955ab, m2361a.m1823a())) {
                        c2016f.m2265d();
                        c2016f = new C2016f(this.f4974a.m1864p(), m2359a(m2361a.m1823a()), m2374h, m2373i, this.f4977d);
                        this.f4976c = c2016f;
                    } else if (c2016f.m2277a() != null) {
                        throw new IllegalStateException("Closing the body of " + c1955ab + " didn't close its backing stream. Bad interceptor?");
                    }
                    c1955ab2 = c1955ab;
                    c2104z = m2361a;
                }
            } catch (Throwable th) {
                c2016f.m2274a((IOException) null);
                c2016f.m2265d();
                throw th;
            }
        }
        c2016f.m2265d();
        throw new IOException("Canceled");
    }

    /* renamed from: a */
    public void m2363a(Object obj) {
        this.f4977d = obj;
    }

    /* renamed from: a */
    public boolean m2366a() {
        return this.f4978e;
    }
}
