package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;
/* renamed from: okhttp3.ad */
/* loaded from: classes-dex2jar.jar:okhttp3/ad.class */
public final class C1959ad {

    /* renamed from: a */
    final C1952a f4745a;

    /* renamed from: b */
    final Proxy f4746b;

    /* renamed from: c */
    final InetSocketAddress f4747c;

    public C1959ad(C1952a c1952a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c1952a != null) {
            if (proxy == null) {
                throw new NullPointerException("proxy == null");
            }
            if (inetSocketAddress == null) {
                throw new NullPointerException("inetSocketAddress == null");
            }
            this.f4745a = c1952a;
            this.f4746b = proxy;
            this.f4747c = inetSocketAddress;
            return;
        }
        throw new NullPointerException("address == null");
    }

    /* renamed from: a */
    public C1952a m2459a() {
        return this.f4745a;
    }

    /* renamed from: b */
    public Proxy m2458b() {
        return this.f4746b;
    }

    /* renamed from: c */
    public InetSocketAddress m2457c() {
        return this.f4747c;
    }

    /* renamed from: d */
    public boolean m2456d() {
        return this.f4745a.f4710i != null && this.f4746b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof C1959ad) {
            C1959ad c1959ad = (C1959ad) obj;
            if (c1959ad.f4745a.equals(this.f4745a) && c1959ad.f4746b.equals(this.f4746b) && c1959ad.f4747c.equals(this.f4747c)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return ((((527 + this.f4745a.hashCode()) * 31) + this.f4746b.hashCode()) * 31) + this.f4747c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f4747c + "}";
    }
}
