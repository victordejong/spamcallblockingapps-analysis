package com.b.a.a.a;

import com.b.a.a;
import com.b.a.a.d;
import com.b.a.a.g;
import com.b.a.a.h;
import com.b.a.k;
import com.b.a.s;
import com.b.a.u;
import com.b.a.y;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLProtocolException;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    final a f3218a;

    /* renamed from: b  reason: collision with root package name */
    final URI f3219b;
    final g c;
    Proxy d;
    InetSocketAddress e;
    k f;
    List<Proxy> g;
    int h;
    int j;
    int l;
    private final d n;
    private final s o;
    private final u p;
    List<InetSocketAddress> i = Collections.emptyList();
    List<k> k = Collections.emptyList();
    final List<y> m = new ArrayList();

    public n(a aVar, URI uri, s sVar, u uVar) {
        this.g = Collections.emptyList();
        this.f3218a = aVar;
        this.f3219b = uri;
        this.o = sVar;
        this.c = com.b.a.a.a.f3188b.b(sVar);
        this.n = com.b.a.a.a.f3188b.c(sVar);
        this.p = uVar;
        Proxy proxy = aVar.f3185a;
        if (proxy != null) {
            this.g = Collections.singletonList(proxy);
        } else {
            this.g = new ArrayList();
            List<Proxy> select = this.o.j.select(uri);
            if (select != null) {
                this.g.addAll(select);
            }
            this.g.removeAll(Collections.singleton(Proxy.NO_PROXY));
            this.g.add(Proxy.NO_PROXY);
        }
        this.h = 0;
    }

    public final void a(y yVar, IOException iOException) {
        if (!(yVar.f3355b.type() == Proxy.Type.DIRECT || this.f3218a.k == null)) {
            this.f3218a.k.connectFailed(this.f3219b, yVar.f3355b.address(), iOException);
        }
        this.c.a(yVar);
        if (!(iOException instanceof SSLHandshakeException) && !(iOException instanceof SSLProtocolException)) {
            while (this.l < this.k.size()) {
                List<k> list = this.k;
                int i = this.l;
                this.l = i + 1;
                k kVar = list.get(i);
                this.c.a(new y(this.f3218a, this.d, this.e, kVar, a(kVar)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Proxy proxy) {
        int i;
        String str;
        this.i = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f3218a.f3186b;
            i = h.a(this.f3219b);
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            InetAddress address2 = inetSocketAddress.getAddress();
            str = address2 == null ? inetSocketAddress.getHostName() : address2.getHostAddress();
            i = inetSocketAddress.getPort();
        }
        if (i <= 0 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        }
        for (InetAddress inetAddress : this.n.a(str)) {
            this.i.add(new InetSocketAddress(inetAddress, i));
        }
        this.j = 0;
    }

    public final boolean a() {
        return this.h < this.g.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(k kVar) {
        boolean z = false;
        if (kVar != this.k.get(0)) {
            z = false;
            if (kVar.d) {
                z = true;
            }
        }
        return z;
    }

    public final boolean b() {
        return this.j < this.i.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.k = new ArrayList();
        List<k> list = this.f3218a.j;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            k kVar = list.get(i);
            if (this.p.e() == kVar.d) {
                this.k.add(kVar);
            }
        }
        this.l = 0;
    }

    public final boolean d() {
        return this.l < this.k.size();
    }

    public final boolean e() {
        return !this.m.isEmpty();
    }
}
