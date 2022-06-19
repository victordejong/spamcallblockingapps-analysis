package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.AbstractC4109e;
import com.bytedance.sdk.p127a.p129b.AbstractC4127p;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.AbstractC4148z;
import com.bytedance.sdk.p127a.p129b.C3994a;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4102ac;
import com.bytedance.sdk.p127a.p129b.C4111g;
import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4008c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4010e;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4041a;
import com.explorestack.iab.vast.VastError;
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
/* renamed from: com.bytedance.sdk.a.b.a.c.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/j.class */
public final class C4029j implements AbstractC4137t {

    /* renamed from: a */
    private final C4140v f14616a;

    /* renamed from: b */
    private final boolean f14617b;

    /* renamed from: c */
    private C4013g f14618c;

    /* renamed from: d */
    private Object f14619d;

    /* renamed from: e */
    private volatile boolean f14620e;

    public C4029j(C4140v c4140v, boolean z) {
        this.f14616a = c4140v;
        this.f14617b = z;
    }

    /* renamed from: a */
    private C3994a m36857a(C4134s c4134s) {
        C4111g c4111g;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (c4134s.m36441c()) {
            sSLSocketFactory = this.f14616a.m36386j();
            hostnameVerifier = this.f14616a.m36385k();
            c4111g = this.f14616a.m36384l();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c4111g = null;
        }
        return new C3994a(c4134s.m36435f(), c4134s.m36434g(), this.f14616a.m36388h(), this.f14616a.m36387i(), sSLSocketFactory, hostnameVerifier, c4111g, this.f14616a.m36382n(), this.f14616a.m36392d(), this.f14616a.m36376t(), this.f14616a.m36375u(), this.f14616a.m36391e());
    }

