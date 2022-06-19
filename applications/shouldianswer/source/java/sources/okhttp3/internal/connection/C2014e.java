package okhttp3.internal.connection;

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
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC2082p;
import okhttp3.C1952a;
import okhttp3.C1959ad;
import okhttp3.C2089s;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.internal.connection.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/e.class */
public final class C2014e {

    /* renamed from: a */
    private final C1952a f5049a;

    /* renamed from: b */
    private final C2013d f5050b;

    /* renamed from: c */
    private final AbstractC1966e f5051c;

    /* renamed from: d */
    private final AbstractC2082p f5052d;

    /* renamed from: f */
    private int f5054f;

    /* renamed from: e */
    private List<Proxy> f5053e = Collections.emptyList();

    /* renamed from: g */
    private List<InetSocketAddress> f5055g = Collections.emptyList();

    /* renamed from: h */
    private final List<C1959ad> f5056h = new ArrayList();

    /* renamed from: okhttp3.internal.connection.e$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/e$a.class */
    public static final class C2015a {

        /* renamed from: a */
        private final List<C1959ad> f5057a;

        /* renamed from: b */
        private int f5058b = 0;

        C2015a(List<C1959ad> list) {
            this.f5057a = list;
        }

        /* renamed from: a */
        public boolean m2280a() {
            return this.f5058b < this.f5057a.size();
        }

        /* renamed from: b */
        public C1959ad m2279b() {
            if (m2280a()) {
                List<C1959ad> list = this.f5057a;
                int i = this.f5058b;
                this.f5058b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }

        /* renamed from: c */
        public List<C1959ad> m2278c() {
            return new ArrayList(this.f5057a);
        }
    }

    public C2014e(C1952a c1952a, C2013d c2013d, AbstractC1966e abstractC1966e, AbstractC2082p abstractC2082p) {
        this.f5049a = c1952a;
        this.f5050b = c2013d;
        this.f5051c = abstractC1966e;
        this.f5052d = abstractC2082p;
        m2284a(c1952a.m2509a(), c1952a.m2501h());
    }

    /* renamed from: a */
    static String m2287a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    /* renamed from: a */
    private void m2286a(Proxy proxy) {
        int i;
        String str;
        this.f5055g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f5049a.m2509a().m1934g();
            i = this.f5049a.m2509a().m1933h();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            str = m2287a(inetSocketAddress);
            i = inetSocketAddress.getPort();
        }
        if (i < 1 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        } else if (proxy.type() == Proxy.Type.SOCKS) {
            this.f5055g.add(InetSocketAddress.createUnresolved(str, i));
        } else {
            this.f5052d.m1992a(this.f5051c, str);
            List<InetAddress> mo1996a = this.f5049a.m2507b().mo1996a(str);
            if (mo1996a.isEmpty()) {
                throw new UnknownHostException(this.f5049a.m2507b() + " returned no addresses for " + str);
            }
            this.f5052d.m1991a(this.f5051c, str, mo1996a);
            int size = mo1996a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f5055g.add(new InetSocketAddress(mo1996a.get(i2), i));
            }
        }
    }

    /* renamed from: a */
    private void m2284a(C2089s c2089s, Proxy proxy) {
        if (proxy != null) {
            this.f5053e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f5049a.m2502g().select(c2089s.m1944b());
            this.f5053e = (select == null || select.isEmpty()) ? C1999c.m2335a(Proxy.NO_PROXY) : C1999c.m2338a(select);
        }
        this.f5054f = 0;
    }

    /* renamed from: c */
    private boolean m2282c() {
        return this.f5054f < this.f5053e.size();
    }

    /* renamed from: d */
    private Proxy m2281d() {
        if (m2282c()) {
            List<Proxy> list = this.f5053e;
            int i = this.f5054f;
            this.f5054f = i + 1;
            Proxy proxy = list.get(i);
            m2286a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f5049a.m2509a().m1934g() + "; exhausted proxy configurations: " + this.f5053e);
    }

    /* renamed from: a */
    public void m2285a(C1959ad c1959ad, IOException iOException) {
        if (c1959ad.m2458b().type() != Proxy.Type.DIRECT && this.f5049a.m2502g() != null) {
            this.f5049a.m2502g().connectFailed(this.f5049a.m2509a().m1944b(), c1959ad.m2458b().address(), iOException);
        }
        this.f5050b.m2291a(c1959ad);
    }

    /* renamed from: a */
    public boolean m2288a() {
        return m2282c() || !this.f5056h.isEmpty();
    }

    /* renamed from: b */
    public C2015a m2283b() {
        if (m2288a()) {
            ArrayList arrayList = new ArrayList();
            while (m2282c()) {
                Proxy m2281d = m2281d();
                int size = this.f5055g.size();
                for (int i = 0; i < size; i++) {
                    C1959ad c1959ad = new C1959ad(this.f5049a, m2281d, this.f5055g.get(i));
                    if (this.f5050b.m2289c(c1959ad)) {
                        this.f5056h.add(c1959ad);
                    } else {
                        arrayList.add(c1959ad);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.f5056h);
                this.f5056h.clear();
            }
            return new C2015a(arrayList);
        }
        throw new NoSuchElementException();
    }
}
