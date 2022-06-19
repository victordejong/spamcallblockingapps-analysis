package com.bytedance.sdk.p127a.p129b.p130a.p132b;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p129b.AbstractC4109e;
import com.bytedance.sdk.p127a.p129b.AbstractC4116i;
import com.bytedance.sdk.p127a.p129b.AbstractC4127p;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.C3994a;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4102ac;
import com.bytedance.sdk.p127a.p129b.C4111g;
import com.bytedance.sdk.p127a.p129b.C4117j;
import com.bytedance.sdk.p127a.p129b.C4119k;
import com.bytedance.sdk.p127a.p129b.C4131q;
import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.C4032d;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4024e;
import com.bytedance.sdk.p127a.p129b.p130a.p134d.C4033a;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4048f;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4050g;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4068i;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.EnumC4042b;
import com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.C4096e;
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
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.bytedance.sdk.a.b.a.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/c.class */
public final class C4008c extends C4050g.AbstractC4059b implements AbstractC4116i {

    /* renamed from: a */
    public boolean f14531a;

    /* renamed from: b */
    public int f14532b;

    /* renamed from: c */
    public int f14533c = 1;

    /* renamed from: d */
    public final List<Reference<C4013g>> f14534d = new ArrayList();

    /* renamed from: e */
    public long f14535e = Long.MAX_VALUE;

    /* renamed from: g */
    private final C4117j f14536g;

    /* renamed from: h */
    private final C4102ac f14537h;

    /* renamed from: i */
    private Socket f14538i;

    /* renamed from: j */
    private Socket f14539j;

    /* renamed from: k */
    private C4131q f14540k;

    /* renamed from: l */
    private EnumC4143w f14541l;

    /* renamed from: m */
    private C4050g f14542m;

    /* renamed from: n */
    private AbstractC3972e f14543n;

    /* renamed from: o */
    private AbstractC3971d f14544o;

