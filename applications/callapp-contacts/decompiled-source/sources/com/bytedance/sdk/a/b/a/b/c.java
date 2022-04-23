package com.bytedance.sdk.a.b.a.b;

import com.bytedance.sdk.a.a.d;
import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.b.a;
import com.bytedance.sdk.a.b.a.e.b;
import com.bytedance.sdk.a.b.a.e.f;
import com.bytedance.sdk.a.b.a.e.g;
import com.bytedance.sdk.a.b.ac;
import com.bytedance.sdk.a.b.i;
import com.bytedance.sdk.a.b.j;
import com.bytedance.sdk.a.b.k;
import com.bytedance.sdk.a.b.p;
import com.bytedance.sdk.a.b.q;
import com.bytedance.sdk.a.b.s;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.w;
import com.bytedance.sdk.a.b.y;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/c.class */
public final class c extends g.b implements i {

    /* renamed from: a  reason: collision with root package name */
    public boolean f7860a;

    /* renamed from: b  reason: collision with root package name */
    public int f7861b;

    /* renamed from: c  reason: collision with root package name */
    public int f7862c = 1;

    /* renamed from: d  reason: collision with root package name */
    public final List<Reference<g>> f7863d = new ArrayList();
    public long e = Long.MAX_VALUE;
    private final j g;
    private final ac h;
    private Socket i;
    private Socket j;
    private q k;
    private w l;
    private g m;
    private e n;
    private d o;

