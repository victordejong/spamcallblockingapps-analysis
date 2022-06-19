package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5423i;
import okhttp3.AbstractC5532p;
import okhttp3.AbstractC5544u;
import okhttp3.C5399a;
import okhttp3.C5400aa;
import okhttp3.C5408ae;
import okhttp3.C5418g;
import okhttp3.C5522j;
import okhttp3.C5524k;
import okhttp3.C5538r;
import okhttp3.C5541t;
import okhttp3.C5550x;
import okhttp3.EnumC5553y;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.C5449c;
import okhttp3.internal.C5468d;
import okhttp3.internal.http2.C5492e;
import okhttp3.internal.http2.C5494f;
import okhttp3.internal.http2.C5512h;
import okhttp3.internal.http2.EnumC5486a;
import okhttp3.internal.p193b.AbstractC5438c;
import okhttp3.internal.p194c.C5452a;
import okhttp3.internal.p196e.C5480f;
import okhttp3.internal.p197f.C5484d;
import p000a.AbstractC0006d;
import p000a.AbstractC0007e;
import p000a.C0014l;
/* renamed from: okhttp3.internal.connection.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/c.class */
public final class C5462c extends C5494f.AbstractC5502b implements AbstractC5423i {

    /* renamed from: a */
    public boolean f22808a;

    /* renamed from: b */
    public int f22809b;

    /* renamed from: c */
    public int f22810c = 1;

    /* renamed from: d */
    public final List<Reference<C5466f>> f22811d = new ArrayList();

    /* renamed from: e */
    public long f22812e = Long.MAX_VALUE;

    /* renamed from: g */
    private final C5522j f22813g;

    /* renamed from: h */
    private final C5408ae f22814h;

    /* renamed from: i */
    private Socket f22815i;

    /* renamed from: j */
    private Socket f22816j;

    /* renamed from: k */
    private C5538r f22817k;

    /* renamed from: l */
    private EnumC5553y f22818l;

    /* renamed from: m */
    private C5494f f22819m;

    /* renamed from: n */
    private AbstractC0007e f22820n;

    /* renamed from: o */
    private AbstractC0006d f22821o;

    public C5462c(C5522j c5522j, C5408ae c5408ae) {
        this.f22813g = c5522j;
        this.f22814h = c5408ae;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0110, code lost:
        return r11;
     */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.C5400aa m624a(int r8, int r9, okhttp3.C5400aa r10, okhttp3.C5541t r11) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.C5462c.m624a(int, int, okhttp3.aa, okhttp3.t):okhttp3.aa");
    }

    /* renamed from: a */
    private void m625a(int i, int i2, int i3, AbstractC5415e abstractC5415e, AbstractC5532p abstractC5532p) {
        C5400aa m611f = m611f();
        C5541t m827a = m611f.m827a();
        for (int i4 = 0; i4 < 21; i4++) {
            m623a(i, i2, abstractC5415e, abstractC5532p);
            m611f = m624a(i2, i3, m611f, m827a);
            if (m611f == null) {
                return;
            }
            C5449c.m661a(this.f22815i);
            this.f22815i = null;
            this.f22821o = null;
            this.f22820n = null;
            abstractC5532p.m307a(abstractC5415e, this.f22814h.m775c(), this.f22814h.m776b(), null);
        }
    }