    /* renamed from: a */
    private C4146y m36859a(C4098aa c4098aa) throws IOException {
        String m36613a;
        C4134s m36440c;
        if (c4098aa != null) {
            C4008c m36926b = this.f14618c.m36926b();
            C4102ac mo36538a = m36926b != null ? m36926b.mo36538a() : null;
            int m36610c = c4098aa.m36610c();
            String m36339b = c4098aa.m36614a().m36339b();
            if (m36610c == 307 || m36610c == 308) {
                if (!m36339b.equals("GET") && !m36339b.equals("HEAD")) {
                    return null;
                }
            } else if (m36610c == 401) {
                return this.f14616a.m36383m().mo36569a(mo36538a, c4098aa);
            } else {
                if (m36610c == 407) {
                    if ((mo36538a != null ? mo36538a.m36574b() : this.f14616a.m36392d()).type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                    return this.f14616a.m36382n().mo36569a(mo36538a, c4098aa);
                } else if (m36610c == 408) {
                    if (!this.f14616a.m36378r() || (c4098aa.m36614a().m36337d() instanceof AbstractC4031l)) {
                        return null;
                    }
                    if (c4098aa.m36603j() != null && c4098aa.m36603j().m36610c() == 408) {
                        return null;
                    }
                    return c4098aa.m36614a();
                } else {
                    switch (m36610c) {
                        case VastError.ERROR_CODE_GENERAL_WRAPPER /* 300 */:
                        case VastError.ERROR_CODE_BAD_URI /* 301 */:
                        case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                        case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                            break;
                        default:
                            return null;
                    }
                }
            }
            if (!this.f14616a.m36379q() || (m36613a = c4098aa.m36613a("Location")) == null || (m36440c = c4098aa.m36614a().m36341a().m36440c(m36613a)) == null) {
                return null;
            }
            if (!m36440c.m36444b().equals(c4098aa.m36614a().m36341a().m36444b()) && !this.f14616a.m36380p()) {
                return null;
            }
            C4146y.C4147a m36336e = c4098aa.m36614a().m36336e();
            if (C4025f.m36872c(m36339b)) {
                boolean m36871d = C4025f.m36871d(m36339b);
                if (C4025f.m36870e(m36339b)) {
                    m36336e.m36328a("GET", (AbstractC4148z) null);
                } else {
                    AbstractC4148z abstractC4148z = null;
                    if (m36871d) {
                        abstractC4148z = c4098aa.m36614a().m36337d();
                    }
                    m36336e.m36328a(m36339b, abstractC4148z);
                }
                if (!m36871d) {
                    m36336e.m36323b("Transfer-Encoding");
                    m36336e.m36323b("Content-Length");
                    m36336e.m36323b("Content-Type");
                }
            }
            if (!m36858a(c4098aa, m36440c)) {
                m36336e.m36323b("Authorization");
            }
            return m36336e.m36331a(m36440c).m36319d();
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    private boolean m36858a(C4098aa c4098aa, C4134s c4134s) {
        C4134s m36341a = c4098aa.m36614a().m36341a();
        return m36341a.m36435f().equals(c4134s.m36435f()) && m36341a.m36434g() == c4134s.m36434g() && m36341a.m36444b().equals(c4134s.m36444b());
    }

    /* renamed from: a */
    private boolean m36856a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException);
    }

    /* renamed from: a */
    private boolean m36855a(IOException iOException, boolean z, C4146y c4146y) {
        this.f14618c.m36929a(iOException);
        if (!this.f14616a.m36378r()) {
            return false;
        }
        return (!z || !(c4146y.m36337d() instanceof AbstractC4031l)) && m36856a(iOException, z) && this.f14618c.m36922e();
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t
    /* renamed from: a */
    public final C4098aa mo36406a(AbstractC4137t.AbstractC4138a abstractC4138a) throws IOException {
        C4098aa c4098aa;
        C4146y m36859a;
        C4146y mo36405a = abstractC4138a.mo36405a();
        C4026g c4026g = (C4026g) abstractC4138a;
        AbstractC4109e m36865h = c4026g.m36865h();
        AbstractC4127p m36864i = c4026g.m36864i();
        this.f14618c = new C4013g(this.f14616a.m36381o(), m36857a(mo36405a.m36341a()), m36865h, m36864i, this.f14619d);
        C4098aa c4098aa2 = null;
        int i = 0;
        C4146y c4146y = mo36405a;
        while (!this.f14620e) {
            try {
                try {
                    C4098aa m36869a = c4026g.m36869a(c4146y, this.f14618c, null, null);
                    c4098aa = m36869a;
                    if (c4098aa2 != null) {
                        c4098aa = m36869a.m36604i().m36585c(c4098aa2.m36604i().m36595a((AbstractC4100ab) null).m36599a()).m36599a();
                    }
                    m36859a = m36859a(c4098aa);
                } catch (C4010e e) {
                    if (!m36855a(e.m36949a(), false, c4146y)) {
                        throw e.m36949a();
                    }
                } catch (IOException e2) {
                    if (!m36855a(e2, !(e2 instanceof C4041a), c4146y)) {
                        throw e2;
                    }
                }
                if (m36859a == null) {
                    if (!this.f14617b) {
                        this.f14618c.m36924c();
                    }
                    return c4098aa;
                }
                C4015c.m36914a(c4098aa.m36605h());
                i++;
                if (i > 20) {
                    this.f14618c.m36924c();
                    throw new ProtocolException("Too many follow-up requests: ".concat(String.valueOf(i)));
                } else if (m36859a.m36337d() instanceof AbstractC4031l) {
                    this.f14618c.m36924c();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", c4098aa.m36610c());
                } else {
                    if (!m36858a(c4098aa, m36859a.m36341a())) {
                        this.f14618c.m36924c();
                        this.f14618c = new C4013g(this.f14616a.m36381o(), m36857a(m36859a.m36341a()), m36865h, m36864i, this.f14619d);
                    } else if (this.f14618c.m36935a() != null) {
                        throw new IllegalStateException("Closing the body of " + c4098aa + " didn't close its backing stream. Bad interceptor?");
                    }
                    c4098aa2 = c4098aa;
                    c4146y = m36859a;
                }
            } catch (Throwable th) {
                this.f14618c.m36929a((IOException) null);
                this.f14618c.m36924c();
                throw th;
            }
        }
        this.f14618c.m36924c();
        throw new IOException("Canceled");
    }

    /* renamed from: a */
    public final void m36854a(Object obj) {
        this.f14619d = obj;
    }

    /* renamed from: a */
    public final boolean m36860a() {
        return this.f14620e;
    }
}
