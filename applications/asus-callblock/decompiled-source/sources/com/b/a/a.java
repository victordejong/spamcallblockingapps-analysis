package com.b.a;

import com.b.a.a.h;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/b/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Proxy f3185a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3186b;
    public final int c;
    final SocketFactory d;
    final SSLSocketFactory e;
    final HostnameVerifier f;
    final f g;
    final b h;
    final List<t> i;
    public final List<k> j;
    public final ProxySelector k;

    public a(String str, int i, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, f fVar, b bVar, Proxy proxy, List<t> list, List<k> list2, ProxySelector proxySelector) {
        if (str == null) {
            throw new NullPointerException("uriHost == null");
        } else if (i <= 0) {
            throw new IllegalArgumentException("uriPort <= 0: " + i);
        } else if (bVar == null) {
            throw new IllegalArgumentException("authenticator == null");
        } else if (list == null) {
            throw new IllegalArgumentException("protocols == null");
        } else if (proxySelector == null) {
            throw new IllegalArgumentException("proxySelector == null");
        } else {
            this.f3185a = proxy;
            this.f3186b = str;
            this.c = i;
            this.d = socketFactory;
            this.e = sSLSocketFactory;
            this.f = hostnameVerifier;
            this.g = fVar;
            this.h = bVar;
            this.i = h.a(list);
            this.j = h.a(list2);
            this.k = proxySelector;
        }
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof a) {
            a aVar = (a) obj;
            z = false;
            if (h.a(this.f3185a, aVar.f3185a)) {
                z = false;
                if (this.f3186b.equals(aVar.f3186b)) {
                    z = false;
                    if (this.c == aVar.c) {
                        z = false;
                        if (h.a(this.e, aVar.e)) {
                            z = false;
                            if (h.a(this.f, aVar.f)) {
                                z = false;
                                if (h.a(this.g, aVar.g)) {
                                    z = false;
                                    if (h.a(this.h, aVar.h)) {
                                        z = false;
                                        if (h.a(this.i, aVar.i)) {
                                            z = false;
                                            if (h.a(this.j, aVar.j)) {
                                                z = false;
                                                if (h.a(this.k, aVar.k)) {
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

    public final int hashCode() {
        int i = 0;
        int hashCode = this.f3185a != null ? this.f3185a.hashCode() : 0;
        int hashCode2 = this.f3186b.hashCode();
        int i2 = this.c;
        int hashCode3 = this.e != null ? this.e.hashCode() : 0;
        int hashCode4 = this.f != null ? this.f.hashCode() : 0;
        if (this.g != null) {
            i = this.g.hashCode();
        }
        return ((((((((((hashCode4 + ((hashCode3 + ((((((hashCode + 527) * 31) + hashCode2) * 31) + i2) * 31)) * 31)) * 31) + i) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + this.j.hashCode()) * 31) + this.k.hashCode();
    }
}
