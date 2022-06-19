package com.bytedance.sdk.p127a.p129b;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.b.ac */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/ac.class */
public final class C4102ac {

    /* renamed from: a */
    final C3994a f14904a;

    /* renamed from: b */
    final Proxy f14905b;

    /* renamed from: c */
    final InetSocketAddress f14906c;

    public C4102ac(C3994a c3994a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(c3994a, "address == null");
        Objects.requireNonNull(proxy, "proxy == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.f14904a = c3994a;
        this.f14905b = proxy;
        this.f14906c = inetSocketAddress;
    }

    /* renamed from: a */
    public final C3994a m36575a() {
        return this.f14904a;
    }

    /* renamed from: b */
    public final Proxy m36574b() {
        return this.f14905b;
    }

    /* renamed from: c */
    public final InetSocketAddress m36573c() {
        return this.f14906c;
    }

    /* renamed from: d */
    public final boolean m36572d() {
        return this.f14904a.f14475i != null && this.f14905b.type() == Proxy.Type.HTTP;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C4102ac) {
            C4102ac c4102ac = (C4102ac) obj;
            return c4102ac.f14904a.equals(this.f14904a) && c4102ac.f14905b.equals(this.f14905b) && c4102ac.f14906c.equals(this.f14906c);
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f14904a.hashCode() + 527) * 31) + this.f14905b.hashCode()) * 31) + this.f14906c.hashCode();
    }

    public final String toString() {
        return "Route{" + this.f14906c + "}";
    }
}
