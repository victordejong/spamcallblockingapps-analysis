package com.bytedance.sdk.a.b.a.b;

import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.ac;
import com.bytedance.sdk.a.b.e;
import com.bytedance.sdk.a.b.p;
import com.bytedance.sdk.a.b.s;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final com.bytedance.sdk.a.b.a f7867a;

    /* renamed from: b  reason: collision with root package name */
    private final d f7868b;

    /* renamed from: c  reason: collision with root package name */
    private final e f7869c;

    /* renamed from: d  reason: collision with root package name */
    private final p f7870d;
    private int f;
    private List<Proxy> e = Collections.emptyList();
    private List<InetSocketAddress> g = Collections.emptyList();
    private final List<ac> h = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<ac> f7871a;

        /* renamed from: b  reason: collision with root package name */
        private int f7872b = 0;

        a(List<ac> list) {
            this.f7871a = list;
        }

        public final boolean a() {
            return this.f7872b < this.f7871a.size();
        }

        public final ac b() {
            if (a()) {
                List<ac> list = this.f7871a;
                int i = this.f7872b;
                this.f7872b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }

        public final List<ac> c() {
            return new ArrayList(this.f7871a);
        }
    }

    public f(com.bytedance.sdk.a.b.a aVar, d dVar, e eVar, p pVar) {
        this.f7867a = aVar;
        this.f7868b = dVar;
        this.f7869c = eVar;
        this.f7870d = pVar;
        a(aVar.a(), aVar.h());
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private void a(s sVar, Proxy proxy) {
        List<Proxy> list;
        if (proxy != null) {
            list = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f7867a.g().select(sVar.a());
            list = (select == null || select.isEmpty()) ? c.a(Proxy.NO_PROXY) : c.a(select);
        }
        this.e = list;
        this.f = 0;
    }

    private void a(Proxy proxy) throws IOException {
        int i;
        String str;
        this.g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f7867a.a().f();
            i = this.f7867a.a().g();
        } else {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                str = a(inetSocketAddress);
                i = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        }
        if (i <= 0 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        } else if (proxy.type() == Proxy.Type.SOCKS) {
            this.g.add(InetSocketAddress.createUnresolved(str, i));
        } else {
            this.f7870d.a(this.f7869c, str);
            List<InetAddress> a2 = this.f7867a.b().a(str);
            if (!a2.isEmpty()) {
                this.f7870d.a(this.f7869c, str, a2);
                int size = a2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.g.add(new InetSocketAddress(a2.get(i2), i));
                }
                return;
            }
            throw new UnknownHostException(this.f7867a.b() + " returned no addresses for " + str);
        }
    }

    private boolean c() {
        return this.f < this.e.size();
    }

    private Proxy d() throws IOException {
        if (c()) {
            List<Proxy> list = this.e;
            int i = this.f;
            this.f = i + 1;
            Proxy proxy = list.get(i);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f7867a.a().f() + "; exhausted proxy configurations: " + this.e);
    }

    public final void a(ac acVar, IOException iOException) {
        if (!(acVar.b().type() == Proxy.Type.DIRECT || this.f7867a.g() == null)) {
            this.f7867a.g().connectFailed(this.f7867a.a().a(), acVar.b().address(), iOException);
        }
        this.f7868b.a(acVar);
    }

    public final boolean a() {
        return c() || !this.h.isEmpty();
    }

    public final a b() throws IOException {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (c()) {
                Proxy d2 = d();
                int size = this.g.size();
                for (int i = 0; i < size; i++) {
                    ac acVar = new ac(this.f7867a, d2, this.g.get(i));
                    if (this.f7868b.c(acVar)) {
                        this.h.add(acVar);
                    } else {
                        arrayList.add(acVar);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.h);
                this.h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }
}
