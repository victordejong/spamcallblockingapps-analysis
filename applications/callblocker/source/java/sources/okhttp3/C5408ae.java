package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;
/* renamed from: okhttp3.ae */
/* loaded from: classes-dex2jar.jar:okhttp3/ae.class */
public final class C5408ae {

    /* renamed from: a */
    final C5399a f22519a;

    /* renamed from: b */
    final Proxy f22520b;

    /* renamed from: c */
    final InetSocketAddress f22521c;

    public C5408ae(C5399a c5399a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c5399a == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f22519a = c5399a;
        this.f22520b = proxy;
        this.f22521c = inetSocketAddress;
    }

    /* renamed from: a */
    public C5399a m777a() {
        return this.f22519a;
    }

    /* renamed from: b */
    public Proxy m776b() {
        return this.f22520b;
    }

    /* renamed from: c */
    public InetSocketAddress m775c() {
        return this.f22521c;
    }

    /* renamed from: d */
    public boolean m774d() {
        return this.f22519a.f22473i != null && this.f22520b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C5408ae) && ((C5408ae) obj).f22519a.equals(this.f22519a) && ((C5408ae) obj).f22520b.equals(this.f22520b) && ((C5408ae) obj).f22521c.equals(this.f22521c);
    }

    public int hashCode() {
        return ((((this.f22519a.hashCode() + 527) * 31) + this.f22520b.hashCode()) * 31) + this.f22521c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f22521c + "}";
    }
}
