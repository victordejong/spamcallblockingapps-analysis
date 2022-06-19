package retrofit2;

import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.AbstractC5406ad;
import okhttp3.AbstractC5415e;
import okhttp3.AbstractC5417f;
import okhttp3.C5404ac;
import okhttp3.C5546v;
import p000a.AbstractC0007e;
import p000a.AbstractC0010h;
import p000a.C0005c;
import p000a.C0014l;
/* renamed from: retrofit2.h */
/* loaded from: classes-dex2jar.jar:retrofit2/h.class */
public final class C5600h<T> implements AbstractC5586b<T> {

    /* renamed from: a */
    private final C5631n<T, ?> f23266a;
    @Nullable

    /* renamed from: b */
    private final Object[] f23267b;

    /* renamed from: c */
    private volatile boolean f23268c;
    @GuardedBy("this")
    @Nullable

    /* renamed from: d */
    private AbstractC5415e f23269d;
    @GuardedBy("this")
    @Nullable

    /* renamed from: e */
    private Throwable f23270e;
    @GuardedBy("this")

    /* renamed from: f */
    private boolean f23271f;

    /* renamed from: retrofit2.h$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/h$a.class */
    public static final class C5602a extends AbstractC5406ad {

        /* renamed from: a */
        IOException f23274a;

        /* renamed from: b */
        private final AbstractC5406ad f23275b;

        C5602a(AbstractC5406ad abstractC5406ad) {
            this.f23275b = abstractC5406ad;
        }

        @Override // okhttp3.AbstractC5406ad
        /* renamed from: a */
        public C5546v mo89a() {
            return this.f23275b.mo89a();
        }

        @Override // okhttp3.AbstractC5406ad
        /* renamed from: b */
        public long mo88b() {
            return this.f23275b.mo88b();
        }

        @Override // okhttp3.AbstractC5406ad
        /* renamed from: c */
        public AbstractC0007e mo87c() {
            return C0014l.m22522a(new AbstractC0010h(this.f23275b.mo87c()) { // from class: retrofit2.h.a.1
                @Override // p000a.AbstractC0010h, p000a.AbstractC0024s
                /* renamed from: a */
                public long mo90a(C0005c c0005c, long j) {
                    try {
                        return super.mo90a(c0005c, j);
                    } catch (IOException e) {
                        C5602a.this.f23274a = e;
                        throw e;
                    }
                }
            });
        }

        @Override // okhttp3.AbstractC5406ad, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f23275b.close();
        }

