package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC2082p;
import okhttp3.AbstractC2092t;
import okhttp3.C1952a;
import okhttp3.C1959ad;
import okhttp3.C2072j;
import okhttp3.C2098w;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2014e;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.EnumC2036a;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.p092b.AbstractC1988c;
/* renamed from: okhttp3.internal.connection.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/f.class */
public final class C2016f {

    /* renamed from: d */
    static final /* synthetic */ boolean f5059d = !C2016f.class.desiredAssertionStatus();

    /* renamed from: a */
    public final C1952a f5060a;

    /* renamed from: b */
    public final AbstractC1966e f5061b;

    /* renamed from: c */
    public final AbstractC2082p f5062c;

    /* renamed from: e */
    private C2014e.C2015a f5063e;

    /* renamed from: f */
    private C1959ad f5064f;

    /* renamed from: g */
    private final C2072j f5065g;

    /* renamed from: h */
    private final Object f5066h;

    /* renamed from: i */
    private final C2014e f5067i;

    /* renamed from: j */
    private int f5068j;

    /* renamed from: k */
    private C2012c f5069k;

    /* renamed from: l */
    private boolean f5070l;

    /* renamed from: m */
    private boolean f5071m;

    /* renamed from: n */
    private boolean f5072n;

    /* renamed from: o */
    private AbstractC1988c f5073o;

    /* renamed from: okhttp3.internal.connection.f$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/f$a.class */
    public static final class C2017a extends WeakReference<C2016f> {

        /* renamed from: a */
        public final Object f5074a;

        C2017a(C2016f c2016f, Object obj) {
            super(c2016f);
            this.f5074a = obj;
        }
    }

    public C2016f(C2072j c2072j, C1952a c1952a, AbstractC1966e abstractC1966e, AbstractC2082p abstractC2082p, Object obj) {
        this.f5065g = c2072j;
        this.f5060a = c1952a;
        this.f5061b = abstractC1966e;
        this.f5062c = abstractC2082p;
        this.f5067i = new C2014e(c1952a, m2261h(), abstractC1966e, abstractC2082p);
        this.f5066h = obj;
    }

