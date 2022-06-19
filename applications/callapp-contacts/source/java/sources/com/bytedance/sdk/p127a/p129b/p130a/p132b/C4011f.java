package com.bytedance.sdk.p127a.p129b.p130a.p132b;

import com.bytedance.sdk.p127a.p129b.AbstractC4109e;
import com.bytedance.sdk.p127a.p129b.AbstractC4127p;
import com.bytedance.sdk.p127a.p129b.C3994a;
import com.bytedance.sdk.p127a.p129b.C4102ac;
import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
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
/* renamed from: com.bytedance.sdk.a.b.a.b.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/f.class */
public final class C4011f {

    /* renamed from: a */
    private final C3994a f14548a;

    /* renamed from: b */
    private final C4009d f14549b;

    /* renamed from: c */
    private final AbstractC4109e f14550c;

    /* renamed from: d */
    private final AbstractC4127p f14551d;

    /* renamed from: f */
    private int f14553f;

    /* renamed from: e */
    private List<Proxy> f14552e = Collections.emptyList();

    /* renamed from: g */
    private List<InetSocketAddress> f14554g = Collections.emptyList();

    /* renamed from: h */
    private final List<C4102ac> f14555h = new ArrayList();

    /* renamed from: com.bytedance.sdk.a.b.a.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/f$a.class */
    public static final class C4012a {

        /* renamed from: a */
        private final List<C4102ac> f14556a;

        /* renamed from: b */
        private int f14557b = 0;

        C4012a(List<C4102ac> list) {
            this.f14556a = list;
        }

        /* renamed from: a */
        public final boolean m36938a() {
            return this.f14557b < this.f14556a.size();
        }

        /* renamed from: b */
        public final C4102ac m36937b() {
            if (m36938a()) {
                List<C4102ac> list = this.f14556a;
                int i = this.f14557b;
                this.f14557b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }

        /* renamed from: c */
        public final List<C4102ac> m36936c() {
            return new ArrayList(this.f14556a);
        }
    }

    public C4011f(C3994a c3994a, C4009d c4009d, AbstractC4109e abstractC4109e, AbstractC4127p abstractC4127p) {
        this.f14548a = c3994a;
        this.f14549b = c4009d;
        this.f14550c = abstractC4109e;
        this.f14551d = abstractC4127p;
        m36944a(c3994a.m37009a(), c3994a.m37001h());
    }

    /* renamed from: a */
    static String m36943a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    /* renamed from: a */
    private void m36944a(C4134s c4134s, Proxy proxy) {
        List<Proxy> list;
        if (proxy != null) {
            list = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f14548a.m37002g().select(c4134s.m36456a());
            list = (select == null || select.isEmpty()) ? C4015c.m36897a(Proxy.NO_PROXY) : C4015c.m36899a(select);
        }
        this.f14552e = list;
        this.f14553f = 0;
    }

    /* renamed from: a */
    private void m36942a(Proxy proxy) throws IOException {
        int i;
        String str;
        this.f14554g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f14548a.m37009a().m36435f();
            i = this.f14548a.m37009a().m36434g();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            str = m36943a(inetSocketAddress);
            i = inetSocketAddress.getPort();
        }
        if (i <= 0 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        } else if (proxy.type() == Proxy.Type.SOCKS) {
            this.f14554g.add(InetSocketAddress.createUnresolved(str, i));
        } else {
            this.f14551d.m36489a(this.f14550c, str);
            List<InetAddress> mo36497a = this.f14548a.m37007b().mo36497a(str);
            if (mo36497a.isEmpty()) {
                throw new UnknownHostException(this.f14548a.m37007b() + " returned no addresses for " + str);
            }
            this.f14551d.m36488a(this.f14550c, str, mo36497a);
            int size = mo36497a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f14554g.add(new InetSocketAddress(mo36497a.get(i2), i));
            }
        }
    }

    /* renamed from: c */
    private boolean m36940c() {
        return this.f14553f < this.f14552e.size();
    }

    /* renamed from: d */
    private Proxy m36939d() throws IOException {
        if (!m36940c()) {
            throw new SocketException("No route to " + this.f14548a.m37009a().m36435f() + "; exhausted proxy configurations: " + this.f14552e);
        }
        List<Proxy> list = this.f14552e;
        int i = this.f14553f;
        this.f14553f = i + 1;
        Proxy proxy = list.get(i);
        m36942a(proxy);
        return proxy;
    }

    /* renamed from: a */
    public final void m36945a(C4102ac c4102ac, IOException iOException) {
        if (c4102ac.m36574b().type() != Proxy.Type.DIRECT && this.f14548a.m37002g() != null) {
            this.f14548a.m37002g().connectFailed(this.f14548a.m37009a().m36456a(), c4102ac.m36574b().address(), iOException);
        }
        this.f14549b.m36952a(c4102ac);
    }

    /* renamed from: a */
    public final boolean m36946a() {
        return m36940c() || !this.f14555h.isEmpty();
    }

    /* renamed from: b */
    public final C4012a m36941b() throws IOException {
        if (m36946a()) {
            ArrayList arrayList = new ArrayList();
            while (m36940c()) {
                Proxy m36939d = m36939d();
                int size = this.f14554g.size();
                for (int i = 0; i < size; i++) {
                    C4102ac c4102ac = new C4102ac(this.f14548a, m36939d, this.f14554g.get(i));
                    if (this.f14549b.m36950c(c4102ac)) {
                        this.f14555h.add(c4102ac);
                    } else {
                        arrayList.add(c4102ac);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.f14555h);
                this.f14555h.clear();
            }
            return new C4012a(arrayList);
        }
        throw new NoSuchElementException();
    }
}
