package okhttp3;

import java.io.Closeable;
import javax.annotation.Nullable;
import okhttp3.C2087r;
/* renamed from: okhttp3.ab */
/* loaded from: classes-dex2jar.jar:okhttp3/ab.class */
public final class C1955ab implements Closeable {

    /* renamed from: a */
    final C2104z f4717a;

    /* renamed from: b */
    final EnumC2101x f4718b;

    /* renamed from: c */
    final int f4719c;

    /* renamed from: d */
    final String f4720d;
    @Nullable

    /* renamed from: e */
    final C2086q f4721e;

    /* renamed from: f */
    final C2087r f4722f;
    @Nullable

    /* renamed from: g */
    final AbstractC1957ac f4723g;
    @Nullable

    /* renamed from: h */
    final C1955ab f4724h;
    @Nullable

    /* renamed from: i */
    final C1955ab f4725i;
    @Nullable

    /* renamed from: j */
    final C1955ab f4726j;

    /* renamed from: k */
    final long f4727k;

    /* renamed from: l */
    final long f4728l;

    /* renamed from: m */
    private volatile C1964d f4729m;

    /* renamed from: okhttp3.ab$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/ab$a.class */
    public static class C1956a {

        /* renamed from: a */
        C2104z f4730a;

        /* renamed from: b */
        EnumC2101x f4731b;

        /* renamed from: c */
        int f4732c;

        /* renamed from: d */
        String f4733d;
        @Nullable

        /* renamed from: e */
        C2086q f4734e;

        /* renamed from: f */
        C2087r.C2088a f4735f;

        /* renamed from: g */
        AbstractC1957ac f4736g;

        /* renamed from: h */
        C1955ab f4737h;

        /* renamed from: i */
        C1955ab f4738i;

        /* renamed from: j */
        C1955ab f4739j;

        /* renamed from: k */
        long f4740k;

        /* renamed from: l */
        long f4741l;

        public C1956a() {
            this.f4732c = -1;
            this.f4735f = new C2087r.C2088a();
        }

        C1956a(C1955ab c1955ab) {
            this.f4732c = -1;
            this.f4730a = c1955ab.f4717a;
            this.f4731b = c1955ab.f4718b;
            this.f4732c = c1955ab.f4719c;
            this.f4733d = c1955ab.f4720d;
            this.f4734e = c1955ab.f4721e;
            this.f4735f = c1955ab.f4722f.m1965b();
            this.f4736g = c1955ab.f4723g;
            this.f4737h = c1955ab.f4724h;
            this.f4738i = c1955ab.f4725i;
            this.f4739j = c1955ab.f4726j;
            this.f4740k = c1955ab.f4727k;
            this.f4741l = c1955ab.f4728l;
        }

