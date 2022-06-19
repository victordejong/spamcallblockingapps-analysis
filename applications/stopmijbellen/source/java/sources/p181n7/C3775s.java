package p181n7;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;
import p148k7.AbstractC3356j;
import p148k7.C3343h;
import p148k7.RunnableC3353i;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3512b;
import p170m7.AbstractC3653a;
import p170m7.AbstractC3654b;
import p170m7.AbstractC3656d;
import p170m7.AbstractC3665i;
import p170m7.AbstractFutureC3655c;
import p170m7.C3657e;
import p170m7.C3658f;
import p170m7.C3661g;
import p181n7.AbstractC3749g;
import p255u7.C4535b;
import p293y2.C4999p;
/* renamed from: n7.s */
/* loaded from: classes2-dex2jar.jar:n7/s.class */
public class C3775s extends C3746d0 {

    /* renamed from: a */
    public String f12237a;

    /* renamed from: b */
    public int f12238b;

    /* renamed from: d */
    public C3732a f12240d;

    /* renamed from: e */
    public boolean f12241e;

    /* renamed from: c */
    public int f12239c = 300000;

    /* renamed from: f */
    public Hashtable<String, C3777b> f12242f = new Hashtable<>();

    /* renamed from: g */
    public int f12243g = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: n7.s$a */
    /* loaded from: classes2-dex2jar.jar:n7/s$a.class */
    public class C3776a implements AbstractC3510a {

        /* renamed from: a */
        public final /* synthetic */ C4535b f12244a;

        /* renamed from: b */
        public final /* synthetic */ C3778c f12245b;

        /* renamed from: c */
        public final /* synthetic */ String f12246c;

        public C3776a(C4535b c4535b, C3778c c3778c, String str) {
            C3775s.this = r4;
            this.f12244a = c4535b;
            this.f12245b = c3778c;
            this.f12246c = str;
        }

        @Override // p159l7.AbstractC3510a
        /* renamed from: a */
        public void mo1098a(Exception exc) {
            synchronized (C3775s.this) {
                this.f12244a.remove(this.f12245b);
                C3775s.this.m1809l(this.f12246c);
            }
        }
    }

    /* renamed from: n7.s$b */
    /* loaded from: classes2-dex2jar.jar:n7/s$b.class */
    public static class C3777b {

        /* renamed from: a */
        public int f12248a;

        /* renamed from: b */
        public C4535b<AbstractC3749g.C3750a> f12249b = new C4535b<>();

        /* renamed from: c */
        public C4535b<C3778c> f12250c = new C4535b<>();
    }

    /* renamed from: n7.s$c */
    /* loaded from: classes2-dex2jar.jar:n7/s$c.class */
    public class C3778c {

        /* renamed from: a */
        public AbstractC3356j f12251a;

        /* renamed from: b */
        public long f12252b = System.currentTimeMillis();

        public C3778c(C3775s c3775s, AbstractC3356j abstractC3356j) {
            this.f12251a = abstractC3356j;
        }
    }

