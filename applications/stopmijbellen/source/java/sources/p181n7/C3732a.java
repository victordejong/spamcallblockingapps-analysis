package p181n7;

import android.annotation.SuppressLint;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.koushikdutta.async.http.RedirectLimitExceededException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;
import p083e8.C2615f;
import p148k7.AbstractC3356j;
import p148k7.C3343h;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3512b;
import p159l7.AbstractC3513c;
import p170m7.AbstractC3653a;
import p170m7.C3661g;
import p181n7.AbstractC3749g;
import p192o7.C3939b;
import p212q7.AbstractC4165a;
import p277w7.AbstractC4768q;
/* renamed from: n7.a */
/* loaded from: classes2-dex2jar.jar:n7/a.class */
public class C3732a {

    /* renamed from: a */
    public final List<AbstractC3749g> f12122a;

    /* renamed from: b */
    public C3766n f12123b;

    /* renamed from: c */
    public C3775s f12124c;

    /* renamed from: d */
    public C3343h f12125d;

    /* renamed from: n7.a$a */
    /* loaded from: classes2-dex2jar.jar:n7/a$a.class */
    public class RunnableC3733a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3759h f12126a;

        /* renamed from: b */
        public final /* synthetic */ int f12127b;

        /* renamed from: c */
        public final /* synthetic */ C3736d f12128c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC4165a f12129d;

