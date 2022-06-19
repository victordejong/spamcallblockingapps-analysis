package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2852a;
import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2952o;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2963t;
import com.squareup.okhttp.p089u.AbstractC2965b;
import com.squareup.okhttp.p089u.AbstractC2968e;
import com.squareup.okhttp.p089u.C2974h;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: com.squareup.okhttp.internal.http.n */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/n.class */
public final class C2939n {

    /* renamed from: a */
    private final C2852a f12390a;

    /* renamed from: b */
    private final C2946l f12391b;

    /* renamed from: c */
    private final AbstractC2968e f12392c;

    /* renamed from: d */
    private final C2952o f12393d;

    /* renamed from: e */
    private final C2974h f12394e;

    /* renamed from: f */
    private Proxy f12395f;

    /* renamed from: g */
    private InetSocketAddress f12396g;

    /* renamed from: i */
    private int f12398i;

    /* renamed from: k */
    private int f12400k;

    /* renamed from: h */
    private List<Proxy> f12397h = Collections.emptyList();

    /* renamed from: j */
    private List<InetSocketAddress> f12399j = Collections.emptyList();

    /* renamed from: l */
    private final List<C2963t> f12401l = new ArrayList();

    private C2939n(C2852a c2852a, C2946l c2946l, C2952o c2952o) {
        this.f12390a = c2852a;
        this.f12391b = c2946l;
        this.f12393d = c2952o;
        this.f12394e = AbstractC2965b.f12498b.mo693l(c2952o);
        this.f12392c = AbstractC2965b.f12498b.mo697h(c2952o);
        m919m(c2946l, c2852a.m1323f());
    }

    /* renamed from: b */
    public static C2939n m930b(C2852a c2852a, C2954p c2954p, C2952o c2952o) {
        return new C2939n(c2852a, c2954p.m785j(), c2952o);
    }

    /* renamed from: c */
    static String m929c(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    /* renamed from: e */
    private boolean m927e() {
        return this.f12400k < this.f12399j.size();
    }

    /* renamed from: f */
    private boolean m926f() {
        return !this.f12401l.isEmpty();
    }

    /* renamed from: g */
    private boolean m925g() {
        return this.f12398i < this.f12397h.size();
    }

    /* renamed from: i */
    private InetSocketAddress m923i() {
        if (m927e()) {
            List<InetSocketAddress> list = this.f12399j;
            int i = this.f12400k;
            this.f12400k = i + 1;
            return list.get(i);
        }
        throw new SocketException("No route to " + this.f12390a.m1319j() + "; exhausted inet socket addresses: " + this.f12399j);
    }

    /* renamed from: j */
    private C2963t m922j() {
        return this.f12401l.remove(0);
    }

    /* renamed from: k */
    private Proxy m921k() {
        if (m925g()) {
            List<Proxy> list = this.f12397h;
            int i = this.f12398i;
            this.f12398i = i + 1;
            Proxy proxy = list.get(i);
            m920l(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f12390a.m1319j() + "; exhausted proxy configurations: " + this.f12397h);
    }

    /* renamed from: l */
    private void m920l(Proxy proxy) {
        int i;
        String str;
        this.f12399j = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f12390a.m1319j();
            i = this.f12390a.m1318k();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            str = m929c(inetSocketAddress);
            i = inetSocketAddress.getPort();
        }
        if (i < 1 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        }
        for (InetAddress inetAddress : this.f12392c.m683a(str)) {
            this.f12399j.add(new InetSocketAddress(inetAddress, i));
        }
        this.f12400k = 0;
    }

    /* renamed from: m */
    private void m919m(C2946l c2946l, Proxy proxy) {
        if (proxy != null) {
            this.f12397h = Collections.singletonList(proxy);
        } else {
            this.f12397h = new ArrayList();
            List<Proxy> select = this.f12393d.m803q().select(c2946l.m882E());
            if (select != null) {
                this.f12397h.addAll(select);
            }
            this.f12397h.removeAll(Collections.singleton(Proxy.NO_PROXY));
            this.f12397h.add(Proxy.NO_PROXY);
        }
        this.f12398i = 0;
    }

    /* renamed from: a */
    public void m931a(C2963t c2963t, IOException iOException) {
        if (c2963t.m710b().type() != Proxy.Type.DIRECT && this.f12390a.m1322g() != null) {
            this.f12390a.m1322g().connectFailed(this.f12391b.m882E(), c2963t.m710b().address(), iOException);
        }
        this.f12394e.m661b(c2963t);
    }

    /* renamed from: d */
    public boolean m928d() {
        return m927e() || m925g() || m926f();
    }

    /* renamed from: h */
    public C2963t m924h() {
        if (!m927e()) {
            if (!m925g()) {
                if (!m926f()) {
                    throw new NoSuchElementException();
                }
                return m922j();
            }
            this.f12395f = m921k();
        }
        InetSocketAddress m923i = m923i();
        this.f12396g = m923i;
        C2963t c2963t = new C2963t(this.f12390a, this.f12395f, m923i);
        if (this.f12394e.m660c(c2963t)) {
            this.f12401l.add(c2963t);
            return m924h();
        }
        return c2963t;
    }
}
