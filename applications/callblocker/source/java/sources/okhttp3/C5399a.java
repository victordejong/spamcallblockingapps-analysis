package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.C5541t;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.a */
/* loaded from: classes-dex2jar.jar:okhttp3/a.class */
public final class C5399a {

    /* renamed from: a */
    final C5541t f22465a;

    /* renamed from: b */
    final AbstractC5530o f22466b;

    /* renamed from: c */
    final SocketFactory f22467c;

    /* renamed from: d */
    final AbstractC5410b f22468d;

    /* renamed from: e */
    final List<EnumC5553y> f22469e;

    /* renamed from: f */
    final List<C5524k> f22470f;

    /* renamed from: g */
    final ProxySelector f22471g;
    @Nullable

    /* renamed from: h */
    final Proxy f22472h;
    @Nullable

    /* renamed from: i */
    final SSLSocketFactory f22473i;
    @Nullable

    /* renamed from: j */
    final HostnameVerifier f22474j;
    @Nullable

    /* renamed from: k */
    final C5418g f22475k;

    public C5399a(String str, int i, AbstractC5530o abstractC5530o, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable C5418g c5418g, AbstractC5410b abstractC5410b, @Nullable Proxy proxy, List<EnumC5553y> list, List<C5524k> list2, ProxySelector proxySelector) {
        this.f22465a = new C5541t.C5542a().m236a(sSLSocketFactory != null ? "https" : "http").m223d(str).m237a(i).m227c();
        if (abstractC5530o == null) {
            throw new NullPointerException("dns == null");
        }
        this.f22466b = abstractC5530o;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f22467c = socketFactory;
        if (abstractC5410b == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f22468d = abstractC5410b;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f22469e = C5449c.m658a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f22470f = C5449c.m658a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f22471g = proxySelector;
        this.f22472h = proxy;
        this.f22473i = sSLSocketFactory;
        this.f22474j = hostnameVerifier;
        this.f22475k = c5418g;
    }

    /* renamed from: a */
    public C5541t m839a() {
        return this.f22465a;
    }

    /* renamed from: a */
    public boolean m838a(C5399a c5399a) {
        return this.f22466b.equals(c5399a.f22466b) && this.f22468d.equals(c5399a.f22468d) && this.f22469e.equals(c5399a.f22469e) && this.f22470f.equals(c5399a.f22470f) && this.f22471g.equals(c5399a.f22471g) && C5449c.m671a(this.f22472h, c5399a.f22472h) && C5449c.m671a(this.f22473i, c5399a.f22473i) && C5449c.m671a(this.f22474j, c5399a.f22474j) && C5449c.m671a(this.f22475k, c5399a.f22475k) && m839a().m247g() == c5399a.m839a().m247g();
    }

    /* renamed from: b */
    public AbstractC5530o m837b() {
        return this.f22466b;
    }

    /* renamed from: c */
    public SocketFactory m836c() {
        return this.f22467c;
    }

    /* renamed from: d */
    public AbstractC5410b m835d() {
        return this.f22468d;
    }

    /* renamed from: e */
    public List<EnumC5553y> m834e() {
        return this.f22469e;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C5399a) && this.f22465a.equals(((C5399a) obj).f22465a) && m838a((C5399a) obj);
    }

    /* renamed from: f */
    public List<C5524k> m833f() {
        return this.f22470f;
    }

    /* renamed from: g */
    public ProxySelector m832g() {
        return this.f22471g;
    }

    @Nullable
    /* renamed from: h */
    public Proxy m831h() {
        return this.f22472h;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f22465a.hashCode();
        int hashCode2 = this.f22466b.hashCode();
        int hashCode3 = this.f22468d.hashCode();
        int hashCode4 = this.f22469e.hashCode();
        int hashCode5 = this.f22470f.hashCode();
        int hashCode6 = this.f22471g.hashCode();
        int hashCode7 = this.f22472h != null ? this.f22472h.hashCode() : 0;
        int hashCode8 = this.f22473i != null ? this.f22473i.hashCode() : 0;
        int hashCode9 = this.f22474j != null ? this.f22474j.hashCode() : 0;
        if (this.f22475k != null) {
            i = this.f22475k.hashCode();
        }
        return ((hashCode9 + ((hashCode8 + ((hashCode7 + ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31)) * 31)) * 31)) * 31) + i;
    }

    @Nullable
    /* renamed from: i */
    public SSLSocketFactory m830i() {
        return this.f22473i;
    }

    @Nullable
    /* renamed from: j */
    public HostnameVerifier m829j() {
        return this.f22474j;
    }

    @Nullable
    /* renamed from: k */
    public C5418g m828k() {
        return this.f22475k;
    }

    public String toString() {
        StringBuilder append = new StringBuilder().append("Address{").append(this.f22465a.m248f()).append(":").append(this.f22465a.m247g());
        if (this.f22472h != null) {
            append.append(", proxy=").append(this.f22472h);
        } else {
            append.append(", proxySelector=").append(this.f22471g);
        }
        append.append("}");
        return append.toString();
    }
}
