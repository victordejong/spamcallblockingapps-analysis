package p599h.p600d0.p602f;

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
import p599h.AbstractC10210e;
import p599h.AbstractC10229p;
import p599h.C10090a;
import p599h.C10104c0;
import p599h.C10236s;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.f.e */
/* loaded from: classes2-dex2jar.jar:h/d0/f/e.class */
public final class C10131e {

    /* renamed from: a */
    public final C10090a f37413a;

    /* renamed from: b */
    public final C10130d f37414b;

    /* renamed from: c */
    public final AbstractC10210e f37415c;

    /* renamed from: d */
    public final AbstractC10229p f37416d;

    /* renamed from: f */
    public int f37418f;

    /* renamed from: e */
    public List<Proxy> f37417e = Collections.emptyList();

    /* renamed from: g */
    public List<InetSocketAddress> f37419g = Collections.emptyList();

    /* renamed from: h */
    public final List<C10104c0> f37420h = new ArrayList();

    /* renamed from: h.d0.f.e$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/f/e$a.class */
    public static final class C10132a {

        /* renamed from: a */
        public final List<C10104c0> f37421a;

        /* renamed from: b */
        public int f37422b = 0;

        public C10132a(List<C10104c0> list) {
            this.f37421a = list;
        }

        /* renamed from: a */
        public List<C10104c0> m1352a() {
            return new ArrayList(this.f37421a);
        }

        /* renamed from: b */
        public boolean m1351b() {
            return this.f37422b < this.f37421a.size();
        }

        /* renamed from: c */
        public C10104c0 m1350c() {
            if (m1351b()) {
                List<C10104c0> list = this.f37421a;
                int i = this.f37422b;
                this.f37422b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }
    }

    public C10131e(C10090a aVar, C10130d dVar, AbstractC10210e eVar, AbstractC10229p pVar) {
        this.f37413a = aVar;
        this.f37414b = dVar;
        this.f37415c = eVar;
        this.f37416d = pVar;
        m1358a(aVar.m1544k(), aVar.m1549f());
    }

    /* renamed from: a */
    public static String m1357a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    /* renamed from: a */
    public void m1359a(C10104c0 c0Var, IOException iOException) {
        if (!(c0Var.m1488b().type() == Proxy.Type.DIRECT || this.f37413a.m1547h() == null)) {
            this.f37413a.m1547h().connectFailed(this.f37413a.m1544k().m927n(), c0Var.m1488b().address(), iOException);
        }
        this.f37414b.m1362b(c0Var);
    }

    /* renamed from: a */
    public final void m1358a(C10236s sVar, Proxy proxy) {
        if (proxy != null) {
            this.f37417e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f37413a.m1547h().select(sVar.m927n());
            this.f37417e = (select == null || select.isEmpty()) ? C10109c.m1444a(Proxy.NO_PROXY) : C10109c.m1447a(select);
        }
        this.f37418f = 0;
    }

    /* renamed from: a */
    public final void m1356a(Proxy proxy) throws IOException {
        int i;
        String str;
        this.f37419g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f37413a.m1544k().m934g();
            i = this.f37413a.m1544k().m931j();
        } else {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                str = m1357a(inetSocketAddress);
                i = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        }
        if (i < 1 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        } else if (proxy.type() == Proxy.Type.SOCKS) {
            this.f37419g.add(InetSocketAddress.createUnresolved(str, i));
        } else {
            this.f37416d.m994a(this.f37415c, str);
            List<InetAddress> a = this.f37413a.m1552c().mo1002a(str);
            if (!a.isEmpty()) {
                this.f37416d.m993a(this.f37415c, str, a);
                int size = a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f37419g.add(new InetSocketAddress(a.get(i2), i));
                }
                return;
            }
            throw new UnknownHostException(this.f37413a.m1552c() + " returned no addresses for " + str);
        }
    }

    /* renamed from: a */
    public boolean m1360a() {
        return m1355b() || !this.f37420h.isEmpty();
    }

    /* renamed from: b */
    public final boolean m1355b() {
        return this.f37418f < this.f37417e.size();
    }

    /* renamed from: c */
    public C10132a m1354c() throws IOException {
        if (m1360a()) {
            ArrayList arrayList = new ArrayList();
            while (m1355b()) {
                Proxy d = m1353d();
                int size = this.f37419g.size();
                for (int i = 0; i < size; i++) {
                    C10104c0 c0Var = new C10104c0(this.f37413a, d, this.f37419g.get(i));
                    if (this.f37414b.m1361c(c0Var)) {
                        this.f37420h.add(c0Var);
                    } else {
                        arrayList.add(c0Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.f37420h);
                this.f37420h.clear();
            }
            return new C10132a(arrayList);
        }
        throw new NoSuchElementException();
    }

    /* renamed from: d */
    public final Proxy m1353d() throws IOException {
        if (m1355b()) {
            List<Proxy> list = this.f37417e;
            int i = this.f37418f;
            this.f37418f = i + 1;
            Proxy proxy = list.get(i);
            m1356a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f37413a.m1544k().m934g() + "; exhausted proxy configurations: " + this.f37417e);
    }
}
