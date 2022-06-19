package p246t9;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Objects;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import p007a6.C0033h;
import p015b0.C0713a;
import p204p9.AbstractC4081a0;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4116o;
import p204p9.AbstractC4125t;
import p204p9.C4080a;
import p204p9.C4084b0;
import p204p9.C4099e0;
import p204p9.C4102g;
import p204p9.C4123s;
import p204p9.C4128v;
import p204p9.C4135y;
import p214q9.C4171c;
import p236s9.C4336d;
import p236s9.C4338e;
/* renamed from: t9.i */
/* loaded from: classes2-dex2jar.jar:t9/i.class */
public final class C4440i implements AbstractC4125t {

    /* renamed from: a */
    public final C4128v f13803a;

    /* renamed from: b */
    public volatile C4338e f13804b;

    /* renamed from: c */
    public Object f13805c;

    /* renamed from: d */
    public volatile boolean f13806d;

    public C4440i(C4128v c4128v, boolean z) {
        this.f13803a = c4128v;
    }

    @Override // p204p9.AbstractC4125t
    /* renamed from: a */
    public C4084b0 mo921a(AbstractC4125t.AbstractC4126a abstractC4126a) throws IOException {
        C4084b0 c4084b0;
        C4135y m919c;
        AbstractC4433c abstractC4433c;
        C4135y c4135y = ((C4437f) abstractC4126a).f13793f;
        C4437f c4437f = (C4437f) abstractC4126a;
        AbstractC4097e abstractC4097e = c4437f.f13794g;
        AbstractC4116o abstractC4116o = c4437f.f13795h;
        C4338e c4338e = new C4338e(this.f13803a.f12993q, m920b(c4135y.f13041a), abstractC4097e, abstractC4116o, this.f13805c);
        this.f13804b = c4338e;
        int i = 0;
        C4084b0 c4084b02 = null;
        C4135y c4135y2 = c4135y;
        while (!this.f13806d) {
            try {
                try {
                    try {
                        C4084b0 m926b = c4437f.m926b(c4135y2, c4338e, null, null);
                        c4084b0 = m926b;
                        if (c4084b02 != null) {
                            C4084b0.C4085a c4085a = new C4084b0.C4085a(m926b);
                            C4084b0.C4085a c4085a2 = new C4084b0.C4085a(c4084b02);
                            c4085a2.f12816g = null;
                            C4084b0 m1434b = c4085a2.m1434b();
                            if (m1434b.f12803g != null) {
                                throw new IllegalArgumentException("priorResponse.body != null");
                            }
                            c4085a.f12819j = m1434b;
                            c4084b0 = c4085a.m1434b();
                        }
                        try {
                            m919c = m919c(c4084b0, c4338e.f13510c);
                        } catch (IOException e) {
                            c4338e.m1074g();
                            throw e;
                        }
                    } catch (IOException e2) {
                        if (!m918d(e2, c4338e, !(e2 instanceof ConnectionShutdownException), c4135y2)) {
                            throw e2;
                        }
                    }
                } catch (RouteException e3) {
                    if (!m918d(e3.f12489b, c4338e, false, c4135y2)) {
                        throw e3.f12488a;
                    }
                }
                if (m919c == null) {
                    c4338e.m1074g();
                    return c4084b0;
                }
                C4171c.m1332d(c4084b0.f12803g);
                i++;
                if (i > 20) {
                    c4338e.m1074g();
                    throw new ProtocolException(C0033h.m8886k("Too many follow-up requests: ", i));
                }
                if (!m916f(c4084b0, m919c.f13041a)) {
                    c4338e.m1074g();
                    c4338e = new C4338e(this.f13803a.f12993q, m920b(m919c.f13041a), abstractC4097e, abstractC4116o, this.f13805c);
                    this.f13804b = c4338e;
                } else {
                    synchronized (c4338e.f13511d) {
                        abstractC4433c = c4338e.f13521n;
                    }
                    if (abstractC4433c != null) {
                        throw new IllegalStateException("Closing the body of " + c4084b0 + " didn't close its backing stream. Bad interceptor?");
                    }
                }
                c4084b02 = c4084b0;
                c4135y2 = m919c;
            } catch (Throwable th) {
                c4338e.m1073h(null);
                c4338e.m1074g();
                throw th;
            }
        }
        c4338e.m1074g();
        throw new IOException("Canceled");
    }

    /* renamed from: b */
    public final C4080a m920b(C4123s c4123s) {
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        C4102g c4102g;
        if (c4123s.f12955a.equals("https")) {
            C4128v c4128v = this.f13803a;
            sSLSocketFactory = c4128v.f12987k;
            hostnameVerifier = c4128v.f12989m;
            c4102g = c4128v.f12990n;
        } else {
            c4102g = null;
            hostnameVerifier = null;
            sSLSocketFactory = null;
        }
        String str = c4123s.f12958d;
        int i = c4123s.f12959e;
        C4128v c4128v2 = this.f13803a;
        return new C4080a(str, i, c4128v2.f12994r, c4128v2.f12986j, sSLSocketFactory, hostnameVerifier, c4102g, c4128v2.f12991o, null, c4128v2.f12978b, c4128v2.f12979c, c4128v2.f12983g);
    }