        public RunnableC3733a(C3759h c3759h, int i, C3736d c3736d, AbstractC4165a abstractC4165a) {
            C3732a.this = r4;
            this.f12126a = c3759h;
            this.f12127b = i;
            this.f12128c = c3736d;
            this.f12129d = abstractC4165a;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3732a.this.m1832d(this.f12126a, this.f12127b, this.f12128c, this.f12129d);
        }
    }

    /* renamed from: n7.a$b */
    /* loaded from: classes2-dex2jar.jar:n7/a$b.class */
    public class RunnableC3734b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3749g.C3756g f12131a;

        /* renamed from: b */
        public final /* synthetic */ C3736d f12132b;

        /* renamed from: c */
        public final /* synthetic */ C3759h f12133c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC4165a f12134d;

        public RunnableC3734b(AbstractC3749g.C3756g c3756g, C3736d c3736d, C3759h c3759h, AbstractC4165a abstractC4165a) {
            C3732a.this = r4;
            this.f12131a = c3756g;
            this.f12132b = c3736d;
            this.f12133c = c3759h;
            this.f12134d = abstractC4165a;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC3653a abstractC3653a = this.f12131a.f12175d;
            if (abstractC3653a != null) {
                abstractC3653a.cancel();
                AbstractC3356j abstractC3356j = this.f12131a.f12177e;
                if (abstractC3356j != null) {
                    abstractC3356j.close();
                }
            }
            C3732a.this.m1831e(this.f12132b, new TimeoutException(), null, this.f12133c, this.f12134d);
        }
    }

    /* renamed from: n7.a$c */
    /* loaded from: classes2-dex2jar.jar:n7/a$c.class */
    public class C3735c implements AbstractC3512b {

        /* renamed from: a */
        public boolean f12136a;

        /* renamed from: b */
        public final /* synthetic */ C3759h f12137b;

        /* renamed from: c */
        public final /* synthetic */ C3736d f12138c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC4165a f12139d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC3749g.C3756g f12140e;

        /* renamed from: f */
        public final /* synthetic */ int f12141f;

        public C3735c(C3759h c3759h, C3736d c3736d, AbstractC4165a abstractC4165a, AbstractC3749g.C3756g c3756g, int i) {
            C3732a.this = r4;
            this.f12137b = c3759h;
            this.f12138c = c3736d;
            this.f12139d = abstractC4165a;
            this.f12140e = c3756g;
            this.f12141f = i;
        }

        @Override // p159l7.AbstractC3512b
        /* renamed from: a */
        public void mo152a(Exception exc, AbstractC3356j abstractC3356j) {
            if (this.f12136a && abstractC3356j != null) {
                abstractC3356j.mo939b(new AbstractC3513c.C3514a());
                abstractC3356j.mo936h(new AbstractC3510a.C3511a());
                abstractC3356j.close();
                throw new AssertionError("double connect callback");
            }
            this.f12136a = true;
            this.f12137b.m1819e("socket connected");
            if (this.f12138c.isCancelled()) {
                if (abstractC3356j == null) {
                    return;
                }
                abstractC3356j.close();
                return;
            }
            C3736d c3736d = this.f12138c;
            if (c3736d.f12145l != null) {
                c3736d.f12144k.cancel();
            }
            if (exc != null) {
                C3732a.this.m1831e(this.f12138c, exc, null, this.f12137b, this.f12139d);
                return;
            }
            AbstractC3749g.C3756g c3756g = this.f12140e;
            c3756g.f12177e = abstractC3356j;
            C3736d c3736d2 = this.f12138c;
            c3736d2.f12143j = abstractC3356j;
            C3732a c3732a = C3732a.this;
            C3759h c3759h = this.f12137b;
            int i = this.f12141f;
            AbstractC4165a abstractC4165a = this.f12139d;
            Objects.requireNonNull(c3732a);
            C3745d c3745d = new C3745d(c3732a, c3759h, c3736d2, c3759h, abstractC4165a, c3756g, i);
            c3756g.f12179g = new C3747e(c3732a, c3745d);
            c3756g.f12180h = new C3748f(c3732a, c3745d);
            c3756g.f12178f = c3745d;
            AbstractC3356j abstractC3356j2 = c3756g.f12177e;
            c3745d.f12199j = abstractC3356j2;
            if (abstractC3356j2 != null) {
                abstractC3356j2.mo936h(c3745d.f12197h);
            }
            Iterator<AbstractC3749g> it2 = c3732a.f12122a.iterator();
            while (it2.hasNext() && !it2.next().mo1797b(c3756g)) {
            }
        }
    }

    /* renamed from: n7.a$d */
    /* loaded from: classes2-dex2jar.jar:n7/a$d.class */
    public class C3736d extends C3661g<Object> {

        /* renamed from: j */
        public AbstractC3356j f12143j;

        /* renamed from: k */
        public AbstractC3653a f12144k;

        /* renamed from: l */
        public Runnable f12145l;

        public C3736d(C3732a c3732a, RunnableC3733a runnableC3733a) {
        }

        @Override // p170m7.C3661g, p170m7.C3658f, p170m7.AbstractC3653a
        public boolean cancel() {
            if (!super.cancel()) {
                return false;
            }
            AbstractC3356j abstractC3356j = this.f12143j;
            if (abstractC3356j != null) {
                abstractC3356j.mo939b(new AbstractC3513c.C3514a());
                this.f12143j.close();
            }
            AbstractC3653a abstractC3653a = this.f12144k;
            if (abstractC3653a == null) {
                return true;
            }
            abstractC3653a.cancel();
            return true;
        }
    }

    public C3732a(C3343h c3343h) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f12122a = copyOnWriteArrayList;
        this.f12125d = c3343h;
        C3775s c3775s = new C3775s(this, "http", 80);
        this.f12124c = c3775s;
        copyOnWriteArrayList.add(0, c3775s);
        C3766n c3766n = new C3766n(this);
        this.f12123b = c3766n;
        copyOnWriteArrayList.add(0, c3766n);
        copyOnWriteArrayList.add(0, new C3786y());
        C3766n c3766n2 = this.f12123b;
        c3766n2.f12211j.add(new C3743c0());
    }

    /* renamed from: b */
    public static void m1834b(C3759h c3759h, C3759h c3759h2, String str) {
        String m1829a = c3759h.f12187d.f12257a.m1829a(str.toLowerCase(Locale.US));
        if (!TextUtils.isEmpty(m1829a)) {
            c3759h2.f12187d.m1802d(str, m1829a);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: f */
    public static void m1830f(C3759h c3759h) {
        if (c3759h.f12191h != null) {
            return;
        }
        try {
            List<Proxy> select = ProxySelector.getDefault().select(URI.create(c3759h.f12186c.toString()));
            if (select.isEmpty()) {
                return;
            }
            Proxy proxy = select.get(0);
            if (proxy.type() != Proxy.Type.HTTP || !(proxy.address() instanceof InetSocketAddress)) {
                return;
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
            String hostString = inetSocketAddress.getHostString();
            int port = inetSocketAddress.getPort();
            c3759h.f12191h = hostString;
            c3759h.f12192i = port;
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    public final void m1833c(C3759h c3759h, int i, C3736d c3736d, AbstractC4165a abstractC4165a) {
        if (this.f12125d.m2362d()) {
            m1832d(c3759h, i, c3736d, abstractC4165a);
        } else {
            this.f12125d.m2359g(new RunnableC3733a(c3759h, i, c3736d, abstractC4165a));
        }
    }

    /* renamed from: d */
    public final void m1832d(C3759h c3759h, int i, C3736d c3736d, AbstractC4165a abstractC4165a) {
        if (i > 15) {
            m1831e(c3736d, new RedirectLimitExceededException("too many redirects"), null, c3759h, abstractC4165a);
            return;
        }
        Objects.requireNonNull(c3759h);
        AbstractC3749g.C3756g c3756g = new AbstractC3749g.C3756g();
        c3759h.f12195l = System.currentTimeMillis();
        c3756g.f12182b = c3759h;
        c3759h.m1822b("Executing request.");
        for (AbstractC3749g abstractC3749g : this.f12122a) {
            abstractC3749g.mo1825c(c3756g);
        }
        int i2 = c3759h.f12190g;
        if (i2 > 0) {
            RunnableC3734b runnableC3734b = new RunnableC3734b(c3756g, c3736d, c3759h, abstractC4165a);
            c3736d.f12145l = runnableC3734b;
            c3736d.f12144k = this.f12125d.m2357i(runnableC3734b, i2);
        }
        c3756g.f12174c = new C3735c(c3759h, c3736d, abstractC4165a, c3756g, i);
        m1830f(c3759h);
        if (c3759h.f12189f != null && c3759h.f12187d.f12257a.m1829a("Content-Type".toLowerCase(Locale.US)) == null) {
            c3759h.f12187d.m1802d("Content-Type", c3759h.f12189f.mo77b());
        }
        for (AbstractC3749g abstractC3749g2 : this.f12122a) {
            AbstractC3653a mo1484h = abstractC3749g2.mo1484h(c3756g);
            if (mo1484h != null) {
                c3756g.f12175d = mo1484h;
                c3736d.mo1926d(mo1484h);
                return;
            }
        }
        StringBuilder m8752j = C0082b.m8752j("invalid uri=");
        m8752j.append(c3759h.f12186c);
        m8752j.append(" middlewares=");
        m8752j.append(this.f12122a);
        m1831e(c3736d, new IllegalArgumentException(m8752j.toString()), null, c3759h, abstractC4165a);
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: e */
    public final void m1831e(C3736d c3736d, Exception exc, AbstractC3761j abstractC3761j, C3759h c3759h, AbstractC4165a abstractC4165a) {
        boolean z;
        boolean z2;
        C3759h c3759h2;
        C3939b c3939b;
        boolean z3;
        c3736d.f12144k.cancel();
        if (exc != null) {
            c3759h.m1821c("Connection error", exc);
            z = c3736d.m1914p(exc, null, null);
        } else {
            c3759h.m1822b("Connection successful");
            z = c3736d.m1914p(null, abstractC3761j, null);
        }
        if (!z) {
            if (abstractC3761j == null) {
                return;
            }
            abstractC3761j.f11385c = new AbstractC3513c.C3514a();
            abstractC3761j.close();
            return;
        }
        C2615f.C2616a c2616a = (C2615f.C2616a) abstractC4165a;
        Objects.requireNonNull(c2616a);
        int i = 4;
        if (abstractC3761j != null) {
            c3759h2 = abstractC3761j.f12198i;
            int i2 = abstractC3761j.f12202m;
            String str = abstractC3761j.f12204o;
            C3782w c3782w = abstractC3761j.f12200k;
            c3939b = new C3939b(i2, str, c3782w);
            String m1829a = c3782w.f12257a.m1829a("Content-Length".toLowerCase(Locale.US));
            if (m1829a == null) {
                z3 = true;
            } else {
                try {
                    z3 = Long.parseLong(m1829a);
                } catch (NumberFormatException e) {
                    z3 = true;
                }
            }
            String m1829a2 = abstractC3761j.f12200k.f12257a.m1829a("X-Served-From".toLowerCase(Locale.US));
            if (TextUtils.equals(m1829a2, "cache")) {
                i = 2;
                z2 = z3;
            } else {
                z2 = z3;
                if (TextUtils.equals(m1829a2, "conditional-cache")) {
                    i = 3;
                    z2 = z3;
                }
            }
        } else {
            c3939b = null;
            c3759h2 = null;
            z2 = true;
            i = 4;
        }
        c2616a.f9050a.mo99a(exc, new AbstractC4768q.C4769a(abstractC3761j, z2 ? 1L : 0L, i, c3939b, c3759h2));
    }
}
