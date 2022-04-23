package com.b.a;

import java.net.InetSocketAddress;
import java.net.Proxy;
/* loaded from: classes-dex2jar.jar:com/b/a/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public final a f3354a;

    /* renamed from: b  reason: collision with root package name */
    public final Proxy f3355b;
    final InetSocketAddress c;
    final k d;
    final boolean e;

    public y(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress, k kVar, boolean z) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        } else if (proxy == null) {
            throw new NullPointerException("proxy == null");
        } else if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        } else if (kVar == null) {
            throw new NullPointerException("connectionConfiguration == null");
        } else {
            this.f3354a = aVar;
            this.f3355b = proxy;
            this.c = inetSocketAddress;
            this.d = kVar;
            this.e = z;
        }
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof y) {
            y yVar = (y) obj;
            z = false;
            if (this.f3354a.equals(yVar.f3354a)) {
                z = false;
                if (this.f3355b.equals(yVar.f3355b)) {
                    z = false;
                    if (this.c.equals(yVar.c)) {
                        z = false;
                        if (this.d.equals(yVar.d)) {
                            z = false;
                            if (this.e == yVar.e) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int hashCode = this.f3354a.hashCode();
        int hashCode2 = this.f3355b.hashCode();
        int hashCode3 = this.c.hashCode();
        return (this.e ? 1 : 0) + ((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + this.d.hashCode()) * 31);
    }
}
