package com.bytedance.sdk.a.b;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    final a f8072a;

    /* renamed from: b  reason: collision with root package name */
    final Proxy f8073b;

    /* renamed from: c  reason: collision with root package name */
    final InetSocketAddress f8074c;

    public ac(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(aVar, "address == null");
        Objects.requireNonNull(proxy, "proxy == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.f8072a = aVar;
        this.f8073b = proxy;
        this.f8074c = inetSocketAddress;
    }

    public final a a() {
        return this.f8072a;
    }

    public final Proxy b() {
        return this.f8073b;
    }

    public final InetSocketAddress c() {
        return this.f8074c;
    }

    public final boolean d() {
        return this.f8072a.i != null && this.f8073b.type() == Proxy.Type.HTTP;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ac)) {
            return false;
        }
        ac acVar = (ac) obj;
        return acVar.f8072a.equals(this.f8072a) && acVar.f8073b.equals(this.f8073b) && acVar.f8074c.equals(this.f8074c);
    }

    public final int hashCode() {
        return ((((this.f8072a.hashCode() + 527) * 31) + this.f8073b.hashCode()) * 31) + this.f8074c.hashCode();
    }

    public final String toString() {
        return "Route{" + this.f8074c + "}";
    }
}