    public C4008c(C4117j c4117j, C4102ac c4102ac) {
        this.f14536g = c4117j;
        this.f14537h = c4102ac;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: a */
    private C4146y m36963a(int i, int i2, C4146y c4146y, C4134s c4134s) throws IOException {
        C4098aa m36599a;
        String str = "CONNECT " + C4015c.m36915a(c4134s, true) + " HTTP/1.1";
        do {
            C4033a c4033a = new C4033a(null, null, this.f14543n, this.f14544o);
            this.f14543n.mo36720a().mo37017a(i, TimeUnit.MILLISECONDS);
            this.f14544o.mo36723a().mo37017a(i2, TimeUnit.MILLISECONDS);
            c4033a.m36848a(c4146y.m36338c(), str);
            c4033a.mo36801b();
            m36599a = c4033a.mo36802a(false).m36591a(c4146y).m36599a();
            ?? m36882a = C4024e.m36882a(m36599a);
            char c = m36882a;
            if (m36882a == -1) {
                c = 0;
            }
            AbstractC3990s m36846b = c4033a.m36846b(c);
            C4015c.m36895b(m36846b, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            m36846b.close();
            int m36610c = m36599a.m36610c();
            if (m36610c == 200) {
                if (this.f14543n.mo37060c().mo37058e() && this.f14544o.mo37060c().mo37058e()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            } else if (m36610c != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + m36599a.m36610c());
            } else {
                c4146y = this.f14537h.m36575a().m37005d().mo36569a(this.f14537h, m36599a);
                if (c4146y == null) {
                    throw new IOException("Failed to authenticate with proxy");
                }
            }
        } while (!EventConstants.CLOSE.equalsIgnoreCase(m36599a.m36613a("Connection")));
        return c4146y;
    }

    /* renamed from: a */
    private void m36966a(int i, int i2, int i3, AbstractC4109e abstractC4109e, AbstractC4127p abstractC4127p) throws IOException {
        C4146y m36953e = m36953e();
        C4134s m36341a = m36953e.m36341a();
        for (int i4 = 0; i4 < 21; i4++) {
            m36964a(i, i2, abstractC4109e, abstractC4127p);
            m36953e = m36963a(i2, i3, m36953e, m36341a);
            if (m36953e == null) {
                return;
            }
            C4015c.m36902a(this.f14538i);
            this.f14538i = null;
            this.f14544o = null;
            this.f14543n = null;
            abstractC4127p.m36486a(abstractC4109e, this.f14537h.m36573c(), this.f14537h.m36574b(), null);
        }
    }

    /* renamed from: a */
    private void m36964a(int i, int i2, AbstractC4109e abstractC4109e, AbstractC4127p abstractC4127p) throws IOException {
        Proxy m36574b = this.f14537h.m36574b();
        this.f14538i = (m36574b.type() == Proxy.Type.DIRECT || m36574b.type() == Proxy.Type.HTTP) ? this.f14537h.m36575a().m37006c().createSocket() : new Socket(m36574b);
        abstractC4127p.m36487a(abstractC4109e, this.f14537h.m36573c(), m36574b);
        this.f14538i.setSoTimeout(i2);
        try {
            C4090e.m36643b().mo36648a(this.f14538i, this.f14537h.m36573c(), i);
            try {
                this.f14543n = C3979l.m37085a(C3979l.m37079b(this.f14538i));
                this.f14544o = C3979l.m37086a(C3979l.m37080a(this.f14538i));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f14537h.m36573c());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* renamed from: a */
    private void m36962a(C4007b c4007b) throws IOException {
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket;
        SSLSocket sSLSocket2;
        C3994a m36575a = this.f14537h.m36575a();
        SSLSocket sSLSocket3 = null;
        try {
            try {
                sSLSocket2 = (SSLSocket) m36575a.m37000i().createSocket(this.f14538i, m36575a.m37009a().m36435f(), m36575a.m37009a().m36434g(), true);
            } catch (AssertionError e2) {
                e = e2;
                sSLSocket = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            C4119k m36968a = c4007b.m36968a(sSLSocket2);
            if (m36968a.m36525d()) {
                C4090e.m36643b().mo36645a(sSLSocket2, m36575a.m37009a().m36435f(), m36575a.m37004e());
            }
            sSLSocket2.startHandshake();
            C4131q m36473a = C4131q.m36473a(sSLSocket2.getSession());
            if (!m36575a.m36999j().verify(m36575a.m37009a().m36435f(), sSLSocket2.getSession())) {
                X509Certificate x509Certificate = (X509Certificate) m36473a.m36472b().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + m36575a.m37009a().m36435f() + " not verified:\n    certificate: " + C4111g.m36547a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C4096e.m36619a(x509Certificate));
            }
            m36575a.m36998k().m36548a(m36575a.m37009a().m36435f(), m36473a.m36472b());
            String str = null;
            if (m36968a.m36525d()) {
                str = C4090e.m36643b().mo36646a(sSLSocket2);
            }
            this.f14539j = sSLSocket2;
            this.f14543n = C3979l.m37085a(C3979l.m37079b(sSLSocket2));
            this.f14544o = C3979l.m37086a(C3979l.m37080a(this.f14539j));
            this.f14540k = m36473a;
            this.f14541l = str != null ? EnumC4143w.m36353a(str) : EnumC4143w.HTTP_1_1;
            if (sSLSocket2 == null) {
                return;
            }
            C4090e.m36643b().mo36640b(sSLSocket2);
        } catch (AssertionError e3) {
            sSLSocket = sSLSocket2;
            e = e3;
            if (!C4015c.m36913a(e)) {
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
                C4090e.m36643b().mo36640b(sSLSocket3);
            }
            C4015c.m36902a((Socket) sSLSocket3);
            throw th;
        }
    }

    /* renamed from: a */
    private void m36961a(C4007b c4007b, AbstractC4109e abstractC4109e, AbstractC4127p abstractC4127p) throws IOException {
        if (this.f14537h.m36575a().m37000i() == null) {
            this.f14541l = EnumC4143w.HTTP_1_1;
            this.f14539j = this.f14538i;
            return;
        }
        abstractC4127p.m36483b(abstractC4109e);
        m36962a(c4007b);
        abstractC4127p.m36492a(abstractC4109e, this.f14540k);
        if (this.f14541l != EnumC4143w.HTTP_2) {
            return;
        }
        this.f14539j.setSoTimeout(0);
        C4050g m36774a = new C4050g.C4058a(true).m36772a(this.f14539j, this.f14537h.m36575a().m37009a().m36435f(), this.f14543n, this.f14544o).m36773a(this).m36774a();
        this.f14542m = m36774a;
        m36774a.m36779c();
    }

    /* renamed from: e */
    private C4146y m36953e() {
        return new C4146y.C4147a().m36331a(this.f14537h.m36575a().m37009a()).m36327a("Host", C4015c.m36915a(this.f14537h.m36575a().m37009a(), true)).m36327a("Proxy-Connection", "Keep-Alive").m36327a("User-Agent", C4032d.m36851a()).m36319d();
    }

    /* renamed from: a */
    public final AbstractC4021c m36958a(C4140v c4140v, AbstractC4137t.AbstractC4138a abstractC4138a, C4013g c4013g) throws SocketException {
        C4050g c4050g = this.f14542m;
        if (c4050g != null) {
            return new C4048f(c4140v, abstractC4138a, c4013g, c4050g);
        }
        this.f14539j.setSoTimeout(abstractC4138a.mo36402c());
        this.f14543n.mo36720a().mo37017a(abstractC4138a.mo36402c(), TimeUnit.MILLISECONDS);
        this.f14544o.mo36723a().mo37017a(abstractC4138a.mo36401d(), TimeUnit.MILLISECONDS);
        return new C4033a(c4140v, c4013g, this.f14543n, this.f14544o);
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4116i
    /* renamed from: a */
    public final C4102ac mo36538a() {
        return this.f14537h;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a5 A[Catch: IOException -> 0x0141, TRY_LEAVE, TryCatch #1 {IOException -> 0x0141, blocks: (B:15:0x009b, B:17:0x00a5), top: B:58:0x009b }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m36965a(int r8, int r9, int r10, boolean r11, com.bytedance.sdk.p127a.p129b.AbstractC4109e r12, com.bytedance.sdk.p127a.p129b.AbstractC4127p r13) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.p132b.C4008c.m36965a(int, int, int, boolean, com.bytedance.sdk.a.b.e, com.bytedance.sdk.a.b.p):void");
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4050g.AbstractC4059b
    /* renamed from: a */
    public final void mo36771a(C4050g c4050g) {
        synchronized (this.f14536g) {
            this.f14533c = c4050g.m36798a();
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p135e.C4050g.AbstractC4059b
    /* renamed from: a */
    public final void mo36770a(C4068i c4068i) throws IOException {
        c4068i.m36739a(EnumC4042b.REFUSED_STREAM);
    }

    /* renamed from: a */
    public final boolean m36960a(C3994a c3994a, C4102ac c4102ac) {
        if (this.f14534d.size() >= this.f14533c || this.f14531a || !AbstractC3995a.f14478a.mo36369a(this.f14537h.m36575a(), c3994a)) {
            return false;
        }
        if (c3994a.m37009a().m36435f().equals(mo36538a().m36575a().m37009a().m36435f())) {
            return true;
        }
        if (this.f14542m == null || c4102ac == null || c4102ac.m36574b().type() != Proxy.Type.DIRECT || this.f14537h.m36574b().type() != Proxy.Type.DIRECT || !this.f14537h.m36573c().equals(c4102ac.m36573c()) || c4102ac.m36575a().m36999j() != C4096e.f14875a || !m36959a(c3994a.m37009a())) {
            return false;
        }
        try {
            c3994a.m36998k().m36548a(c3994a.m37009a().m36435f(), m36955c().m36472b());
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m36959a(C4134s c4134s) {
        if (c4134s.m36434g() != this.f14537h.m36575a().m37009a().m36434g()) {
            return false;
        }
        if (c4134s.m36435f().equals(this.f14537h.m36575a().m37009a().m36435f())) {
            return true;
        }
        return this.f14540k != null && C4096e.f14875a.m36620a(c4134s.m36435f(), (X509Certificate) this.f14540k.m36472b().get(0));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final boolean m36957a(boolean z) {
        if (this.f14539j.isClosed() || this.f14539j.isInputShutdown() || this.f14539j.isOutputShutdown()) {
            return false;
        }
        C4050g c4050g = this.f14542m;
        if (c4050g != null) {
            return !c4050g.m36776d();
        } else if (!z) {
            return true;
        } else {
            try {
                int soTimeout = this.f14539j.getSoTimeout();
                try {
                    this.f14539j.setSoTimeout(1);
                    if (this.f14543n.mo37058e()) {
                        this.f14539j.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f14539j.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th) {
                    this.f14539j.setSoTimeout(soTimeout);
                    throw th;
                }
            } catch (SocketTimeoutException e) {
                return true;
            } catch (IOException e2) {
                return false;
            }
        }
    }

    /* renamed from: b */
    public final Socket m36956b() {
        return this.f14539j;
    }

    /* renamed from: c */
    public final C4131q m36955c() {
        return this.f14540k;
    }

    /* renamed from: d */
    public final boolean m36954d() {
        return this.f14542m != null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.f14537h.m36575a().m37009a().m36435f());
        sb.append(":");
        sb.append(this.f14537h.m36575a().m37009a().m36434g());
        sb.append(", proxy=");
        sb.append(this.f14537h.m36574b());
        sb.append(" hostAddress=");
        sb.append(this.f14537h.m36573c());
        sb.append(" cipherSuite=");
        C4131q c4131q = this.f14540k;
        sb.append(c4131q != null ? c4131q.m36474a() : "none");
        sb.append(" protocol=");
        sb.append(this.f14541l);
        sb.append('}');
        return sb.toString();
    }
}
