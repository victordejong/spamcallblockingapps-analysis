package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.C2089s;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.a */
/* loaded from: classes-dex2jar.jar:okhttp3/a.class */
public final class C1952a {

    /* renamed from: a */
    final C2089s f4702a;

    /* renamed from: b */
    final AbstractC2080o f4703b;

    /* renamed from: c */
    final SocketFactory f4704c;

    /* renamed from: d */
    final AbstractC1961b f4705d;

    /* renamed from: e */
    final List<EnumC2101x> f4706e;

    /* renamed from: f */
    final List<C2074k> f4707f;

    /* renamed from: g */
    final ProxySelector f4708g;
    @Nullable

    /* renamed from: h */
    final Proxy f4709h;
    @Nullable

    /* renamed from: i */
    final SSLSocketFactory f4710i;
    @Nullable

    /* renamed from: j */
    final HostnameVerifier f4711j;
    @Nullable

    /* renamed from: k */
    final C1968g f4712k;

    public C1952a(String str, int i, AbstractC2080o abstractC2080o, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable C1968g c1968g, AbstractC1961b abstractC1961b, @Nullable Proxy proxy, List<EnumC2101x> list, List<C2074k> list2, ProxySelector proxySelector) {
        this.f4702a = new C2089s.C2090a().m1923a(sSLSocketFactory != null ? "https" : "http").m1912d(str).m1924a(i).m1916c();
        if (abstractC2080o != null) {
            this.f4703b = abstractC2080o;
            if (socketFactory == null) {
                throw new NullPointerException("socketFactory == null");
            }
            this.f4704c = socketFactory;
            if (abstractC1961b == null) {
                throw new NullPointerException("proxyAuthenticator == null");
            }
            this.f4705d = abstractC1961b;
            if (list == null) {
                throw new NullPointerException("protocols == null");
            }
            this.f4706e = C1999c.m2338a(list);
            if (list2 == null) {
                throw new NullPointerException("connectionSpecs == null");
            }
            this.f4707f = C1999c.m2338a(list2);
            if (proxySelector == null) {
                throw new NullPointerException("proxySelector == null");
            }
            this.f4708g = proxySelector;
            this.f4709h = proxy;
            this.f4710i = sSLSocketFactory;
            this.f4711j = hostnameVerifier;
            this.f4712k = c1968g;
            return;
        }
        throw new NullPointerException("dns == null");
    }

    /* renamed from: a */
    public C2089s m2509a() {
        return this.f4702a;
    }

    /* renamed from: a */
    public boolean m2508a(C1952a c1952a) {
        return this.f4703b.equals(c1952a.f4703b) && this.f4705d.equals(c1952a.f4705d) && this.f4706e.equals(c1952a.f4706e) && this.f4707f.equals(c1952a.f4707f) && this.f4708g.equals(c1952a.f4708g) && C1999c.m2351a(this.f4709h, c1952a.f4709h) && C1999c.m2351a(this.f4710i, c1952a.f4710i) && C1999c.m2351a(this.f4711j, c1952a.f4711j) && C1999c.m2351a(this.f4712k, c1952a.f4712k) && m2509a().m1933h() == c1952a.m2509a().m1933h();
    }

    /* renamed from: b */
    public AbstractC2080o m2507b() {
        return this.f4703b;
    }

    /* renamed from: c */
    public SocketFactory m2506c() {
        return this.f4704c;
    }

    /* renamed from: d */
    public AbstractC1961b m2505d() {
        return this.f4705d;
    }

    /* renamed from: e */
    public List<EnumC2101x> m2504e() {
        return this.f4706e;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof C1952a) {
            C1952a c1952a = (C1952a) obj;
            if (this.f4702a.equals(c1952a.f4702a) && m2508a(c1952a)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: f */
    public List<C2074k> m2503f() {
        return this.f4707f;
    }

    /* renamed from: g */
    public ProxySelector m2502g() {
        return this.f4708g;
    }

    @Nullable
    /* renamed from: h */
    public Proxy m2501h() {
        return this.f4709h;
    }

    public int hashCode() {
        int hashCode = this.f4702a.hashCode();
        int hashCode2 = this.f4703b.hashCode();
        int hashCode3 = this.f4705d.hashCode();
        int hashCode4 = this.f4706e.hashCode();
        int hashCode5 = this.f4707f.hashCode();
        int hashCode6 = this.f4708g.hashCode();
        Proxy proxy = this.f4709h;
        int i = 0;
        int hashCode7 = proxy != null ? proxy.hashCode() : 0;
        SSLSocketFactory sSLSocketFactory = this.f4710i;
        int hashCode8 = sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0;
        HostnameVerifier hostnameVerifier = this.f4711j;
        int hashCode9 = hostnameVerifier != null ? hostnameVerifier.hashCode() : 0;
        C1968g c1968g = this.f4712k;
        if (c1968g != null) {
            i = c1968g.hashCode();
        }
        return ((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    @Nullable
    /* renamed from: i */
    public SSLSocketFactory m2500i() {
        return this.f4710i;
    }

    @Nullable
    /* renamed from: j */
    public HostnameVerifier m2499j() {
        return this.f4711j;
    }

    @Nullable
    /* renamed from: k */
    public C1968g m2498k() {
        return this.f4712k;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f4702a.m1934g());
        sb.append(":");
        sb.append(this.f4702a.m1933h());
        if (this.f4709h != null) {
            sb.append(", proxy=");
            sb.append(this.f4709h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f4708g);
        }
        sb.append("}");
        return sb.toString();
    }
}