    /* renamed from: c */
    public final C4135y m919c(C4084b0 c4084b0, C4099e0 c4099e0) throws IOException {
        C4123s.C4124a c4124a;
        Proxy proxy;
        if (c4084b0 != null) {
            int i = c4084b0.f12799c;
            String str = c4084b0.f12797a.f13042b;
            AbstractC4081a0 abstractC4081a0 = null;
            if (i == 307 || i == 308) {
                if (!str.equals("GET") && !str.equals("HEAD")) {
                    return null;
                }
            } else if (i == 401) {
                Objects.requireNonNull(this.f13803a.f12992p);
                return null;
            } else if (i == 503) {
                C4084b0 c4084b02 = c4084b0.f12806j;
                if ((c4084b02 != null && c4084b02.f12799c == 503) || m917e(c4084b0, Api.BaseClientBuilder.API_PRIORITY_OTHER) != 0) {
                    return null;
                }
                return c4084b0.f12797a;
            } else if (i == 407) {
                if (c4099e0 != null) {
                    proxy = c4099e0.f12876b;
                } else {
                    Objects.requireNonNull(this.f13803a);
                    proxy = null;
                }
                if (proxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                Objects.requireNonNull(this.f13803a.f12991o);
                return null;
            } else if (i == 408) {
                if (!this.f13803a.f12997u) {
                    return null;
                }
                C4084b0 c4084b03 = c4084b0.f12806j;
                if ((c4084b03 != null && c4084b03.f12799c == 408) || m917e(c4084b0, 0) > 0) {
                    return null;
                }
                return c4084b0.f12797a;
            } else {
                switch (i) {
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                        break;
                    default:
                        return null;
                }
            }
            if (!this.f13803a.f12996t) {
                return null;
            }
            String m1401c = c4084b0.f12802f.m1401c("Location");
            if (m1401c == null) {
                m1401c = null;
            }
            if (m1401c == null) {
                return null;
            }
            C4123s c4123s = c4084b0.f12797a.f13041a;
            Objects.requireNonNull(c4123s);
            try {
                C4123s.C4124a c4124a2 = new C4123s.C4124a();
                c4124a2.m1372c(c4123s, m1401c);
                c4124a = c4124a2;
            } catch (IllegalArgumentException e) {
                c4124a = null;
            }
            C4123s m1374a = c4124a != null ? c4124a.m1374a() : null;
            if (m1374a == null) {
                return null;
            }
            if (!m1374a.f12955a.equals(c4084b0.f12797a.f13041a.f12955a) && !this.f13803a.f12995s) {
                return null;
            }
            C4135y c4135y = c4084b0.f12797a;
            Objects.requireNonNull(c4135y);
            C4135y.C4136a c4136a = new C4135y.C4136a(c4135y);
            if (C0713a.m7440g(str)) {
                boolean equals = str.equals("PROPFIND");
                if (!str.equals("PROPFIND")) {
                    c4136a.m1359c("GET", null);
                } else {
                    if (equals) {
                        abstractC4081a0 = c4084b0.f12797a.f13044d;
                    }
                    c4136a.m1359c(str, abstractC4081a0);
                }
                if (!equals) {
                    c4136a.f13049c.m1392d("Transfer-Encoding");
                    c4136a.f13049c.m1392d("Content-Length");
                    c4136a.f13049c.m1392d("Content-Type");
                }
            }
            if (!m916f(c4084b0, m1374a)) {
                c4136a.f13049c.m1392d("Authorization");
            }
            c4136a.m1357e(m1374a);
            return c4136a.m1361a();
        }
        throw new IllegalStateException();
    }

    /* renamed from: d */
    public final boolean m918d(IOException iOException, C4338e c4338e, boolean z, C4135y c4135y) {
        C4336d.C4337a c4337a;
        c4338e.m1073h(iOException);
        if (!this.f13803a.f12997u) {
            return false;
        }
        if (!(!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException) : (iOException instanceof SocketTimeoutException) && !z))) {
            return false;
        }
        return c4338e.f13510c != null || (((c4337a = c4338e.f13509b) != null && c4337a.m1081a()) || c4338e.f13515h.m1083b());
    }

    /* renamed from: e */
    public final int m917e(C4084b0 c4084b0, int i) {
        String m1401c = c4084b0.f12802f.m1401c("Retry-After");
        if (m1401c == null) {
            m1401c = null;
        }
        return m1401c == null ? i : m1401c.matches("\\d+") ? Integer.valueOf(m1401c).intValue() : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: f */
    public final boolean m916f(C4084b0 c4084b0, C4123s c4123s) {
        C4123s c4123s2 = c4084b0.f12797a.f13041a;
        return c4123s2.f12958d.equals(c4123s.f12958d) && c4123s2.f12959e == c4123s.f12959e && c4123s2.f12955a.equals(c4123s.f12955a);
    }
}