    public c(j jVar, ac acVar) {
        this.g = jVar;
        this.h = acVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bytedance.sdk.a.b.y a(int r8, int r9, com.bytedance.sdk.a.b.y r10, com.bytedance.sdk.a.b.s r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.b.c.a(int, int, com.bytedance.sdk.a.b.y, com.bytedance.sdk.a.b.s):com.bytedance.sdk.a.b.y");
    }

    private void a(int i, int i2, int i3, com.bytedance.sdk.a.b.e eVar, p pVar) throws IOException {
        y e = e();
        s a2 = e.a();
        for (int i4 = 0; i4 < 21; i4++) {
            a(i, i2, eVar, pVar);
            e = a(i2, i3, e, a2);
            if (e != null) {
                com.bytedance.sdk.a.b.a.c.a(this.i);
                this.i = null;
                this.o = null;
                this.n = null;
                pVar.a(eVar, this.h.c(), this.h.b(), null);
            } else {
                return;
            }
        }
    }

    private void a(int i, int i2, com.bytedance.sdk.a.b.e eVar, p pVar) throws IOException {
        Proxy b2 = this.h.b();
        this.i = (b2.type() == Proxy.Type.DIRECT || b2.type() == Proxy.Type.HTTP) ? this.h.a().c().createSocket() : new Socket(b2);
        pVar.a(eVar, this.h.c(), b2);
        this.i.setSoTimeout(i2);
        try {
            com.bytedance.sdk.a.b.a.g.e.b().a(this.i, this.h.c(), i);
            try {
                this.n = l.a(l.b(this.i));
                this.o = l.a(l.a(this.i));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.h.c());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void a(b bVar) throws IOException {
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket;
        a a2 = this.h.a();
        SSLSocket sSLSocket2 = null;
        SSLSocket sSLSocket3 = null;
        String str = null;
        try {
            try {
                sSLSocket = (SSLSocket) a2.i().createSocket(this.i, a2.a().f(), a2.a().g(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            k a3 = bVar.a(sSLSocket);
            if (a3.d()) {
                com.bytedance.sdk.a.b.a.g.e.b().a(sSLSocket, a2.a().f(), a2.e());
            }
            sSLSocket.startHandshake();
            q a4 = q.a(sSLSocket.getSession());
            if (a2.j().verify(a2.a().f(), sSLSocket.getSession())) {
                a2.k().a(a2.a().f(), a4.b());
                if (a3.d()) {
                    str = com.bytedance.sdk.a.b.a.g.e.b().a(sSLSocket);
                }
                this.j = sSLSocket;
                this.n = l.a(l.b(sSLSocket));
                this.o = l.a(l.a(this.j));
                this.k = a4;
                this.l = str != null ? w.a(str) : w.HTTP_1_1;
                if (sSLSocket != null) {
                    com.bytedance.sdk.a.b.a.g.e.b().b(sSLSocket);
                    return;
                }
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) a4.b().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + a2.a().f() + " not verified:\n    certificate: " + com.bytedance.sdk.a.b.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.bytedance.sdk.a.b.a.i.e.a(x509Certificate));
        } catch (AssertionError e3) {
            e = e3;
            sSLSocket3 = sSLSocket;
            if (com.bytedance.sdk.a.b.a.c.a(e)) {
                throw new IOException(e);
            }
            throw e;
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                com.bytedance.sdk.a.b.a.g.e.b().b(sSLSocket2);
            }
            com.bytedance.sdk.a.b.a.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    private void a(b bVar, com.bytedance.sdk.a.b.e eVar, p pVar) throws IOException {
        if (this.h.a().i() == null) {
            this.l = w.HTTP_1_1;
            this.j = this.i;
            return;
        }
        pVar.b(eVar);
        a(bVar);
        pVar.a(eVar, this.k);
        if (this.l == w.HTTP_2) {
            this.j.setSoTimeout(0);
            g a2 = new g.a(true).a(this.j, this.h.a().a().f(), this.n, this.o).a(this).a();
            this.m = a2;
            a2.c();
        }
    }

    private y e() {
        return new y.a().a(this.h.a().a()).a("Host", com.bytedance.sdk.a.b.a.c.a(this.h.a().a(), true)).a("Proxy-Connection", "Keep-Alive").a("User-Agent", com.bytedance.sdk.a.b.a.d.a()).d();
    }

    public final com.bytedance.sdk.a.b.a.c.c a(v vVar, t.a aVar, g gVar) throws SocketException {
        g gVar2 = this.m;
        if (gVar2 != null) {
            return new f(vVar, aVar, gVar, gVar2);
        }
        this.j.setSoTimeout(aVar.c());
        this.n.a().a(aVar.c(), TimeUnit.MILLISECONDS);
        this.o.a().a(aVar.d(), TimeUnit.MILLISECONDS);
        return new com.bytedance.sdk.a.b.a.d.a(vVar, gVar, this.n, this.o);
    }

    @Override // com.bytedance.sdk.a.b.i
    public final ac a() {
        return this.h;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a5 A[Catch: IOException -> 0x0141, TRY_LEAVE, TryCatch #1 {IOException -> 0x0141, blocks: (B:15:0x009b, B:17:0x00a5), top: B:58:0x009b }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r8, int r9, int r10, boolean r11, com.bytedance.sdk.a.b.e r12, com.bytedance.sdk.a.b.p r13) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.b.c.a(int, int, int, boolean, com.bytedance.sdk.a.b.e, com.bytedance.sdk.a.b.p):void");
    }

    @Override // com.bytedance.sdk.a.b.a.e.g.b
    public final void a(g gVar) {
        synchronized (this.g) {
            this.f7862c = gVar.a();
        }
    }

    @Override // com.bytedance.sdk.a.b.a.e.g.b
    public final void a(com.bytedance.sdk.a.b.a.e.i iVar) throws IOException {
        iVar.a(b.REFUSED_STREAM);
    }

    public final boolean a(a aVar, ac acVar) {
        if (this.f7863d.size() >= this.f7862c || this.f7860a || !com.bytedance.sdk.a.b.a.a.f7830a.a(this.h.a(), aVar)) {
            return false;
        }
        if (aVar.a().f().equals(a().a().a().f())) {
            return true;
        }
        if (this.m == null || acVar == null || acVar.b().type() != Proxy.Type.DIRECT || this.h.b().type() != Proxy.Type.DIRECT || !this.h.c().equals(acVar.c()) || acVar.a().j() != com.bytedance.sdk.a.b.a.i.e.f8060a || !a(aVar.a())) {
            return false;
        }
        try {
            aVar.k().a(aVar.a().f(), c().b());
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    public final boolean a(s sVar) {
        if (sVar.g() != this.h.a().a().g()) {
            return false;
        }
        if (!sVar.f().equals(this.h.a().a().f())) {
            return this.k != null && com.bytedance.sdk.a.b.a.i.e.f8060a.a(sVar.f(), (X509Certificate) this.k.b().get(0));
        }
        return true;
    }

    /* JADX WARN: Finally extract failed */
    public final boolean a(boolean z) {
        if (this.j.isClosed() || this.j.isInputShutdown() || this.j.isOutputShutdown()) {
            return false;
        }
        g gVar = this.m;
        if (gVar != null) {
            return !gVar.d();
        }
        if (!z) {
            return true;
        }
        try {
            int soTimeout = this.j.getSoTimeout();
            try {
                this.j.setSoTimeout(1);
                if (this.n.e()) {
                    this.j.setSoTimeout(soTimeout);
                    return false;
                }
                this.j.setSoTimeout(soTimeout);
                return true;
            } catch (Throwable th) {
                this.j.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    public final Socket b() {
        return this.j;
    }

    public final q c() {
        return this.k;
    }

    public final boolean d() {
        return this.m != null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.h.a().a().f());
        sb.append(":");
        sb.append(this.h.a().a().g());
        sb.append(", proxy=");
        sb.append(this.h.b());
        sb.append(" hostAddress=");
        sb.append(this.h.c());
        sb.append(" cipherSuite=");
        q qVar = this.k;
        sb.append(qVar != null ? qVar.a() : "none");
        sb.append(" protocol=");
        sb.append(this.l);
        sb.append('}');
        return sb.toString();
    }
}
