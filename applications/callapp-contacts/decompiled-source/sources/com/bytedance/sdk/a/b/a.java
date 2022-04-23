package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.s;
import com.mopub.common.Constants;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final s f7826a;

    /* renamed from: b  reason: collision with root package name */
    final o f7827b;

    /* renamed from: c  reason: collision with root package name */
    final SocketFactory f7828c;

    /* renamed from: d  reason: collision with root package name */
    final b f7829d;
    final List<w> e;
    final List<k> f;
    final ProxySelector g;
    final Proxy h;
    final SSLSocketFactory i;
    final HostnameVerifier j;
    final g k;

    public a(String str, int i, o oVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, g gVar, b bVar, Proxy proxy, List<w> list, List<k> list2, ProxySelector proxySelector) {
        this.f7826a = new s.a().a(sSLSocketFactory != null ? Constants.HTTPS : "http").d(str).a(i).c();
        Objects.requireNonNull(oVar, "dns == null");
        this.f7827b = oVar;
        Objects.requireNonNull(socketFactory, "socketFactory == null");
        this.f7828c = socketFactory;
        Objects.requireNonNull(bVar, "proxyAuthenticator == null");
        this.f7829d = bVar;
        Objects.requireNonNull(list, "protocols == null");
        this.e = c.a(list);
        Objects.requireNonNull(list2, "connectionSpecs == null");
        this.f = c.a(list2);
        Objects.requireNonNull(proxySelector, "proxySelector == null");
        this.g = proxySelector;
        this.h = proxy;
        this.i = sSLSocketFactory;
        this.j = hostnameVerifier;
        this.k = gVar;
    }

    public final s a() {
        return this.f7826a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(a aVar) {
        return this.f7827b.equals(aVar.f7827b) && this.f7829d.equals(aVar.f7829d) && this.e.equals(aVar.e) && this.f.equals(aVar.f) && this.g.equals(aVar.g) && c.a(this.h, aVar.h) && c.a(this.i, aVar.i) && c.a(this.j, aVar.j) && c.a(this.k, aVar.k) && a().g() == aVar.a().g();
    }

    public final o b() {
        return this.f7827b;
    }

    public final SocketFactory c() {
        return this.f7828c;
    }

    public final b d() {
        return this.f7829d;
    }

    public final List<w> e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f7826a.equals(aVar.f7826a) && a(aVar);
    }

    public final List<k> f() {
        return this.f;
    }

    public final ProxySelector g() {
        return this.g;
    }

    public final Proxy h() {
        return this.h;
    }

    public final int hashCode() {
        int hashCode = this.f7826a.hashCode();
        int hashCode2 = this.f7827b.hashCode();
        int hashCode3 = this.f7829d.hashCode();
        int hashCode4 = this.e.hashCode();
        int hashCode5 = this.f.hashCode();
        int hashCode6 = this.g.hashCode();
        Proxy proxy = this.h;
        int i = 0;
        int hashCode7 = proxy != null ? proxy.hashCode() : 0;
        SSLSocketFactory sSLSocketFactory = this.i;
        int hashCode8 = sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0;
        HostnameVerifier hostnameVerifier = this.j;
        int hashCode9 = hostnameVerifier != null ? hostnameVerifier.hashCode() : 0;
        g gVar = this.k;
        if (gVar != null) {
            i = gVar.hashCode();
        }
        return ((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public final SSLSocketFactory i() {
        return this.i;
    }

    public final HostnameVerifier j() {
        return this.j;
    }

    public final g k() {
        return this.k;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.f7826a.f());
        sb.append(":");
        sb.append(this.f7826a.g());
        if (this.h != null) {
            sb.append(", proxy=");
            sb.append(this.h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.g);
        }
        sb.append("}");
        return sb.toString();
    }
}