        /* renamed from: e */
        void m91e() {
            if (this.f23274a != null) {
                throw this.f23274a;
            }
        }
    }

    /* renamed from: retrofit2.h$b */
    /* loaded from: classes-dex2jar.jar:retrofit2/h$b.class */
    public static final class C5604b extends AbstractC5406ad {

        /* renamed from: a */
        private final C5546v f23277a;

        /* renamed from: b */
        private final long f23278b;

        C5604b(C5546v c5546v, long j) {
            this.f23277a = c5546v;
            this.f23278b = j;
        }

        @Override // okhttp3.AbstractC5406ad
        /* renamed from: a */
        public C5546v mo89a() {
            return this.f23277a;
        }

        @Override // okhttp3.AbstractC5406ad
        /* renamed from: b */
        public long mo88b() {
            return this.f23278b;
        }

        @Override // okhttp3.AbstractC5406ad
        /* renamed from: c */
        public AbstractC0007e mo87c() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public C5600h(C5631n<T, ?> c5631n, @Nullable Object[] objArr) {
        this.f23266a = c5631n;
        this.f23267b = objArr;
    }

    /* renamed from: f */
    private AbstractC5415e m95f() {
        AbstractC5415e m31a = this.f23266a.m31a(this.f23267b);
        if (m31a == null) {
            throw new NullPointerException("Call.Factory returned null.");
        }
        return m31a;
    }

    @Override // retrofit2.AbstractC5586b
    /* renamed from: a */
    public C5627l<T> mo102a() {
        AbstractC5415e abstractC5415e;
        synchronized (this) {
            if (this.f23271f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f23271f = true;
            if (this.f23270e != null) {
                if (this.f23270e instanceof IOException) {
                    throw ((IOException) this.f23270e);
                }
                if (!(this.f23270e instanceof RuntimeException)) {
                    throw ((Error) this.f23270e);
                }
                throw ((RuntimeException) this.f23270e);
            }
            AbstractC5415e abstractC5415e2 = this.f23269d;
            abstractC5415e = abstractC5415e2;
            if (abstractC5415e2 == null) {
                try {
                    abstractC5415e = m95f();
                    this.f23269d = abstractC5415e;
                } catch (IOException | Error | RuntimeException e) {
                    C5633o.m14a(e);
                    this.f23270e = e;
                    throw e;
                }
            }
        }
        if (this.f23268c) {
            abstractC5415e.mo153b();
        }
        return m101a(abstractC5415e.mo157a());
    }

    /* renamed from: a */
    C5627l<T> m101a(C5404ac c5404ac) {
        C5627l<T> m55a;
        AbstractC5406ad m803f = c5404ac.m803f();
        C5404ac m797a = c5404ac.m802g().m789a(new C5604b(m803f.mo89a(), m803f.mo88b())).m797a();
        int m807b = m797a.m807b();
        if (m807b < 200 || m807b >= 300) {
            try {
                m55a = C5627l.m55a(C5633o.m7a(m803f), m797a);
            } finally {
                m803f.close();
            }
        } else if (m807b == 204 || m807b == 205) {
            m803f.close();
            m55a = C5627l.m56a((Object) null, m797a);
        } else {
            C5602a c5602a = new C5602a(m803f);
            try {
                m55a = C5627l.m56a(this.f23266a.m33a(c5602a), m797a);
            } catch (RuntimeException e) {
                c5602a.m91e();
                throw e;
            }
        }
        return m55a;
    }

    @Override // retrofit2.AbstractC5586b
    /* renamed from: a */
    public void mo100a(final AbstractC5589d<T> abstractC5589d) {
        AbstractC5415e abstractC5415e;
        Throwable th;
        C5633o.m15a(abstractC5589d, "callback == null");
        synchronized (this) {
            if (this.f23271f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f23271f = true;
            abstractC5415e = this.f23269d;
            th = this.f23270e;
            if (abstractC5415e == null && th == null) {
                AbstractC5415e m95f = m95f();
                this.f23269d = m95f;
                abstractC5415e = m95f;
            }
        }
        if (th != null) {
            abstractC5589d.mo104a(this, th);
            return;
        }
        if (this.f23268c) {
            abstractC5415e.mo153b();
        }
        abstractC5415e.mo156a(new AbstractC5417f() { // from class: retrofit2.h.1
            /* renamed from: a */
            private void m94a(Throwable th2) {
                try {
                    abstractC5589d.mo104a(C5600h.this, th2);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }

            @Override // okhttp3.AbstractC5417f
            /* renamed from: a */
            public void mo93a(AbstractC5415e abstractC5415e2, IOException iOException) {
                m94a(iOException);
            }

            @Override // okhttp3.AbstractC5417f
            /* renamed from: a */
            public void mo92a(AbstractC5415e abstractC5415e2, C5404ac c5404ac) {
                try {
                    try {
                        abstractC5589d.mo103a(C5600h.this, C5600h.this.m101a(c5404ac));
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                } catch (Throwable th3) {
                    m94a(th3);
                }
            }
        });
    }

    @Override // retrofit2.AbstractC5586b
    /* renamed from: b */
    public void mo99b() {
        AbstractC5415e abstractC5415e;
        this.f23268c = true;
        synchronized (this) {
            abstractC5415e = this.f23269d;
        }
        if (abstractC5415e != null) {
            abstractC5415e.mo153b();
        }
    }

    @Override // retrofit2.AbstractC5586b
    /* renamed from: c */
    public boolean mo98c() {
        boolean z = true;
        if (!this.f23268c) {
            synchronized (this) {
                z = this.f23269d != null && this.f23269d.mo152c();
            }
        }
        return z;
    }

    /* renamed from: e */
    public C5600h<T> mo97d() {
        return new C5600h<>(this.f23266a, this.f23267b);
    }
}