    public C3775s(C3732a c3732a, String str, int i) {
        this.f12240d = c3732a;
        this.f12237a = str;
        this.f12238b = i;
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: g */
    public void mo1485g(AbstractC3749g.C3756g c3756g) {
        if (((Hashtable) c3756g.f12181a.f11570a).get("socket-owner") != this) {
            return;
        }
        try {
            AbstractC3356j abstractC3356j = c3756g.f12177e;
            abstractC3356j.mo936h(new C3779t(this, abstractC3356j));
            abstractC3356j.mo1478m(null);
            abstractC3356j.mo939b(new C3780u(this, abstractC3356j));
            if (c3756g.f12183j == null && c3756g.f12177e.isOpen()) {
                if (!m1810k(c3756g)) {
                    c3756g.f12182b.m1819e("closing out socket (not keep alive)");
                    c3756g.f12177e.mo1480g(null);
                    c3756g.f12177e.close();
                } else {
                    c3756g.f12182b.m1822b("Recycling keep-alive socket");
                    m1807n(c3756g.f12177e, c3756g.f12182b);
                }
            }
            c3756g.f12182b.m1819e("closing out socket (exception)");
            c3756g.f12177e.mo1480g(null);
            c3756g.f12177e.close();
        } finally {
            m1808m(c3756g.f12182b);
        }
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: h */
    public AbstractC3653a mo1484h(final AbstractC3749g.C3750a c3750a) {
        int i;
        final Uri uri = c3750a.f12182b.f12186c;
        final int m1811j = m1811j(uri);
        if (m1811j == -1) {
            return null;
        }
        ((Hashtable) c3750a.f12181a.f11570a).put("socket-owner", this);
        C3759h c3759h = c3750a.f12182b;
        String m1812i = m1812i(uri, m1811j, c3759h.f12191h, c3759h.f12192i);
        C3777b c3777b = this.f12242f.get(m1812i);
        C3777b c3777b2 = c3777b;
        if (c3777b == null) {
            c3777b2 = new C3777b();
            this.f12242f.put(m1812i, c3777b2);
        }
        synchronized (this) {
            int i2 = c3777b2.f12248a;
            if (i2 >= this.f12243g) {
                C3658f c3658f = new C3658f();
                c3777b2.f12249b.addLast(c3750a);
                return c3658f;
            }
            boolean z = true;
            c3777b2.f12248a = i2 + 1;
            while (!c3777b2.f12250c.isEmpty()) {
                C3778c pollFirst = c3777b2.f12250c.pollFirst();
                if (pollFirst == null) {
                    throw new NoSuchElementException();
                }
                C3778c c3778c = pollFirst;
                AbstractC3356j abstractC3356j = c3778c.f12251a;
                if (c3778c.f12252b + this.f12239c < System.currentTimeMillis()) {
                    abstractC3356j.mo1480g(null);
                    abstractC3356j.close();
                } else if (abstractC3356j.isOpen()) {
                    c3750a.f12182b.m1822b("Reusing keep-alive socket");
                    c3750a.f12174c.mo152a(null, abstractC3356j);
                    C3658f c3658f2 = new C3658f();
                    c3658f2.mo1927c();
                    return c3658f2;
                }
            }
            if (this.f12241e) {
                C3759h c3759h2 = c3750a.f12182b;
                if (c3759h2.f12191h == null) {
                    c3759h2.m1819e("Resolving domain and connecting to all available addresses");
                    C3661g c3661g = new C3661g();
                    C3343h c3343h = this.f12240d.f12125d;
                    String host = uri.getHost();
                    Objects.requireNonNull(c3343h);
                    C3661g c3661g2 = new C3661g();
                    ((ThreadPoolExecutor) C3343h.f11332h).execute(new RunnableC3353i(c3343h, host, c3661g2));
                    ((C3661g) c3661g.m1917m(((C3661g) c3661g2.m1911s(new AbstractC3665i() { // from class: n7.q
                        @Override // p170m7.AbstractC3665i
                        public final AbstractFutureC3655c then(Object obj) {
                            final C3775s c3775s = C3775s.this;
                            final int i3 = m1811j;
                            final AbstractC3749g.C3750a c3750a2 = c3750a;
                            Objects.requireNonNull(c3775s);
                            AbstractC3665i abstractC3665i = new AbstractC3665i() { // from class: n7.r
                                @Override // p170m7.AbstractC3665i
                                public final AbstractFutureC3655c then(Object obj2) {
                                    C3775s c3775s2 = C3775s.this;
                                    int i4 = i3;
                                    AbstractC3749g.C3750a c3750a3 = c3750a2;
                                    InetAddress inetAddress = (InetAddress) obj2;
                                    Objects.requireNonNull(c3775s2);
                                    C3661g c3661g3 = new C3661g();
                                    String format = String.format(Locale.ENGLISH, "%s:%s", inetAddress, Integer.valueOf(i4));
                                    C3759h c3759h3 = c3750a3.f12182b;
                                    c3759h3.m1819e("attempting connection to " + format);
                                    c3775s2.f12240d.f12125d.m2363c(new InetSocketAddress(inetAddress, i4), new C4999p(c3661g3));
                                    return c3661g3;
                                }
                            };
                            List asList = Arrays.asList((InetAddress[]) obj);
                            C3661g c3661g3 = new C3661g();
                            C3657e.m1928a(asList.iterator(), abstractC3665i, c3661g3, null);
                            return c3661g3;
                        }
                    })).m1924f(new AbstractC3654b() { // from class: n7.o
                        @Override // p170m7.AbstractC3654b
                        /* renamed from: a */
                        public final void mo104a(Exception exc) {
                            C3775s c3775s = C3775s.this;
                            AbstractC3749g.C3750a c3750a2 = c3750a;
                            Uri uri2 = uri;
                            int i3 = m1811j;
                            Objects.requireNonNull(c3775s);
                            c3775s.mo1806o(c3750a2, uri2, i3, false, c3750a2.f12174c).mo152a(exc, null);
                        }
                    }), null)).m1919k(new AbstractC3656d() { // from class: n7.p
                        @Override // p170m7.AbstractC3656d
                        /* renamed from: a */
                        public final void mo99a(Exception exc, Object obj) {
                            C3775s c3775s = C3775s.this;
                            AbstractC3749g.C3750a c3750a2 = c3750a;
                            Uri uri2 = uri;
                            int i3 = m1811j;
                            AbstractC3356j abstractC3356j2 = (AbstractC3356j) obj;
                            Objects.requireNonNull(c3775s);
                            if (abstractC3356j2 == null) {
                                return;
                            }
                            if (exc == null) {
                                c3775s.mo1806o(c3750a2, uri2, i3, false, c3750a2.f12174c).mo152a(null, abstractC3356j2);
                                return;
                            }
                            c3750a2.f12182b.m1822b("Recycling extra socket leftover from cancelled operation");
                            abstractC3356j2.mo936h(new C3779t(c3775s, abstractC3356j2));
                            abstractC3356j2.mo1478m(null);
                            abstractC3356j2.mo939b(new C3780u(c3775s, abstractC3356j2));
                            c3775s.m1807n(abstractC3356j2, c3750a2.f12182b);
                        }
                    });
                    return c3661g;
                }
            }
            c3750a.f12182b.m1822b("Connecting socket");
            C3759h c3759h3 = c3750a.f12182b;
            String str = c3759h3.f12191h;
            if (str != null) {
                i = c3759h3.f12192i;
            } else {
                str = uri.getHost();
                i = m1811j;
                z = false;
            }
            if (z) {
                c3750a.f12182b.m1819e("Using proxy: " + str + ":" + i);
            }
            C3343h c3343h2 = this.f12240d.f12125d;
            AbstractC3512b mo1806o = mo1806o(c3750a, uri, m1811j, z, c3750a.f12174c);
            Objects.requireNonNull(c3343h2);
            return c3343h2.m2363c(InetSocketAddress.createUnresolved(str, i), mo1806o);
        }
    }

    /* renamed from: i */
    public String m1812i(Uri uri, int i, String str, int i2) {
        String str2;
        if (str != null) {
            str2 = str + ":" + i2;
        } else {
            str2 = "";
        }
        if (str != null) {
            str2 = str + ":" + i2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getScheme());
        sb.append("//");
        sb.append(uri.getHost());
        sb.append(":");
        sb.append(i);
        return C0082b.m8754h(sb, "?proxy=", str2);
    }

    /* renamed from: j */
    public int m1811j(Uri uri) {
        if (uri.getScheme() == null || !uri.getScheme().equals(this.f12237a)) {
            return -1;
        }
        return uri.getPort() == -1 ? this.f12238b : uri.getPort();
    }

    /* renamed from: k */
    public boolean m1810k(AbstractC3749g.C3756g c3756g) {
        AbstractC3761j abstractC3761j = (AbstractC3761j) c3756g.f12178f;
        String str = abstractC3761j.f12203n;
        C3737a0 c3737a0 = abstractC3761j.f12200k.f12257a;
        Locale locale = Locale.US;
        String m1829a = c3737a0.m1829a("Connection".toLowerCase(locale));
        boolean z = false;
        if (m1829a == null ? EnumC3739b0.m1828a(str) == EnumC3739b0.f12152c : "keep-alive".equalsIgnoreCase(m1829a)) {
            EnumC3739b0 enumC3739b0 = EnumC3739b0.f12152c;
            String m1829a2 = c3756g.f12182b.f12187d.f12257a.m1829a("Connection".toLowerCase(locale));
            z = false;
            if (m1829a2 == null ? true : "keep-alive".equalsIgnoreCase(m1829a2)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: l */
    public final void m1809l(String str) {
        C3777b c3777b = this.f12242f.get(str);
        if (c3777b == null) {
            return;
        }
        while (!c3777b.f12250c.isEmpty()) {
            C4535b<C3778c> c4535b = c3777b.f12250c;
            Object[] objArr = c4535b.f13943a;
            C3778c c3778c = (C3778c) objArr[(c4535b.f13945c - 1) & (objArr.length - 1)];
            AbstractC3356j abstractC3356j = c3778c.f12251a;
            if (c3778c.f12252b + this.f12239c > System.currentTimeMillis()) {
                break;
            } else if (c3777b.f12250c.pollFirst() == null) {
                throw new NoSuchElementException();
            } else {
                abstractC3356j.mo1480g(null);
                abstractC3356j.close();
            }
        }
        if (c3777b.f12248a != 0 || !c3777b.f12249b.isEmpty() || !c3777b.f12250c.isEmpty()) {
            return;
        }
        this.f12242f.remove(str);
    }

    /* renamed from: m */
    public final void m1808m(C3759h c3759h) {
        Uri uri = c3759h.f12186c;
        String m1812i = m1812i(uri, m1811j(uri), c3759h.f12191h, c3759h.f12192i);
        synchronized (this) {
            C3777b c3777b = this.f12242f.get(m1812i);
            if (c3777b == null) {
                return;
            }
            c3777b.f12248a--;
            while (c3777b.f12248a < this.f12243g && c3777b.f12249b.size() > 0) {
                AbstractC3749g.C3750a remove = c3777b.f12249b.remove();
                C3658f c3658f = (C3658f) remove.f12175d;
                if (!c3658f.isCancelled()) {
                    c3658f.mo1926d(mo1484h(remove));
                }
            }
            m1809l(m1812i);
        }
    }

    /* renamed from: n */
    public final void m1807n(AbstractC3356j abstractC3356j, C3759h c3759h) {
        C4535b<C3778c> c4535b;
        if (abstractC3356j == null) {
            return;
        }
        Uri uri = c3759h.f12186c;
        String m1812i = m1812i(uri, m1811j(uri), c3759h.f12191h, c3759h.f12192i);
        C3778c c3778c = new C3778c(this, abstractC3356j);
        synchronized (this) {
            C3777b c3777b = this.f12242f.get(m1812i);
            C3777b c3777b2 = c3777b;
            if (c3777b == null) {
                c3777b2 = new C3777b();
                this.f12242f.put(m1812i, c3777b2);
            }
            c4535b = c3777b2.f12250c;
            c4535b.addFirst(c3778c);
        }
        abstractC3356j.mo1480g(new C3776a(c4535b, c3778c, m1812i));
    }

    /* renamed from: o */
    public AbstractC3512b mo1806o(AbstractC3749g.C3750a c3750a, Uri uri, int i, boolean z, AbstractC3512b abstractC3512b) {
        return abstractC3512b;
    }
}
