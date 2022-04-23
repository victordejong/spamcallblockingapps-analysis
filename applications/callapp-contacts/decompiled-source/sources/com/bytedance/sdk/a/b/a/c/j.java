package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.b.a;
import com.bytedance.sdk.a.b.a.b.c;
import com.bytedance.sdk.a.b.a.b.g;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.ac;
import com.bytedance.sdk.a.b.e;
import com.bytedance.sdk.a.b.p;
import com.bytedance.sdk.a.b.s;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.y;
import com.bytedance.sdk.a.b.z;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/j.class */
public final class j implements t {

    /* renamed from: a  reason: collision with root package name */
    private final v f7898a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f7899b;

    /* renamed from: c  reason: collision with root package name */
    private g f7900c;

    /* renamed from: d  reason: collision with root package name */
    private Object f7901d;
    private volatile boolean e;

    public j(v vVar, boolean z) {
        this.f7898a = vVar;
        this.f7899b = z;
    }

    private a a(s sVar) {
        com.bytedance.sdk.a.b.g gVar;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (sVar.c()) {
            sSLSocketFactory = this.f7898a.j();
            hostnameVerifier = this.f7898a.k();
            gVar = this.f7898a.l();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            gVar = null;
        }
        return new a(sVar.f(), sVar.g(), this.f7898a.h(), this.f7898a.i(), sSLSocketFactory, hostnameVerifier, gVar, this.f7898a.n(), this.f7898a.d(), this.f7898a.t(), this.f7898a.u(), this.f7898a.e());
    }

    private y a(aa aaVar) throws IOException {
        String a2;
        s c2;
        if (aaVar != null) {
            c b2 = this.f7900c.b();
            z zVar = null;
            ac a3 = b2 != null ? b2.a() : null;
            int c3 = aaVar.c();
            String b3 = aaVar.a().b();
            if (c3 == 307 || c3 == 308) {
                if (!b3.equals("GET") && !b3.equals("HEAD")) {
                    return null;
                }
            } else if (c3 == 401) {
                return this.f7898a.m().a(a3, aaVar);
            } else {
                if (c3 == 407) {
                    if ((a3 != null ? a3.b() : this.f7898a.d()).type() == Proxy.Type.HTTP) {
                        return this.f7898a.n().a(a3, aaVar);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                } else if (c3 != 408) {
                    switch (c3) {
                        case VastError.ERROR_CODE_GENERAL_WRAPPER /* 300 */:
                        case VastError.ERROR_CODE_BAD_URI /* 301 */:
                        case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                        case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                            break;
                        default:
                            return null;
                    }
                } else if (!this.f7898a.r() || (aaVar.a().d() instanceof l)) {
                    return null;
                } else {
                    if (aaVar.j() == null || aaVar.j().c() != 408) {
                        return aaVar.a();
                    }
                    return null;
                }
            }
            if (!this.f7898a.q() || (a2 = aaVar.a("Location")) == null || (c2 = aaVar.a().a().c(a2)) == null) {
                return null;
            }
            if (!c2.b().equals(aaVar.a().a().b()) && !this.f7898a.p()) {
                return null;
            }
            y.a e = aaVar.a().e();
            if (f.c(b3)) {
                boolean d2 = f.d(b3);
                if (f.e(b3)) {
                    e.a("GET", (z) null);
                } else {
                    if (d2) {
                        zVar = aaVar.a().d();
                    }
                    e.a(b3, zVar);
                }
                if (!d2) {
                    e.b("Transfer-Encoding");
                    e.b("Content-Length");
                    e.b("Content-Type");
                }
            }
            if (!a(aaVar, c2)) {
                e.b("Authorization");
            }
            return e.a(c2).d();
        }
        throw new IllegalStateException();
    }

    private boolean a(aa aaVar, s sVar) {
        s a2 = aaVar.a().a();
        return a2.f().equals(sVar.f()) && a2.g() == sVar.g() && a2.b().equals(sVar.b());
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException);
    }

    private boolean a(IOException iOException, boolean z, y yVar) {
        this.f7900c.a(iOException);
        if (!this.f7898a.r()) {
            return false;
        }
        return (!z || !(yVar.d() instanceof l)) && a(iOException, z) && this.f7900c.e();
    }

    @Override // com.bytedance.sdk.a.b.t
    public final aa a(t.a aVar) throws IOException {
        aa aaVar;
        y a2;
        y a3 = aVar.a();
        g gVar = (g) aVar;
        e h = gVar.h();
        p i = gVar.i();
        this.f7900c = new g(this.f7898a.o(), a(a3.a()), h, i, this.f7901d);
        aa aaVar2 = null;
        int i2 = 0;
        y yVar = a3;
        while (!this.e) {
            try {
                try {
                    aa a4 = gVar.a(yVar, this.f7900c, null, null);
                    aaVar = a4;
                    if (aaVar2 != null) {
                        aaVar = a4.i().c(aaVar2.i().a((ab) null).a()).a();
                    }
                    a2 = a(aaVar);
                } catch (com.bytedance.sdk.a.b.a.b.e e) {
                    if (!a(e.a(), false, yVar)) {
                        throw e.a();
                    }
                } catch (IOException e2) {
                    if (!a(e2, !(e2 instanceof com.bytedance.sdk.a.b.a.e.a), yVar)) {
                        throw e2;
                    }
                }
                if (a2 == null) {
                    if (!this.f7899b) {
                        this.f7900c.c();
                    }
                    return aaVar;
                }
                com.bytedance.sdk.a.b.a.c.a(aaVar.h());
                i2++;
                if (i2 > 20) {
                    this.f7900c.c();
                    throw new ProtocolException("Too many follow-up requests: ".concat(String.valueOf(i2)));
                } else if (!(a2.d() instanceof l)) {
                    if (!a(aaVar, a2.a())) {
                        this.f7900c.c();
                        this.f7900c = new g(this.f7898a.o(), a(a2.a()), h, i, this.f7901d);
                    } else if (this.f7900c.a() != null) {
                        throw new IllegalStateException("Closing the body of " + aaVar + " didn't close its backing stream. Bad interceptor?");
                    }
                    aaVar2 = aaVar;
                    yVar = a2;
                } else {
                    this.f7900c.c();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", aaVar.c());
                }
            } catch (Throwable th) {
                this.f7900c.a((IOException) null);
                this.f7900c.c();
                throw th;
            }
        }
        this.f7900c.c();
        throw new IOException("Canceled");
    }

    public final void a(Object obj) {
        this.f7901d = obj;
    }

    public final boolean a() {
        return this.e;
    }
}
