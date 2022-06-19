package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import okhttp3.internal.AbstractRunnableC1984b;
import okhttp3.internal.connection.C2010a;
import okhttp3.internal.p091a.C1975a;
import okhttp3.internal.p092b.C1985a;
import okhttp3.internal.p092b.C1986b;
import okhttp3.internal.p092b.C1993g;
import okhttp3.internal.p092b.C1996j;
import okhttp3.internal.p095e.C2030f;
/* renamed from: okhttp3.y */
/* loaded from: classes-dex2jar.jar:okhttp3/y.class */
public final class C2102y implements AbstractC1966e {

    /* renamed from: a */
    final C2098w f5459a;

    /* renamed from: b */
    final C1996j f5460b;

    /* renamed from: c */
    final C2104z f5461c;

    /* renamed from: d */
    final boolean f5462d;

    /* renamed from: e */
    private AbstractC2082p f5463e;

    /* renamed from: f */
    private boolean f5464f;

    /* renamed from: okhttp3.y$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/y$a.class */
    public final class C2103a extends AbstractRunnableC1984b {

        /* renamed from: c */
        private final AbstractC1967f f5466c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2103a(AbstractC1967f abstractC1967f) {
            super("OkHttp %s", r8.m1829f());
            C2102y.this = r8;
            this.f5466c = abstractC1967f;
        }

        /* renamed from: a */
        public String m1826a() {
            return C2102y.this.f5461c.m1823a().m1934g();
        }

        /* renamed from: b */
        public C2102y m1825b() {
            return C2102y.this;
        }

        @Override // okhttp3.internal.AbstractRunnableC1984b
        /* renamed from: c */
        protected void mo1824c() {
            IOException e;
            C1955ab m1828g;
            boolean z = true;
            try {
                try {
                    m1828g = C2102y.this.m1828g();
                } catch (IOException e2) {
                    e = e2;
                    z = false;
                }
                try {
                    if (C2102y.this.f5460b.m2366a()) {
                        this.f5466c.onFailure(C2102y.this, new IOException("Canceled"));
                    } else {
                        this.f5466c.onResponse(C2102y.this, m1828g);
                    }
                } catch (IOException e3) {
                    e = e3;
                    if (z) {
                        C2030f.m2224c().mo2237a(4, "Callback failure for " + C2102y.this.m1830e(), e);
                    } else {
                        C2102y.this.f5463e.m1993a(C2102y.this, e);
                        this.f5466c.onFailure(C2102y.this, e);
                    }
                }
            } finally {
                C2102y.this.f5459a.m1860t().m2000b(this);
            }
        }
    }

    private C2102y(C2098w c2098w, C2104z c2104z, boolean z) {
        this.f5459a = c2098w;
        this.f5461c = c2104z;
        this.f5462d = z;
        this.f5460b = new C1996j(c2098w, z);
    }

    /* renamed from: a */
    public static C2102y m1835a(C2098w c2098w, C2104z c2104z, boolean z) {
        C2102y c2102y = new C2102y(c2098w, c2104z, z);
        c2102y.f5463e = c2098w.m1855y().mo1974a(c2102y);
        return c2102y;
    }

    /* renamed from: h */
    private void m1827h() {
        this.f5460b.m2363a(C2030f.m2224c().mo2236a("response.body().close()"));
    }

    @Override // okhttp3.AbstractC1966e
    /* renamed from: a */
    public C2104z mo1837a() {
        return this.f5461c;
    }

    @Override // okhttp3.AbstractC1966e
    /* renamed from: a */
    public void mo1836a(AbstractC1967f abstractC1967f) {
        synchronized (this) {
            if (this.f5464f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f5464f = true;
        }
        m1827h();
        this.f5463e.m1995a(this);
        this.f5459a.m1860t().m2003a(new C2103a(abstractC1967f));
    }

    @Override // okhttp3.AbstractC1966e
    /* renamed from: b */
    public C1955ab mo1833b() {
        synchronized (this) {
            if (this.f5464f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f5464f = true;
        }
        m1827h();
        this.f5463e.m1995a(this);
        try {
            try {
                this.f5459a.m1860t().m2002a(this);
                C1955ab m1828g = m1828g();
                if (m1828g == null) {
                    throw new IOException("Canceled");
                }
                this.f5459a.m1860t().m1999b(this);
                return m1828g;
            } catch (IOException e) {
                this.f5463e.m1993a(this, e);
                throw e;
            }
        } catch (Throwable th) {
            this.f5459a.m1860t().m1999b(this);
            throw th;
        }
    }

    /* renamed from: c */
    public boolean m1832c() {
        return this.f5460b.m2366a();
    }

    /* renamed from: d */
    public C2102y clone() {
        return m1835a(this.f5459a, this.f5461c, this.f5462d);
    }

    /* renamed from: e */
    String m1830e() {
        StringBuilder sb = new StringBuilder();
        sb.append(m1832c() ? "canceled " : "");
        sb.append(this.f5462d ? "web socket" : "call");
        sb.append(" to ");
        sb.append(m1829f());
        return sb.toString();
    }

    /* renamed from: f */
    String m1829f() {
        return this.f5461c.m1823a().m1927n();
    }

    /* renamed from: g */
    C1955ab m1828g() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f5459a.m1857w());
        arrayList.add(this.f5460b);
        arrayList.add(new C1985a(this.f5459a.m1873g()));
        arrayList.add(new C1975a(this.f5459a.m1872h()));
        arrayList.add(new C2010a(this.f5459a));
        if (!this.f5462d) {
            arrayList.addAll(this.f5459a.m1856x());
        }
        arrayList.add(new C1986b(this.f5462d));
        return new C1993g(arrayList, null, null, null, 0, this.f5461c, this, this.f5463e, this.f5459a.m1881a(), this.f5459a.m1878b(), this.f5459a.m1877c()).mo1901a(this.f5461c);
    }
}
