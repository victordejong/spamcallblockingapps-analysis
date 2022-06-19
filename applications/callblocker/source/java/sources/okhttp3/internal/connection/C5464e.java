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
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5532p;
import okhttp3.C5399a;
import okhttp3.C5408ae;
import okhttp3.C5541t;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.internal.connection.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/e.class */
public final class C5464e {

    /* renamed from: a */
    private final C5399a f22823a;

    /* renamed from: b */
    private final C5463d f22824b;

    /* renamed from: c */
    private final AbstractC5415e f22825c;

    /* renamed from: d */
    private final AbstractC5532p f22826d;

    /* renamed from: f */
    private int f22828f;

    /* renamed from: e */
    private List<Proxy> f22827e = Collections.emptyList();

    /* renamed from: g */
    private List<InetSocketAddress> f22829g = Collections.emptyList();

    /* renamed from: h */
    private final List<C5408ae> f22830h = new ArrayList();

    /* renamed from: okhttp3.internal.connection.e$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/e$a.class */
    public static final class C5465a {

        /* renamed from: a */
        private final List<C5408ae> f22831a;

        /* renamed from: b */
        private int f22832b = 0;

        C5465a(List<C5408ae> list) {
            this.f22831a = list;
        }

        /* renamed from: a */
        public boolean m599a() {
            return this.f22832b < this.f22831a.size();
        }

        /* renamed from: b */
        public C5408ae m598b() {
            if (!m599a()) {
                throw new NoSuchElementException();
            }
            List<C5408ae> list = this.f22831a;
            int i = this.f22832b;
            this.f22832b = i + 1;
            return list.get(i);
        }

        /* renamed from: c */
        public List<C5408ae> m597c() {
            return new ArrayList(this.f22831a);
        }
    }

    public C5464e(C5399a c5399a, C5463d c5463d, AbstractC5415e abstractC5415e, AbstractC5532p abstractC5532p) {
        this.f22823a = c5399a;
        this.f22824b = c5463d;
        this.f22825c = abstractC5415e;
        this.f22826d = abstractC5532p;
        m603a(c5399a.m839a(), c5399a.m831h());
    }

    /* renamed from: a */
    static String m606a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    /* renamed from: a */
    private void m605a(Proxy proxy) {
        int i;
        String str;
        this.f22829g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f22823a.m839a().m248f();
            i = this.f22823a.m839a().m247g();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            str = m606a(inetSocketAddress);
            i = inetSocketAddress.getPort();
        }
        if (i < 1 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f22829g.add(InetSocketAddress.createUnresolved(str, i));
            return;
        }
        this.f22826d.m310a(this.f22825c, str);
        List<InetAddress> mo314a = this.f22823a.m837b().mo314a(str);
        if (mo314a.isEmpty()) {
            throw new UnknownHostException(this.f22823a.m837b() + " returned no addresses for " + str);
        }
        this.f22826d.m309a(this.f22825c, str, mo314a);
        int size = mo314a.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f22829g.add(new InetSocketAddress(mo314a.get(i2), i));
        }
    }

    /* renamed from: a */
    private void m603a(C5541t c5541t, Proxy proxy) {
        if (proxy != null) {
            this.f22827e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f22823a.m832g().select(c5541t.m269a());
            this.f22827e = (select == null || select.isEmpty()) ? C5449c.m655a(Proxy.NO_PROXY) : C5449c.m658a(select);
        }
        this.f22828f = 0;
    }

    /* renamed from: c */
    private boolean m601c() {
        return this.f22828f < this.f22827e.size();
    }

    /* renamed from: d */
    private Proxy m600d() {
        if (!m601c()) {
            throw new SocketException("No route to " + this.f22823a.m839a().m248f() + "; exhausted proxy configurations: " + this.f22827e);
        }
        List<Proxy> list = this.f22827e;
        int i = this.f22828f;
        this.f22828f = i + 1;
        Proxy proxy = list.get(i);
        m605a(proxy);
        return proxy;
    }

    /* renamed from: a */
    public void m604a(C5408ae c5408ae, IOException iOException) {
        if (c5408ae.m776b().type() != Proxy.Type.DIRECT && this.f22823a.m832g() != null) {
            this.f22823a.m832g().connectFailed(this.f22823a.m839a().m269a(), c5408ae.m776b().address(), iOException);
        }
        this.f22824b.m610a(c5408ae);
    }

    /* renamed from: a */
    public boolean m607a() {
        return m601c() || !this.f22830h.isEmpty();
    }

    /* renamed from: b */
    public C5465a m602b() {
        if (!m607a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (m601c()) {
            Proxy m600d = m600d();
            int size = this.f22829g.size();
            for (int i = 0; i < size; i++) {
                C5408ae c5408ae = new C5408ae(this.f22823a, m600d, this.f22829g.get(i));
                if (this.f22824b.m608c(c5408ae)) {
                    this.f22830h.add(c5408ae);
                } else {
                    arrayList.add(c5408ae);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f22830h);
            this.f22830h.clear();
        }
        return new C5465a(arrayList);
    }
}
