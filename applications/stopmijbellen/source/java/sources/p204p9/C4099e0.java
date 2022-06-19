package p204p9;

import android.support.p012v4.media.C0082b;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
import javax.annotation.Nullable;
/* renamed from: p9.e0 */
/* loaded from: classes2-dex2jar.jar:p9/e0.class */
public final class C4099e0 {

    /* renamed from: a */
    public final C4080a f12875a;

    /* renamed from: b */
    public final Proxy f12876b;

    /* renamed from: c */
    public final InetSocketAddress f12877c;

    public C4099e0(C4080a c4080a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(c4080a, "address == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.f12875a = c4080a;
        this.f12876b = proxy;
        this.f12877c = inetSocketAddress;
    }

    /* renamed from: a */
    public boolean m1422a() {
        return this.f12875a.f12793i != null && this.f12876b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof C4099e0) {
            C4099e0 c4099e0 = (C4099e0) obj;
            if (c4099e0.f12875a.equals(this.f12875a) && c4099e0.f12876b.equals(this.f12876b) && c4099e0.f12877c.equals(this.f12877c)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        int hashCode = this.f12875a.hashCode();
        return this.f12877c.hashCode() + ((this.f12876b.hashCode() + ((hashCode + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Route{");
        m8752j.append(this.f12877c);
        m8752j.append("}");
        return m8752j.toString();
    }
}
