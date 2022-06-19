package okhttp3.internal.p194c;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC5406ad;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5539s;
import okhttp3.C5541t;
import okhttp3.C5550x;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5462c;
import okhttp3.internal.connection.C5466f;
import okhttp3.internal.p193b.AbstractC5438c;
import okhttp3.internal.p193b.C5441e;
import okhttp3.internal.p193b.C5444h;
import okhttp3.internal.p193b.C5445i;
import okhttp3.internal.p193b.C5447k;
import p000a.AbstractC0006d;
import p000a.AbstractC0007e;
import p000a.AbstractC0023r;
import p000a.AbstractC0024s;
import p000a.C0005c;
import p000a.C0011i;
import p000a.C0014l;
import p000a.C0025t;
/* renamed from: okhttp3.internal.c.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a.class */
public final class C5452a implements AbstractC5438c {

    /* renamed from: a */
    final C5550x f22776a;

    /* renamed from: b */
    final C5466f f22777b;

    /* renamed from: c */
    final AbstractC0007e f22778c;

    /* renamed from: d */
    final AbstractC0006d f22779d;

    /* renamed from: e */
    int f22780e = 0;

    /* renamed from: f */
    private long f22781f = 262144;

    /* renamed from: okhttp3.internal.c.a$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$a.class */
    public abstract class AbstractC5454a implements AbstractC0024s {

        /* renamed from: a */
        protected final C0011i f22782a;

        /* renamed from: b */
        protected boolean f22783b;

        /* renamed from: c */
        protected long f22784c;

        private AbstractC5454a() {
            C5452a.this = r6;
            this.f22782a = new C0011i(C5452a.this.f22778c.mo405a());
            this.f22784c = 0L;
        }

        @Override // p000a.AbstractC0024s
        /* renamed from: a */
        public long mo90a(C0005c c0005c, long j) {
            try {
                long a = C5452a.this.f22778c.mo90a(c0005c, j);
                if (a > 0) {
                    this.f22784c += a;
                }
                return a;
            } catch (IOException e) {
                m635a(false, e);
                throw e;
            }
        }

        @Override // p000a.AbstractC0024s
        /* renamed from: a */
        public C0025t mo405a() {
            return this.f22782a;
        }

        /* renamed from: a */
        protected final void m635a(boolean z, IOException iOException) {
            if (C5452a.this.f22780e == 6) {
                return;
            }
            if (C5452a.this.f22780e != 5) {
                throw new IllegalStateException("state: " + C5452a.this.f22780e);
            }
            C5452a.this.m643a(this.f22782a);
            C5452a.this.f22780e = 6;
            if (C5452a.this.f22777b == null) {
                return;
            }
            C5452a.this.f22777b.m589a(!z, C5452a.this, this.f22784c, iOException);
        }
    }

    /* renamed from: okhttp3.internal.c.a$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$b.class */
    public final class C5455b implements AbstractC0023r {

        /* renamed from: b */
        private final C0011i f22787b;

        /* renamed from: c */
        private boolean f22788c;

        C5455b() {
            C5452a.this = r6;
            this.f22787b = new C0011i(C5452a.this.f22779d.mo408a());
        }

        @Override // p000a.AbstractC0023r
        /* renamed from: a */
        public C0025t mo408a() {
            return this.f22787b;
        }

        @Override // p000a.AbstractC0023r
        /* renamed from: a_ */
        public void mo406a_(C0005c c0005c, long j) {
            if (this.f22788c) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            C5452a.this.f22779d.mo22507k(j);
            C5452a.this.f22779d.mo22513b("\r\n");
            C5452a.this.f22779d.mo406a_(c0005c, j);
            C5452a.this.f22779d.mo22513b("\r\n");
        }