        /* renamed from: a */
        private void m2475a(String str, C1955ab c1955ab) {
            if (c1955ab.f4723g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (c1955ab.f4724h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (c1955ab.f4725i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (c1955ab.f4726j == null) {
            } else {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        /* renamed from: d */
        private void m2465d(C1955ab c1955ab) {
            if (c1955ab.f4723g == null) {
                return;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }

        /* renamed from: a */
        public C1956a m2479a(int i) {
            this.f4732c = i;
            return this;
        }

        /* renamed from: a */
        public C1956a m2478a(long j) {
            this.f4740k = j;
            return this;
        }

        /* renamed from: a */
        public C1956a m2477a(String str) {
            this.f4733d = str;
            return this;
        }

        /* renamed from: a */
        public C1956a m2476a(String str, String str2) {
            this.f4735f.m1960a(str, str2);
            return this;
        }

        /* renamed from: a */
        public C1956a m2474a(@Nullable C1955ab c1955ab) {
            if (c1955ab != null) {
                m2475a("networkResponse", c1955ab);
            }
            this.f4737h = c1955ab;
            return this;
        }

        /* renamed from: a */
        public C1956a m2473a(@Nullable AbstractC1957ac abstractC1957ac) {
            this.f4736g = abstractC1957ac;
            return this;
        }

        /* renamed from: a */
        public C1956a m2472a(@Nullable C2086q c2086q) {
            this.f4734e = c2086q;
            return this;
        }

        /* renamed from: a */
        public C1956a m2471a(C2087r c2087r) {
            this.f4735f = c2087r.m1965b();
            return this;
        }

        /* renamed from: a */
        public C1956a m2470a(EnumC2101x enumC2101x) {
            this.f4731b = enumC2101x;
            return this;
        }

        /* renamed from: a */
        public C1956a m2469a(C2104z c2104z) {
            this.f4730a = c2104z;
            return this;
        }

        /* renamed from: a */
        public C1955ab m2480a() {
            if (this.f4730a != null) {
                if (this.f4731b == null) {
                    throw new IllegalStateException("protocol == null");
                }
                if (this.f4732c >= 0) {
                    if (this.f4733d == null) {
                        throw new IllegalStateException("message == null");
                    }
                    return new C1955ab(this);
                }
                throw new IllegalStateException("code < 0: " + this.f4732c);
            }
            throw new IllegalStateException("request == null");
        }

        /* renamed from: b */
        public C1956a m2468b(long j) {
            this.f4741l = j;
            return this;
        }

        /* renamed from: b */
        public C1956a m2467b(@Nullable C1955ab c1955ab) {
            if (c1955ab != null) {
                m2475a("cacheResponse", c1955ab);
            }
            this.f4738i = c1955ab;
            return this;
        }

        /* renamed from: c */
        public C1956a m2466c(@Nullable C1955ab c1955ab) {
            if (c1955ab != null) {
                m2465d(c1955ab);
            }
            this.f4739j = c1955ab;
            return this;
        }
    }

    C1955ab(C1956a c1956a) {
        this.f4717a = c1956a.f4730a;
        this.f4718b = c1956a.f4731b;
        this.f4719c = c1956a.f4732c;
        this.f4720d = c1956a.f4733d;
        this.f4721e = c1956a.f4734e;
        this.f4722f = c1956a.f4735f.m1962a();
        this.f4723g = c1956a.f4736g;
        this.f4724h = c1956a.f4737h;
        this.f4725i = c1956a.f4738i;
        this.f4726j = c1956a.f4739j;
        this.f4727k = c1956a.f4740k;
        this.f4728l = c1956a.f4741l;
    }

    @Nullable
    /* renamed from: a */
    public String m2493a(String str) {
        return m2492a(str, null);
    }

    @Nullable
    /* renamed from: a */
    public String m2492a(String str, @Nullable String str2) {
        String m1968a = this.f4722f.m1968a(str);
        if (m1968a == null) {
            m1968a = str2;
        }
        return m1968a;
    }

    /* renamed from: a */
    public C2104z m2494a() {
        return this.f4717a;
    }

    /* renamed from: b */
    public int m2491b() {
        return this.f4719c;
    }

    /* renamed from: c */
    public boolean m2490c() {
        int i = this.f4719c;
        return i >= 200 && i < 300;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AbstractC1957ac abstractC1957ac = this.f4723g;
        if (abstractC1957ac != null) {
            abstractC1957ac.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    /* renamed from: d */
    public String m2489d() {
        return this.f4720d;
    }

    /* renamed from: e */
    public C2086q m2488e() {
        return this.f4721e;
    }

    /* renamed from: f */
    public C2087r m2487f() {
        return this.f4722f;
    }

    @Nullable
    /* renamed from: g */
    public AbstractC1957ac m2486g() {
        return this.f4723g;
    }

    /* renamed from: h */
    public C1956a m2485h() {
        return new C1956a(this);
    }

    @Nullable
    /* renamed from: i */
    public C1955ab m2484i() {
        return this.f4726j;
    }

    /* renamed from: j */
    public C1964d m2483j() {
        C1964d c1964d = this.f4729m;
        if (c1964d == null) {
            c1964d = C1964d.m2451a(this.f4722f);
            this.f4729m = c1964d;
        }
        return c1964d;
    }

    /* renamed from: k */
    public long m2482k() {
        return this.f4727k;
    }

    /* renamed from: l */
    public long m2481l() {
        return this.f4728l;
    }

    public String toString() {
        return "Response{protocol=" + this.f4718b + ", code=" + this.f4719c + ", message=" + this.f4720d + ", url=" + this.f4717a.m1823a() + '}';
    }
}
