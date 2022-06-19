package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import okhttp3.internal.AbstractRunnableC5434b;
import okhttp3.internal.connection.C5460a;
import okhttp3.internal.p192a.C5425a;
import okhttp3.internal.p193b.C5435a;
import okhttp3.internal.p193b.C5436b;
import okhttp3.internal.p193b.C5443g;
import okhttp3.internal.p193b.C5446j;
import okhttp3.internal.p196e.C5480f;
/* renamed from: okhttp3.z */
/* loaded from: classes-dex2jar.jar:okhttp3/z.class */
public final class C5554z implements AbstractC5415e {

    /* renamed from: a */
    final C5550x f23239a;

    /* renamed from: b */
    final C5446j f23240b;

    /* renamed from: c */
    final C5400aa f23241c;

    /* renamed from: d */
    final boolean f23242d;

    /* renamed from: e */
    private AbstractC5532p f23243e;

    /* renamed from: f */
    private boolean f23244f;

    /* renamed from: okhttp3.z$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/z$a.class */
    public final class C5555a extends AbstractRunnableC5434b {

        /* renamed from: c */
        private final AbstractC5417f f23246c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5555a(AbstractC5417f abstractC5417f) {
            super("OkHttp %s", r8.m149f());
            C5554z.this = r8;
            this.f23246c = abstractC5417f;
        }

        /* renamed from: a */
        public String m146a() {
            return C5554z.this.f23241c.m827a().m248f();
        }

        /* renamed from: b */
        public C5554z m145b() {
            return C5554z.this;
        }

        @Override // okhttp3.internal.AbstractRunnableC5434b
        /* renamed from: c */
        protected void mo144c() {
            boolean z = true;
            try {
                try {
                    C5404ac m148g = C5554z.this.m148g();
                    try {
                        if (C5554z.this.f23240b.m679b()) {
                            this.f23246c.mo93a(C5554z.this, new IOException("Canceled"));
                        } else {
                            this.f23246c.mo92a(C5554z.this, m148g);
                        }
                    } catch (IOException e) {
                        e = e;
                        if (z) {
                            C5480f.m541c().mo554a(4, "Callback failure for " + C5554z.this.m150e(), e);
                        } else {
                            C5554z.this.f23243e.m311a(C5554z.this, e);
                            this.f23246c.mo93a(C5554z.this, e);
                        }
                    }
                } finally {
                    C5554z.this.f23239a.m180t().m318b(this);
                }
            } catch (IOException e2) {
                e = e2;
                z = false;
            }
        }
    }

    private C5554z(C5550x c5550x, C5400aa c5400aa, boolean z) {
        this.f23239a = c5550x;
        this.f23241c = c5400aa;
        this.f23242d = z;
        this.f23240b = new C5446j(c5550x, z);
    }

    /* renamed from: a */
    public static C5554z m155a(C5550x c5550x, C5400aa c5400aa, boolean z) {
        C5554z c5554z = new C5554z(c5550x, c5400aa, z);
        c5554z.f23243e = c5550x.m175y().mo292a(c5554z);
        return c5554z;
    }

    /* renamed from: h */
    private void m147h() {
        this.f23240b.m684a(C5480f.m541c().mo553a("response.body().close()"));
    }

    @Override // okhttp3.AbstractC5415e
    /* renamed from: a */
    public C5404ac mo157a() {
        synchronized (this) {
            if (this.f23244f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f23244f = true;
        }
        m147h();
        this.f23243e.m313a(this);
        try {
            try {
                this.f23239a.m180t().m320a(this);
                C5404ac m148g = m148g();
                if (m148g != null) {
                    return m148g;
                }
                throw new IOException("Canceled");
            } catch (IOException e) {
                this.f23243e.m311a(this, e);
                throw e;
            }
        } finally {
            this.f23239a.m180t().m317b(this);
        }
    }

    @Override // okhttp3.AbstractC5415e
    /* renamed from: a */
    public void mo156a(AbstractC5417f abstractC5417f) {
        synchronized (this) {
            if (this.f23244f) {
                throw new IllegalStateException("Already Executed");
            }
            this.f23244f = true;
        }
        m147h();
        this.f23243e.m313a(this);
        this.f23239a.m180t().m321a(new C5555a(abstractC5417f));
    }

    @Override // okhttp3.AbstractC5415e
    /* renamed from: b */
    public void mo153b() {
        this.f23240b.m687a();
    }

    @Override // okhttp3.AbstractC5415e
    /* renamed from: c */
    public boolean mo152c() {
        return this.f23240b.m679b();
    }

    /* renamed from: d */
    public C5554z clone() {
        return m155a(this.f23239a, this.f23241c, this.f23242d);
    }

    /* renamed from: e */
    String m150e() {
        return (mo152c() ? "canceled " : "") + (this.f23242d ? "web socket" : "call") + " to " + m149f();
    }

    /* renamed from: f */
    String m149f() {
        return this.f23241c.m827a().m240n();
    }

    /* renamed from: g */
    C5404ac m148g() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f23239a.m177w());
        arrayList.add(this.f23240b);
        arrayList.add(new C5435a(this.f23239a.m193g()));
        arrayList.add(new C5425a(this.f23239a.m192h()));
        arrayList.add(new C5460a(this.f23239a));
        if (!this.f23242d) {
            arrayList.addAll(this.f23239a.m176x());
        }
        arrayList.add(new C5436b(this.f23242d));
        return new C5443g(arrayList, null, null, null, 0, this.f23241c, this, this.f23243e, this.f23239a.m201a(), this.f23239a.m198b(), this.f23239a.m197c()).mo214a(this.f23241c);
    }
}