    /* renamed from: a */
    private void m623a(int i, int i2, AbstractC5415e abstractC5415e, AbstractC5532p abstractC5532p) {
        Proxy m776b = this.f22814h.m776b();
        this.f22815i = (m776b.type() == Proxy.Type.DIRECT || m776b.type() == Proxy.Type.HTTP) ? this.f22814h.m777a().m836c().createSocket() : new Socket(m776b);
        abstractC5532p.m308a(abstractC5415e, this.f22814h.m775c(), m776b);
        this.f22815i.setSoTimeout(i2);
        try {
            C5480f.m541c().mo551a(this.f22815i, this.f22814h.m775c(), i);
            try {
                this.f22820n = C0014l.m22522a(C0014l.m22516b(this.f22815i));
                this.f22821o = C0014l.m22523a(C0014l.m22517a(this.f22815i));
            } catch (NullPointerException e) {
                if (!"throw with null exception".equals(e.getMessage())) {
                    return;
                }
                throw new IOException(e);
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f22814h.m775c());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* renamed from: a */
    private void m620a(C5461b c5461b) {
        SSLSocket sSLSocket;
        Throwable th;
        SSLSocket sSLSocket2;
        SSLSocket sSLSocket3 = null;
        C5399a m777a = this.f22814h.m777a();
        try {
            try {
                sSLSocket2 = (SSLSocket) m777a.m830i().createSocket(this.f22815i, m777a.m839a().m248f(), m777a.m839a().m247g(), true);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (AssertionError e) {
            e = e;
            sSLSocket = null;
        }
        try {
            C5524k m629a = c5461b.m629a(sSLSocket2);
            if (m629a.m343d()) {
                C5480f.m541c().mo548a(sSLSocket2, m777a.m839a().m248f(), m777a.m834e());
            }
            sSLSocket2.startHandshake();
            SSLSession session = sSLSocket2.getSession();
            if (!m622a(session)) {
                throw new IOException("a valid ssl session was not established");
            }
            C5538r m286a = C5538r.m286a(session);
            if (!m777a.m829j().verify(m777a.m839a().m248f(), session)) {
                X509Certificate x509Certificate = (X509Certificate) m286a.m285b().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + m777a.m839a().m248f() + " not verified:\n    certificate: " + C5418g.m752a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C5484d.m534a(x509Certificate));
            }
            m777a.m828k().m753a(m777a.m839a().m248f(), m286a.m285b());
            String str = null;
            if (m629a.m343d()) {
                str = C5480f.m541c().mo549a(sSLSocket2);
            }
            this.f22816j = sSLSocket2;
            this.f22820n = C0014l.m22522a(C0014l.m22516b(this.f22816j));
            this.f22821o = C0014l.m22523a(C0014l.m22517a(this.f22816j));
            this.f22817k = m286a;
            this.f22818l = str != null ? EnumC5553y.m158a(str) : EnumC5553y.HTTP_1_1;
            if (sSLSocket2 == null) {
                return;
            }
            C5480f.m541c().mo543b(sSLSocket2);
        } catch (AssertionError e2) {
            sSLSocket = sSLSocket2;
            e = e2;
            if (!C5449c.m672a(e)) {
                throw e;
            }
            SSLSocket sSLSocket4 = sSLSocket;
            SSLSocket sSLSocket5 = sSLSocket;
            SSLSocket sSLSocket6 = sSLSocket;
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket3 = sSLSocket2;
            if (sSLSocket3 != null) {
                C5480f.m541c().mo543b(sSLSocket3);
            }
            C5449c.m661a((Socket) sSLSocket3);
            throw th;
        }
    }

    /* renamed from: a */
    private void m619a(C5461b c5461b, int i, AbstractC5415e abstractC5415e, AbstractC5532p abstractC5532p) {
        if (this.f22814h.m777a().m830i() == null) {
            this.f22818l = EnumC5553y.HTTP_1_1;
            this.f22816j = this.f22815i;
            return;
        }
        abstractC5532p.m300b(abstractC5415e);
        m620a(c5461b);
        abstractC5532p.m302a(abstractC5415e, this.f22817k);
        if (this.f22818l != EnumC5553y.HTTP_2) {
            return;
        }
        this.f22816j.setSoTimeout(0);
        this.f22819m = new C5494f.C5501a(true).m458a(this.f22816j, this.f22814h.m777a().m839a().m248f(), this.f22820n, this.f22821o).m457a(this).m459a(i).m460a();
        this.f22819m.m466c();
    }

    /* renamed from: a */
    private boolean m622a(SSLSession sSLSession) {
        return !"NONE".equals(sSLSession.getProtocol()) && !"SSL_NULL_WITH_NULL_NULL".equals(sSLSession.getCipherSuite());
    }

    /* renamed from: f */
    private C5400aa m611f() {
        return new C5400aa.C5401a().m814a(this.f22814h.m777a().m839a()).m817a("Host", C5449c.m657a(this.f22814h.m777a().m839a(), true)).m817a("Proxy-Connection", "Keep-Alive").m817a("User-Agent", C5468d.m578a()).m819a();
    }

    /* renamed from: a */
    public C5408ae m627a() {
        return this.f22814h;
    }

    /* renamed from: a */
    public AbstractC5438c m617a(C5550x c5550x, AbstractC5544u.AbstractC5545a abstractC5545a, C5466f c5466f) {
        AbstractC5438c c5452a;
        if (this.f22819m != null) {
            c5452a = new C5492e(c5550x, abstractC5545a, c5466f, this.f22819m);
        } else {
            this.f22816j.setSoTimeout(abstractC5545a.mo212c());
            this.f22820n.mo405a().mo22453a(abstractC5545a.mo212c(), TimeUnit.MILLISECONDS);
            this.f22821o.mo408a().mo22453a(abstractC5545a.mo211d(), TimeUnit.MILLISECONDS);
            c5452a = new C5452a(c5550x, c5466f, this.f22820n, this.f22821o);
        }
        return c5452a;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a3 A[Catch: IOException -> 0x010e, TRY_LEAVE, TryCatch #1 {IOException -> 0x010e, blocks: (B:16:0x0099, B:18:0x00a3, B:26:0x00dc, B:28:0x00e7), top: B:55:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dc A[Catch: IOException -> 0x010e, TRY_ENTER, TryCatch #1 {IOException -> 0x010e, blocks: (B:16:0x0099, B:18:0x00a3, B:26:0x00dc, B:28:0x00e7), top: B:55:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m626a(int r8, int r9, int r10, int r11, boolean r12, okhttp3.AbstractC5415e r13, okhttp3.AbstractC5532p r14) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.C5462c.m626a(int, int, int, int, boolean, okhttp3.e, okhttp3.p):void");
    }

    @Override // okhttp3.internal.http2.C5494f.AbstractC5502b
    /* renamed from: a */
    public void mo456a(C5494f c5494f) {
        synchronized (this.f22813g) {
            this.f22810c = c5494f.m487a();
        }
    }

    @Override // okhttp3.internal.http2.C5494f.AbstractC5502b
    /* renamed from: a */
    public void mo455a(C5512h c5512h) {
        c5512h.m423a(EnumC5486a.REFUSED_STREAM);
    }

    /* renamed from: a */
    public boolean m621a(C5399a c5399a, @Nullable C5408ae c5408ae) {
        boolean z = false;
        if (this.f22811d.size() < this.f22810c) {
            if (this.f22808a) {
                z = false;
            } else {
                z = false;
                if (AbstractC5424a.f22678a.mo173a(this.f22814h.m777a(), c5399a)) {
                    if (c5399a.m839a().m248f().equals(m627a().m777a().m839a().m248f())) {
                        z = true;
                    } else {
                        z = false;
                        if (this.f22819m != null) {
                            z = false;
                            if (c5408ae != null) {
                                z = false;
                                if (c5408ae.m776b().type() == Proxy.Type.DIRECT) {
                                    z = false;
                                    if (this.f22814h.m776b().type() == Proxy.Type.DIRECT) {
                                        z = false;
                                        if (this.f22814h.m775c().equals(c5408ae.m775c())) {
                                            z = false;
                                            if (c5408ae.m777a().m829j() == C5484d.f22880a) {
                                                z = false;
                                                if (m618a(c5399a.m839a())) {
                                                    try {
                                                        c5399a.m828k().m753a(c5399a.m839a().m248f(), m613d().m285b());
                                                        z = true;
                                                    } catch (SSLPeerUnverifiedException e) {
                                                        z = false;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m618a(C5541t c5541t) {
        boolean z = false;
        if (c5541t.m247g() == this.f22814h.m777a().m839a().m247g()) {
            z = !c5541t.m248f().equals(this.f22814h.m777a().m839a().m248f()) ? this.f22817k != null && C5484d.f22880a.m535a(c5541t.m248f(), (X509Certificate) this.f22817k.m285b().get(0)) : true;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m616a(boolean z) {
        boolean z2;
        if (this.f22816j.isClosed() || this.f22816j.isInputShutdown() || this.f22816j.isOutputShutdown()) {
            z2 = false;
        } else if (this.f22819m != null) {
            z2 = true;
            if (this.f22819m.m463d()) {
                z2 = false;
            }
        } else {
            z2 = true;
            if (z) {
                try {
                    int soTimeout = this.f22816j.getSoTimeout();
                    this.f22816j.setSoTimeout(1);
                    if (this.f22820n.mo22493e()) {
                        this.f22816j.setSoTimeout(soTimeout);
                        z2 = false;
                    } else {
                        this.f22816j.setSoTimeout(soTimeout);
                        z2 = true;
                    }
                } catch (SocketTimeoutException e) {
                    z2 = true;
                } catch (IOException e2) {
                    z2 = false;
                }
            }
        }
        return z2;
    }

    /* renamed from: b */
    public void m615b() {
        C5449c.m661a(this.f22815i);
    }

    /* renamed from: c */
    public Socket m614c() {
        return this.f22816j;
    }

    /* renamed from: d */
    public C5538r m613d() {
        return this.f22817k;
    }

    /* renamed from: e */
    public boolean m612e() {
        return this.f22819m != null;
    }

    public String toString() {
        return "Connection{" + this.f22814h.m777a().m839a().m248f() + ":" + this.f22814h.m777a().m839a().m247g() + ", proxy=" + this.f22814h.m776b() + " hostAddress=" + this.f22814h.m775c() + " cipherSuite=" + (this.f22817k != null ? this.f22817k.m287a() : "none") + " protocol=" + this.f22818l + '}';
    }
}