    /* renamed from: a */
    private Socket m2269a(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (f5059d || Thread.holdsLock(this.f5065g)) {
            if (z3) {
                this.f5073o = null;
            }
            if (z2) {
                this.f5071m = true;
            }
            C2012c c2012c = this.f5069k;
            if (c2012c != null) {
                if (z) {
                    c2012c.f5034a = true;
                }
                if (this.f5073o == null && (this.f5071m || this.f5069k.f5034a)) {
                    m2267b(this.f5069k);
                    if (this.f5069k.f5037d.isEmpty()) {
                        this.f5069k.f5038e = System.nanoTime();
                        if (AbstractC1974a.f4904a.mo1848a(this.f5065g, this.f5069k)) {
                            socket = this.f5069k.m2295b();
                            this.f5069k = null;
                            return socket;
                        }
                    }
                    socket = null;
                    this.f5069k = null;
                    return socket;
                }
            }
            socket = null;
            return socket;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    private C2012c m2276a(int i, int i2, int i3, int i4, boolean z) {
        Socket m2262g;
        C2012c c2012c;
        C2012c c2012c2;
        boolean z2;
        C1959ad c1959ad;
        C2012c c2012c3;
        boolean z3;
        boolean z4;
        C2012c c2012c4;
        Socket socket;
        C2012c c2012c5;
        C2014e.C2015a c2015a;
        C1959ad c1959ad2;
        synchronized (this.f5065g) {
            if (this.f5071m) {
                throw new IllegalStateException("released");
            }
            if (this.f5073o != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f5072n) {
                throw new IOException("Canceled");
            }
            C2012c c2012c6 = this.f5069k;
            m2262g = m2262g();
            if (this.f5069k != null) {
                c2012c = this.f5069k;
                c2012c6 = null;
            } else {
                c2012c = null;
            }
            c2012c2 = c2012c6;
            if (!this.f5070l) {
                c2012c2 = null;
            }
            if (c2012c == null) {
                AbstractC1974a.f4904a.mo1849a(this.f5065g, this.f5060a, this, null);
                if (this.f5069k != null) {
                    c2012c3 = this.f5069k;
                    c1959ad = null;
                    z2 = true;
                } else {
                    c1959ad2 = this.f5064f;
                }
            } else {
                c1959ad2 = null;
            }
            C2012c c2012c7 = c2012c;
            z2 = false;
            c1959ad = c1959ad2;
            c2012c3 = c2012c7;
        }
        C1999c.m2341a(m2262g);
        if (c2012c2 != null) {
            this.f5062c.m1980b(this.f5061b, c2012c2);
        }
        if (z2) {
            this.f5062c.m1986a(this.f5061b, c2012c3);
        }
        if (c2012c3 != null) {
            return c2012c3;
        }
        if (c1959ad != null || ((c2015a = this.f5063e) != null && c2015a.m2280a())) {
            z3 = false;
        } else {
            this.f5063e = this.f5067i.m2283b();
            z3 = true;
        }
        synchronized (this.f5065g) {
            if (this.f5072n) {
                throw new IOException("Canceled");
            }
            z4 = z2;
            C2012c c2012c8 = c2012c3;
            if (z3) {
                List<C1959ad> m2278c = this.f5063e.m2278c();
                int size = m2278c.size();
                int i5 = 0;
                while (true) {
                    z4 = z2;
                    c2012c8 = c2012c3;
                    if (i5 >= size) {
                        break;
                    }
                    C1959ad c1959ad3 = m2278c.get(i5);
                    AbstractC1974a.f4904a.mo1849a(this.f5065g, this.f5060a, this, c1959ad3);
                    if (this.f5069k != null) {
                        c2012c8 = this.f5069k;
                        this.f5064f = c1959ad3;
                        z4 = true;
                        break;
                    }
                    i5++;
                }
            }
            c2012c4 = c2012c8;
            if (!z4) {
                C1959ad c1959ad4 = c1959ad;
                if (c1959ad == null) {
                    c1959ad4 = this.f5063e.m2279b();
                }
                this.f5064f = c1959ad4;
                this.f5068j = 0;
                C2012c c2012c9 = new C2012c(this.f5065g, c1959ad4);
                m2272a(c2012c9, false);
                c2012c4 = c2012c9;
            }
        }
        if (z4) {
            this.f5062c.m1986a(this.f5061b, c2012c4);
            return c2012c4;
        }
        c2012c4.m2306a(i, i2, i3, i4, z, this.f5061b, this.f5062c);
        m2261h().m2290b(c2012c4.m2307a());
        synchronized (this.f5065g) {
            this.f5070l = true;
            AbstractC1974a.f4904a.mo1844b(this.f5065g, c2012c4);
            socket = null;
            c2012c5 = c2012c4;
            if (c2012c4.m2293d()) {
                socket = AbstractC1974a.f4904a.mo1850a(this.f5065g, this.f5060a, this);
                c2012c5 = this.f5069k;
            }
        }
        C1999c.m2341a(socket);
        this.f5062c.m1986a(this.f5061b, c2012c5);
        return c2012c5;
    }

    /* renamed from: a */
    private C2012c m2275a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        while (true) {
            C2012c m2276a = m2276a(i, i2, i3, i4, z);
            synchronized (this.f5065g) {
                if (m2276a.f5035b == 0) {
                    return m2276a;
                }
                if (m2276a.m2296a(z2)) {
                    return m2276a;
                }
                m2264e();
            }
        }
    }

    /* renamed from: b */
    private void m2267b(C2012c c2012c) {
        int size = c2012c.f5037d.size();
        for (int i = 0; i < size; i++) {
            if (c2012c.f5037d.get(i).get() == this) {
                c2012c.f5037d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: g */
    private Socket m2262g() {
        if (f5059d || Thread.holdsLock(this.f5065g)) {
            C2012c c2012c = this.f5069k;
            if (c2012c != null && c2012c.f5034a) {
                return m2269a(false, false, true);
            }
            return null;
        }
        throw new AssertionError();
    }

    /* renamed from: h */
    private C2013d m2261h() {
        return AbstractC1974a.f4904a.mo1851a(this.f5065g);
    }

    /* renamed from: a */
    public Socket m2273a(C2012c c2012c) {
        if (f5059d || Thread.holdsLock(this.f5065g)) {
            if (this.f5073o != null || this.f5069k.f5037d.size() != 1) {
                throw new IllegalStateException();
            }
            Reference<C2016f> reference = this.f5069k.f5037d.get(0);
            Socket m2269a = m2269a(true, false, false);
            this.f5069k = c2012c;
            c2012c.f5037d.add(reference);
            return m2269a;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public AbstractC1988c m2277a() {
        AbstractC1988c abstractC1988c;
        synchronized (this.f5065g) {
            abstractC1988c = this.f5073o;
        }
        return abstractC1988c;
    }

    /* renamed from: a */
    public AbstractC1988c m2271a(C2098w c2098w, AbstractC2092t.AbstractC2093a abstractC2093a, boolean z) {
        try {
            AbstractC1988c m2297a = m2275a(abstractC2093a.mo1900b(), abstractC2093a.mo1899c(), abstractC2093a.mo1898d(), c2098w.m1876d(), c2098w.m1861s(), z).m2297a(c2098w, abstractC2093a, this);
            synchronized (this.f5065g) {
                this.f5073o = m2297a;
            }
            return m2297a;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* renamed from: a */
    public void m2274a(IOException iOException) {
        boolean z;
        C2012c c2012c;
        Socket m2269a;
        synchronized (this.f5065g) {
            if (iOException instanceof StreamResetException) {
                StreamResetException streamResetException = (StreamResetException) iOException;
                if (streamResetException.f5107a == EnumC2036a.REFUSED_STREAM) {
                    this.f5068j++;
                }
                if (streamResetException.f5107a != EnumC2036a.REFUSED_STREAM || this.f5068j > 1) {
                    this.f5064f = null;
                    z = true;
                }
                z = false;
            } else {
                if (this.f5069k != null && (!this.f5069k.m2293d() || (iOException instanceof ConnectionShutdownException))) {
                    if (this.f5069k.f5035b == 0) {
                        if (this.f5064f != null && iOException != null) {
                            this.f5067i.m2285a(this.f5064f, iOException);
                        }
                        this.f5064f = null;
                    }
                    z = true;
                }
                z = false;
            }
            c2012c = this.f5069k;
            m2269a = m2269a(z, false, true);
            if (this.f5069k != null || !this.f5070l) {
                c2012c = null;
            }
        }
        C1999c.m2341a(m2269a);
        if (c2012c != null) {
            this.f5062c.m1980b(this.f5061b, c2012c);
        }
    }

    /* renamed from: a */
    public void m2272a(C2012c c2012c, boolean z) {
        if (f5059d || Thread.holdsLock(this.f5065g)) {
            if (this.f5069k != null) {
                throw new IllegalStateException();
            }
            this.f5069k = c2012c;
            this.f5070l = z;
            c2012c.f5037d.add(new C2017a(this, this.f5066h));
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m2270a(boolean z, AbstractC1988c abstractC1988c, long j, IOException iOException) {
        C2012c c2012c;
        Socket m2269a;
        boolean z2;
        this.f5062c.m1981b(this.f5061b, j);
        synchronized (this.f5065g) {
            if (abstractC1988c != null) {
                if (abstractC1988c == this.f5073o) {
                    if (!z) {
                        this.f5069k.f5035b++;
                    }
                    c2012c = this.f5069k;
                    m2269a = m2269a(z, false, true);
                    if (this.f5069k != null) {
                        c2012c = null;
                    }
                    z2 = this.f5071m;
                }
            }
            throw new IllegalStateException("expected " + this.f5073o + " but was " + abstractC1988c);
        }
        C1999c.m2341a(m2269a);
        if (c2012c != null) {
            this.f5062c.m1980b(this.f5061b, c2012c);
        }
        if (iOException != null) {
            this.f5062c.m1993a(this.f5061b, iOException);
        } else if (!z2) {
        } else {
            this.f5062c.m1975g(this.f5061b);
        }
    }

    /* renamed from: b */
    public C1959ad m2268b() {
        return this.f5064f;
    }

    /* renamed from: c */
    public C2012c m2266c() {
        C2012c c2012c;
        synchronized (this) {
            c2012c = this.f5069k;
        }
        return c2012c;
    }

    /* renamed from: d */
    public void m2265d() {
        C2012c c2012c;
        Socket m2269a;
        synchronized (this.f5065g) {
            c2012c = this.f5069k;
            m2269a = m2269a(false, true, false);
            if (this.f5069k != null) {
                c2012c = null;
            }
        }
        C1999c.m2341a(m2269a);
        if (c2012c != null) {
            this.f5062c.m1980b(this.f5061b, c2012c);
        }
    }

    /* renamed from: e */
    public void m2264e() {
        C2012c c2012c;
        Socket m2269a;
        synchronized (this.f5065g) {
            c2012c = this.f5069k;
            m2269a = m2269a(true, false, false);
            if (this.f5069k != null) {
                c2012c = null;
            }
        }
        C1999c.m2341a(m2269a);
        if (c2012c != null) {
            this.f5062c.m1980b(this.f5061b, c2012c);
        }
    }

    /* renamed from: f */
    public boolean m2263f() {
        C2014e.C2015a c2015a;
        return this.f5064f != null || ((c2015a = this.f5063e) != null && c2015a.m2280a()) || this.f5067i.m2288a();
    }

    public String toString() {
        C2012c m2266c = m2266c();
        return m2266c != null ? m2266c.toString() : this.f5060a.toString();
    }
}
