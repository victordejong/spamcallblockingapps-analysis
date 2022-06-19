package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;
/* renamed from: com.squareup.okhttp.t */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/t.class */
public final class C2963t {

    /* renamed from: a */
    final C2852a f12490a;

    /* renamed from: b */
    final Proxy f12491b;

    /* renamed from: c */
    final InetSocketAddress f12492c;

    public C2963t(C2852a c2852a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c2852a != null) {
            if (proxy == null) {
                throw new NullPointerException("proxy == null");
            }
            if (inetSocketAddress == null) {
                throw new NullPointerException("inetSocketAddress == null");
            }
            this.f12490a = c2852a;
            this.f12491b = proxy;
            this.f12492c = inetSocketAddress;
            return;
        }
        throw new NullPointerException("address == null");
    }

    /* renamed from: a */
    public C2852a m711a() {
        return this.f12490a;
    }

    /* renamed from: b */
    public Proxy m710b() {
        return this.f12491b;
    }

    /* renamed from: c */
    public InetSocketAddress m709c() {
        return this.f12492c;
    }

    /* renamed from: d */
    public boolean m708d() {
        return this.f12490a.f12065e != null && this.f12491b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C2963t) {
            C2963t c2963t = (C2963t) obj;
            z = false;
            if (this.f12490a.equals(c2963t.f12490a)) {
                z = false;
                if (this.f12491b.equals(c2963t.f12491b)) {
                    z = false;
                    if (this.f12492c.equals(c2963t.f12492c)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + this.f12490a.hashCode()) * 31) + this.f12491b.hashCode()) * 31) + this.f12492c.hashCode();
    }
}
