package com.squareup.okhttp;

import com.squareup.okhttp.p089u.C2975i;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.squareup.okhttp.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/a.class */
public final class C2852a {

    /* renamed from: a */
    final Proxy f12061a;

    /* renamed from: b */
    final String f12062b;

    /* renamed from: c */
    final int f12063c;

    /* renamed from: d */
    final SocketFactory f12064d;

    /* renamed from: e */
    final SSLSocketFactory f12065e;

    /* renamed from: f */
    final HostnameVerifier f12066f;

    /* renamed from: g */
    final C2858e f12067g;

    /* renamed from: h */
    final AbstractC2853b f12068h;

    /* renamed from: i */
    final List<Protocol> f12069i;

    /* renamed from: j */
    final List<C2864h> f12070j;

    /* renamed from: k */
    final ProxySelector f12071k;

    public C2852a(String str, int i, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C2858e eVar, AbstractC2853b bVar, Proxy proxy, List<Protocol> list, List<C2864h> list2, ProxySelector proxySelector) {
        if (str == null) {
            throw new NullPointerException("uriHost == null");
        } else if (i <= 0) {
            throw new IllegalArgumentException("uriPort <= 0: " + i);
        } else if (bVar == null) {
            throw new IllegalArgumentException("authenticator == null");
        } else if (list == null) {
            throw new IllegalArgumentException("protocols == null");
        } else if (proxySelector != null) {
            this.f12061a = proxy;
            this.f12062b = str;
            this.f12063c = i;
            this.f12064d = socketFactory;
            this.f12065e = sSLSocketFactory;
            this.f12066f = hostnameVerifier;
            this.f12067g = eVar;
            this.f12068h = bVar;
            this.f12069i = C2975i.m652h(list);
            this.f12070j = C2975i.m652h(list2);
            this.f12071k = proxySelector;
        } else {
            throw new IllegalArgumentException("proxySelector == null");
        }
    }

    /* renamed from: a */
    public AbstractC2853b m1328a() {
        return this.f12068h;
    }

    /* renamed from: b */
    public C2858e m1327b() {
        return this.f12067g;
    }

    /* renamed from: c */
    public List<C2864h> m1326c() {
        return this.f12070j;
    }

    /* renamed from: d */
    public HostnameVerifier m1325d() {
        return this.f12066f;
    }

    /* renamed from: e */
    public List<Protocol> m1324e() {
        return this.f12069i;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C2852a) {
            C2852a aVar = (C2852a) obj;
            z = false;
            if (C2975i.m654f(this.f12061a, aVar.f12061a)) {
                z = false;
                if (this.f12062b.equals(aVar.f12062b)) {
                    z = false;
                    if (this.f12063c == aVar.f12063c) {
                        z = false;
                        if (C2975i.m654f(this.f12065e, aVar.f12065e)) {
                            z = false;
                            if (C2975i.m654f(this.f12066f, aVar.f12066f)) {
                                z = false;
                                if (C2975i.m654f(this.f12067g, aVar.f12067g)) {
                                    z = false;
                                    if (C2975i.m654f(this.f12068h, aVar.f12068h)) {
                                        z = false;
                                        if (C2975i.m654f(this.f12069i, aVar.f12069i)) {
                                            z = false;
                                            if (C2975i.m654f(this.f12070j, aVar.f12070j)) {
                                                z = false;
                                                if (C2975i.m654f(this.f12071k, aVar.f12071k)) {
                                                    z = true;
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

    /* renamed from: f */
    public Proxy m1323f() {
        return this.f12061a;
    }

    /* renamed from: g */
    public ProxySelector m1322g() {
        return this.f12071k;
    }

    /* renamed from: h */
    public SocketFactory m1321h() {
        return this.f12064d;
    }

    public int hashCode() {
        Proxy proxy = this.f12061a;
        int i = 0;
        int hashCode = proxy != null ? proxy.hashCode() : 0;
        int hashCode2 = this.f12062b.hashCode();
        int i2 = this.f12063c;
        SSLSocketFactory sSLSocketFactory = this.f12065e;
        int hashCode3 = sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0;
        HostnameVerifier hostnameVerifier = this.f12066f;
        int hashCode4 = hostnameVerifier != null ? hostnameVerifier.hashCode() : 0;
        C2858e eVar = this.f12067g;
        if (eVar != null) {
            i = eVar.hashCode();
        }
        return ((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + this.f12068h.hashCode()) * 31) + this.f12069i.hashCode()) * 31) + this.f12070j.hashCode()) * 31) + this.f12071k.hashCode();
    }

    /* renamed from: i */
    public SSLSocketFactory m1320i() {
        return this.f12065e;
    }

    /* renamed from: j */
    public String m1319j() {
        return this.f12062b;
    }

    /* renamed from: k */
    public int m1318k() {
        return this.f12063c;
    }
}