        @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                if (!this.f22788c) {
                    this.f22788c = true;
                    C5452a.this.f22779d.mo22513b("0\r\n\r\n");
                    C5452a.this.m643a(this.f22787b);
                    C5452a.this.f22780e = 3;
                }
            }
        }

        @Override // p000a.AbstractC0023r, java.io.Flushable
        public void flush() {
            synchronized (this) {
                if (!this.f22788c) {
                    C5452a.this.f22779d.flush();
                }
            }
        }
    }

    /* renamed from: okhttp3.internal.c.a$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$c.class */
    public class C5456c extends AbstractC5454a {

        /* renamed from: f */
        private final C5541t f22790f;

        /* renamed from: g */
        private long f22791g = -1;

        /* renamed from: h */
        private boolean f22792h = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5456c(C5541t c5541t) {
            super();
            C5452a.this = r5;
            this.f22790f = c5541t;
        }

        /* renamed from: b */
        private void m634b() {
            if (this.f22791g != -1) {
                C5452a.this.f22778c.mo22483o();
            }
            try {
                this.f22791g = C5452a.this.f22778c.mo22484l();
                String trim = C5452a.this.f22778c.mo22483o().trim();
                if (this.f22791g < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f22791g + trim + "\"");
                } else if (this.f22791g != 0) {
                } else {
                    this.f22792h = false;
                    C5441e.m705a(C5452a.this.f22776a.m193g(), this.f22790f, C5452a.this.m639d());
                    m635a(true, (IOException) null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
            if (r7.f22792h != false) goto L20;
         */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        @Override // okhttp3.internal.p194c.C5452a.AbstractC5454a, p000a.AbstractC0024s
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long mo90a(p000a.C0005c r8, long r9) {
            /*
                r7 = this;
                r0 = -1
                r11 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L26
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                r1 = r0
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r3 = r2
                r3.<init>()
                java.lang.String r3 = "byteCount < 0: "
                java.lang.StringBuilder r2 = r2.append(r3)
                r3 = r9
                java.lang.StringBuilder r2 = r2.append(r3)
                java.lang.String r2 = r2.toString()
                r1.<init>(r2)
                throw r0
            L26:
                r0 = r7
                boolean r0 = r0.f22783b
                if (r0 == 0) goto L37
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "closed"
                r1.<init>(r2)
                throw r0
            L37:
                r0 = r7
                boolean r0 = r0.f22792h
                if (r0 != 0) goto L41
            L3e:
                r0 = r11
                return r0
            L41:
                r0 = r7
                long r0 = r0.f22791g
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L55
                r0 = r7
                long r0 = r0.f22791g
                r1 = -1
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L60
            L55:
                r0 = r7
                r0.m634b()
                r0 = r7
                boolean r0 = r0.f22792h
                if (r0 == 0) goto L3e
            L60:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r7
                long r3 = r3.f22791g
                long r2 = java.lang.Math.min(r2, r3)
                long r0 = super.mo90a(r1, r2)
                r11 = r0
                r0 = r11
                r1 = -1
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L8a
                java.net.ProtocolException r0 = new java.net.ProtocolException
                r1 = r0
                java.lang.String r2 = "unexpected end of stream"
                r1.<init>(r2)
                r8 = r0
                r0 = r7
                r1 = 0
                r2 = r8
                r0.m635a(r1, r2)
                r0 = r8
                throw r0
            L8a:
                r0 = r7
                r1 = r7
                long r1 = r1.f22791g
                r2 = r11
                long r1 = r1 - r2
                r0.f22791g = r1
                goto L3e
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p194c.C5452a.C5456c.mo90a(a.c, long):long");
        }

        @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f22783b) {
                return;
            }
            if (this.f22792h && !C5449c.m674a(this, 100, TimeUnit.MILLISECONDS)) {
                m635a(false, (IOException) null);
            }
            this.f22783b = true;
        }
    }

    /* renamed from: okhttp3.internal.c.a$d */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$d.class */
    public final class C5457d implements AbstractC0023r {

        /* renamed from: b */
        private final C0011i f22794b;

        /* renamed from: c */
        private boolean f22795c;

        /* renamed from: d */
        private long f22796d;

        C5457d(long j) {
            C5452a.this = r6;
            this.f22794b = new C0011i(C5452a.this.f22779d.mo408a());
            this.f22796d = j;
        }

        @Override // p000a.AbstractC0023r
        /* renamed from: a */
        public C0025t mo408a() {
            return this.f22794b;
        }

        @Override // p000a.AbstractC0023r
        /* renamed from: a_ */
        public void mo406a_(C0005c c0005c, long j) {
            if (this.f22795c) {
                throw new IllegalStateException("closed");
            }
            C5449c.m676a(c0005c.m22562b(), 0L, j);
            if (j > this.f22796d) {
                throw new ProtocolException("expected " + this.f22796d + " bytes but received " + j);
            }
            C5452a.this.f22779d.mo406a_(c0005c, j);
            this.f22796d -= j;
        }

        @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f22795c) {
                return;
            }
            this.f22795c = true;
            if (this.f22796d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            C5452a.this.m643a(this.f22794b);
            C5452a.this.f22780e = 3;
        }

        @Override // p000a.AbstractC0023r, java.io.Flushable
        public void flush() {
            if (this.f22795c) {
                return;
            }
            C5452a.this.f22779d.flush();
        }
    }

    /* renamed from: okhttp3.internal.c.a$e */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$e.class */
    public class C5458e extends AbstractC5454a {

        /* renamed from: f */
        private long f22798f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5458e(long j) {
            super();
            C5452a.this = r6;
            this.f22798f = j;
            if (this.f22798f == 0) {
                m635a(true, (IOException) null);
            }
        }

        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        @Override // okhttp3.internal.p194c.C5452a.AbstractC5454a, p000a.AbstractC0024s
        /* renamed from: a */
        public long mo90a(C0005c c0005c, long j) {
            char mo90a;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f22783b) {
                throw new IllegalStateException("closed");
            }
            if (this.f22798f == 0) {
                mo90a = 65535;
            } else {
                mo90a = super.mo90a(c0005c, Math.min(this.f22798f, j));
                if (mo90a == -1) {
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    m635a(false, (IOException) protocolException);
                    throw protocolException;
                }
                this.f22798f -= mo90a;
                if (this.f22798f == 0) {
                    m635a(true, (IOException) null);
                }
            }
            return mo90a;
        }

        @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f22783b) {
                return;
            }
            if (this.f22798f != 0 && !C5449c.m674a(this, 100, TimeUnit.MILLISECONDS)) {
                m635a(false, (IOException) null);
            }
            this.f22783b = true;
        }
    }

    /* renamed from: okhttp3.internal.c.a$f */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$f.class */
    public class C5459f extends AbstractC5454a {

        /* renamed from: f */
        private boolean f22800f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5459f() {
            super();
            C5452a.this = r5;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        @Override // okhttp3.internal.p194c.C5452a.AbstractC5454a, p000a.AbstractC0024s
        /* renamed from: a */
        public long mo90a(C0005c c0005c, long j) {
            char mo90a;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f22783b) {
                throw new IllegalStateException("closed");
            }
            if (this.f22800f) {
                mo90a = 65535;
            } else {
                mo90a = super.mo90a(c0005c, j);
                if (mo90a == -1) {
                    this.f22800f = true;
                    m635a(true, (IOException) null);
                    mo90a = 65535;
                }
            }
            return mo90a;
        }

        @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f22783b) {
                return;
            }
            if (!this.f22800f) {
                m635a(false, (IOException) null);
            }
            this.f22783b = true;
        }
    }

    public C5452a(C5550x c5550x, C5466f c5466f, AbstractC0007e abstractC0007e, AbstractC0006d abstractC0006d) {
        this.f22776a = c5550x;
        this.f22777b = c5466f;
        this.f22778c = abstractC0007e;
        this.f22779d = abstractC0006d;
    }

    /* renamed from: g */
    private String m636g() {
        String mo22492e = this.f22778c.mo22492e(this.f22781f);
        this.f22781f -= mo22492e.length();
        return mo22492e;
    }

    /* renamed from: a */
    public AbstractC0023r m644a(long j) {
        if (this.f22780e != 1) {
            throw new IllegalStateException("state: " + this.f22780e);
        }
        this.f22780e = 2;
        return new C5457d(j);
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public AbstractC0023r mo494a(C5400aa c5400aa, long j) {
        AbstractC0023r m644a;
        if ("chunked".equalsIgnoreCase(c5400aa.m826a("Transfer-Encoding"))) {
            m644a = m638e();
        } else if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        } else {
            m644a = m644a(j);
        }
        return m644a;
    }

    /* renamed from: a */
    public AbstractC0024s m641a(C5541t c5541t) {
        if (this.f22780e != 4) {
            throw new IllegalStateException("state: " + this.f22780e);
        }
        this.f22780e = 5;
        return new C5456c(c5541t);
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public C5404ac.C5405a mo492a(boolean z) {
        if (this.f22780e == 1 || this.f22780e == 3) {
            try {
                C5447k m678a = C5447k.m678a(m636g());
                C5404ac.C5405a m787a = new C5404ac.C5405a().m786a(m678a.f22753a).m796a(m678a.f22754b).m794a(m678a.f22755c).m787a(m639d());
                if (z && m678a.f22754b == 100) {
                    m787a = null;
                } else if (m678a.f22754b == 100) {
                    this.f22780e = 3;
                } else {
                    this.f22780e = 4;
                }
                return m787a;
            } catch (EOFException e) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f22777b);
                iOException.initCause(e);
                throw iOException;
            }
        }
        throw new IllegalStateException("state: " + this.f22780e);
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public AbstractC5406ad mo493a(C5404ac c5404ac) {
        C5444h c5444h;
        this.f22777b.f22836c.m294f(this.f22777b.f22835b);
        String m809a = c5404ac.m809a("Content-Type");
        if (!C5441e.m702b(c5404ac)) {
            c5444h = new C5444h(m809a, 0L, C0014l.m22522a(m640b(0L)));
        } else if ("chunked".equalsIgnoreCase(c5404ac.m809a("Transfer-Encoding"))) {
            c5444h = new C5444h(m809a, -1L, C0014l.m22522a(m641a(c5404ac.m810a().m827a())));
        } else {
            long m706a = C5441e.m706a(c5404ac);
            c5444h = m706a != -1 ? new C5444h(m809a, m706a, C0014l.m22522a(m640b(m706a))) : new C5444h(m809a, -1L, C0014l.m22522a(m637f()));
        }
        return c5444h;
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public void mo497a() {
        this.f22779d.flush();
    }

    /* renamed from: a */
    void m643a(C0011i c0011i) {
        C0025t m22531a = c0011i.m22531a();
        c0011i.m22530a(C0025t.f55c);
        m22531a.mo22455f();
        m22531a.mo22457J_();
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public void mo495a(C5400aa c5400aa) {
        m642a(c5400aa.m824c(), C5445i.m690a(c5400aa, this.f22777b.m585c().m627a().m776b().type()));
    }

    /* renamed from: a */
    public void m642a(C5539s c5539s, String str) {
        if (this.f22780e != 0) {
            throw new IllegalStateException("state: " + this.f22780e);
        }
        this.f22779d.mo22513b(str).mo22513b("\r\n");
        int m284a = c5539s.m284a();
        for (int i = 0; i < m284a; i++) {
            this.f22779d.mo22513b(c5539s.m283a(i)).mo22513b(": ").mo22513b(c5539s.m278b(i)).mo22513b("\r\n");
        }
        this.f22779d.mo22513b("\r\n");
        this.f22780e = 1;
    }

    /* renamed from: b */
    public AbstractC0024s m640b(long j) {
        if (this.f22780e != 4) {
            throw new IllegalStateException("state: " + this.f22780e);
        }
        this.f22780e = 5;
        return new C5458e(j);
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: b */
    public void mo491b() {
        this.f22779d.flush();
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: c */
    public void mo489c() {
        C5462c m585c = this.f22777b.m585c();
        if (m585c != null) {
            m585c.m615b();
        }
    }

    /* renamed from: d */
    public C5539s m639d() {
        C5539s.C5540a c5540a = new C5539s.C5540a();
        while (true) {
            String m636g = m636g();
            if (m636g.length() != 0) {
                AbstractC5424a.f22678a.mo166a(c5540a, m636g);
            } else {
                return c5540a.m276a();
            }
        }
    }

    /* renamed from: e */
    public AbstractC0023r m638e() {
        if (this.f22780e != 1) {
            throw new IllegalStateException("state: " + this.f22780e);
        }
        this.f22780e = 2;
        return new C5455b();
    }

    /* renamed from: f */
    public AbstractC0024s m637f() {
        if (this.f22780e != 4) {
            throw new IllegalStateException("state: " + this.f22780e);
        }
        if (this.f22777b == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f22780e = 5;
        this.f22777b.m583e();
        return new C5459f();
    }
}
