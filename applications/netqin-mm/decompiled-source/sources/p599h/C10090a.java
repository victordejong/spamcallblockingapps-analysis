package p599h;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Protocol;
import p599h.C10236s;
import p599h.p600d0.C10109c;
/* renamed from: h.a */
/* loaded from: classes2-dex2jar.jar:h/a.class */
public final class C10090a {

    /* renamed from: a */
    public final C10236s f37213a;

    /* renamed from: b */
    public final AbstractC10227o f37214b;

    /* renamed from: c */
    public final SocketFactory f37215c;

    /* renamed from: d */
    public final AbstractC10093b f37216d;

    /* renamed from: e */
    public final List<Protocol> f37217e;

    /* renamed from: f */
    public final List<C10221k> f37218f;

    /* renamed from: g */
    public final ProxySelector f37219g;

    /* renamed from: h */
    public final Proxy f37220h;

    /* renamed from: i */
    public final SSLSocketFactory f37221i;

    /* renamed from: j */
    public final HostnameVerifier f37222j;

    /* renamed from: k */
    public final C10213g f37223k;

    public C10090a(String str, int i, AbstractC10227o oVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C10213g gVar, AbstractC10093b bVar, Proxy proxy, List<Protocol> list, List<C10221k> list2, ProxySelector proxySelector) {
        C10236s.C10237a aVar = new C10236s.C10237a();
        aVar.m904h(sSLSocketFactory != null ? "https" : "http");
        aVar.m914c(str);
        aVar.m924a(i);
        this.f37213a = aVar.m925a();
        if (oVar != null) {
            this.f37214b = oVar;
            if (socketFactory != null) {
                this.f37215c = socketFactory;
                if (bVar != null) {
                    this.f37216d = bVar;
                    if (list != null) {
                        this.f37217e = C10109c.m1447a(list);
                        if (list2 != null) {
                            this.f37218f = C10109c.m1447a(list2);
                            if (proxySelector != null) {
                                this.f37219g = proxySelector;
                                this.f37220h = proxy;
                                this.f37221i = sSLSocketFactory;
                                this.f37222j = hostnameVerifier;
                                this.f37223k = gVar;
                                return;
                            }
                            throw new NullPointerException("proxySelector == null");
                        }
                        throw new NullPointerException("connectionSpecs == null");
                    }
                    throw new NullPointerException("protocols == null");
                }
                throw new NullPointerException("proxyAuthenticator == null");
            }
            throw new NullPointerException("socketFactory == null");
        }
        throw new NullPointerException("dns == null");
    }

    /* renamed from: a */
    public C10213g m1555a() {
        return this.f37223k;
    }

    /* renamed from: a */
    public boolean m1554a(C10090a aVar) {
        return this.f37214b.equals(aVar.f37214b) && this.f37216d.equals(aVar.f37216d) && this.f37217e.equals(aVar.f37217e) && this.f37218f.equals(aVar.f37218f) && this.f37219g.equals(aVar.f37219g) && C10109c.m1461a(this.f37220h, aVar.f37220h) && C10109c.m1461a(this.f37221i, aVar.f37221i) && C10109c.m1461a(this.f37222j, aVar.f37222j) && C10109c.m1461a(this.f37223k, aVar.f37223k) && m1544k().m931j() == aVar.m1544k().m931j();
    }

    /* renamed from: b */
    public List<C10221k> m1553b() {
        return this.f37218f;
    }

    /* renamed from: c */
    public AbstractC10227o m1552c() {
        return this.f37214b;
    }

    /* renamed from: d */
    public HostnameVerifier m1551d() {
        return this.f37222j;
    }

    /* renamed from: e */
    public List<Protocol> m1550e() {
        return this.f37217e;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj instanceof C10090a) {
            C10090a aVar = (C10090a) obj;
            if (this.f37213a.equals(aVar.f37213a) && m1554a(aVar)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: f */
    public Proxy m1549f() {
        return this.f37220h;
    }

    /* renamed from: g */
    public AbstractC10093b m1548g() {
        return this.f37216d;
    }

    /* renamed from: h */
    public ProxySelector m1547h() {
        return this.f37219g;
    }

    public int hashCode() {
        int hashCode = this.f37213a.hashCode();
        int hashCode2 = this.f37214b.hashCode();
        int hashCode3 = this.f37216d.hashCode();
        int hashCode4 = this.f37217e.hashCode();
        int hashCode5 = this.f37218f.hashCode();
        int hashCode6 = this.f37219g.hashCode();
        Proxy proxy = this.f37220h;
        int i = 0;
        int hashCode7 = proxy != null ? proxy.hashCode() : 0;
        SSLSocketFactory sSLSocketFactory = this.f37221i;
        int hashCode8 = sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0;
        HostnameVerifier hostnameVerifier = this.f37222j;
        int hashCode9 = hostnameVerifier != null ? hostnameVerifier.hashCode() : 0;
        C10213g gVar = this.f37223k;
        if (gVar != null) {
            i = gVar.hashCode();
        }
        return ((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    /* renamed from: i */
    public SocketFactory m1546i() {
        return this.f37215c;
    }

    /* renamed from: j */
    public SSLSocketFactory m1545j() {
        return this.f37221i;
    }

    /* renamed from: k */
    public C10236s m1544k() {
        return this.f37213a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f37213a.m934g());
        sb.append(":");
        sb.append(this.f37213a.m931j());
        if (this.f37220h != null) {
            sb.append(", proxy=");
            sb.append(this.f37220h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f37219g);
        }
        sb.append("}");
        return sb.toString();
    }
}
