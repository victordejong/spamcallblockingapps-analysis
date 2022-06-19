package okhttp3.internal.p093c;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC1957ac;
import okhttp3.C1955ab;
import okhttp3.C2087r;
import okhttp3.C2089s;
import okhttp3.C2098w;
import okhttp3.C2104z;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2016f;
import okhttp3.internal.p092b.AbstractC1988c;
import okhttp3.internal.p092b.C1991e;
import okhttp3.internal.p092b.C1994h;
import okhttp3.internal.p092b.C1995i;
import okhttp3.internal.p092b.C1997k;
import p000a.AbstractC0007d;
import p000a.AbstractC0008e;
import p000a.AbstractC0025r;
import p000a.AbstractC0026s;
import p000a.C0005c;
import p000a.C0012i;
import p000a.C0015l;
import p000a.C0027t;
/* renamed from: okhttp3.internal.c.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a.class */
public final class C2002a implements AbstractC1988c {

    /* renamed from: a */
    final C2098w f5002a;

    /* renamed from: b */
    final C2016f f5003b;

    /* renamed from: c */
    final AbstractC0008e f5004c;

    /* renamed from: d */
    final AbstractC0007d f5005d;

    /* renamed from: e */
    int f5006e = 0;

    /* renamed from: f */
    private long f5007f = 262144;

    /* renamed from: okhttp3.internal.c.a$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$a.class */
    public abstract class AbstractC2004a implements AbstractC0026s {

        /* renamed from: a */
        protected final C0012i f5008a;

        /* renamed from: b */
        protected boolean f5009b;

        /* renamed from: c */
        protected long f5010c;

        private AbstractC2004a() {
            C2002a.this = r6;
            this.f5008a = new C0012i(C2002a.this.f5004c.mo2088a());
            this.f5010c = 0L;
        }

        @Override // p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            try {
                long a = C2002a.this.f5004c.mo2087a(c0005c, j);
                if (a > 0) {
                    this.f5010c += a;
                }
                return a;
            } catch (IOException e) {
                m2315a(false, e);
                throw e;
            }
        }

        @Override // p000a.AbstractC0026s
        /* renamed from: a */
        public C0027t mo2088a() {
            return this.f5008a;
        }

        /* renamed from: a */
        protected final void m2315a(boolean z, IOException iOException) {
            if (C2002a.this.f5006e == 6) {
                return;
            }
            if (C2002a.this.f5006e != 5) {
                throw new IllegalStateException("state: " + C2002a.this.f5006e);
            }
            C2002a.this.m2323a(this.f5008a);
            C2002a c2002a = C2002a.this;
            c2002a.f5006e = 6;
            if (c2002a.f5003b == null) {
                return;
            }
            C2002a.this.f5003b.m2270a(!z, C2002a.this, this.f5010c, iOException);
        }
    }

    /* renamed from: okhttp3.internal.c.a$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$b.class */
    public final class C2005b implements AbstractC0025r {

        /* renamed from: b */
        private final C0012i f5013b;

        /* renamed from: c */
        private boolean f5014c;

        C2005b() {
            C2002a.this = r6;
            this.f5013b = new C0012i(C2002a.this.f5005d.mo2091a());
        }

        @Override // p000a.AbstractC0025r
        /* renamed from: a */
        public C0027t mo2091a() {
            return this.f5013b;
        }

        @Override // p000a.AbstractC0025r
        /* renamed from: a_ */
        public void mo2089a_(C0005c c0005c, long j) {
            if (!this.f5014c) {
                if (j == 0) {
                    return;
                }
                C2002a.this.f5005d.mo8083k(j);
                C2002a.this.f5005d.mo8089b("\r\n");
                C2002a.this.f5005d.mo2089a_(c0005c, j);
                C2002a.this.f5005d.mo8089b("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                if (this.f5014c) {
                    return;
                }
                this.f5014c = true;
                C2002a.this.f5005d.mo8089b("0\r\n\r\n");
                C2002a.this.m2323a(this.f5013b);
                C2002a.this.f5006e = 3;
            }
        }

        @Override // p000a.AbstractC0025r, java.io.Flushable
        public void flush() {
            synchronized (this) {
                if (this.f5014c) {
                    return;
                }
                C2002a.this.f5005d.flush();
            }
        }
    }

    /* renamed from: okhttp3.internal.c.a$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$c.class */
    public class C2006c extends AbstractC2004a {

        /* renamed from: f */
        private final C2089s f5016f;

        /* renamed from: g */
        private long f5017g = -1;

        /* renamed from: h */
        private boolean f5018h = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2006c(C2089s c2089s) {
            super();
            C2002a.this = r5;
            this.f5016f = c2089s;
        }

        /* renamed from: b */
        private void m2314b() {
            if (this.f5017g != -1) {
                C2002a.this.f5004c.mo8059p();
            }
            try {
                this.f5017g = C2002a.this.f5004c.mo8060m();
                String trim = C2002a.this.f5004c.mo8059p().trim();
                if (this.f5017g < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f5017g + trim + "\"");
                } else if (this.f5017g != 0) {
                } else {
                    this.f5018h = false;
                    C1991e.m2387a(C2002a.this.f5002a.m1873g(), this.f5016f, C2002a.this.m2319c());
                    m2315a(true, (IOException) null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // okhttp3.internal.p093c.C2002a.AbstractC2004a, p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f5009b) {
                throw new IllegalStateException("closed");
            } else {
                if (!this.f5018h) {
                    return -1L;
                }
                long j2 = this.f5017g;
                if (j2 == 0 || j2 == -1) {
                    m2314b();
                    if (!this.f5018h) {
                        return -1L;
                    }
                }
                long mo2087a = super.mo2087a(c0005c, Math.min(j, this.f5017g));
                if (mo2087a != -1) {
                    this.f5017g -= mo2087a;
                    return mo2087a;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m2315a(false, (IOException) protocolException);
                throw protocolException;
            }
        }

        @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f5009b) {
                return;
            }
            if (this.f5018h && !C1999c.m2354a(this, 100, TimeUnit.MILLISECONDS)) {
                m2315a(false, (IOException) null);
            }
            this.f5009b = true;
        }
    }

    /* renamed from: okhttp3.internal.c.a$d */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$d.class */
    public final class C2007d implements AbstractC0025r {

        /* renamed from: b */
        private final C0012i f5020b;

        /* renamed from: c */
        private boolean f5021c;

        /* renamed from: d */
        private long f5022d;

        C2007d(long j) {
            C2002a.this = r6;
            this.f5020b = new C0012i(C2002a.this.f5005d.mo2091a());
            this.f5022d = j;
        }

        @Override // p000a.AbstractC0025r
        /* renamed from: a */
        public C0027t mo2091a() {
            return this.f5020b;
        }

        @Override // p000a.AbstractC0025r
        /* renamed from: a_ */
        public void mo2089a_(C0005c c0005c, long j) {
            if (!this.f5021c) {
                C1999c.m2356a(c0005c.m8137b(), 0L, j);
                if (j <= this.f5022d) {
                    C2002a.this.f5005d.mo2089a_(c0005c, j);
                    this.f5022d -= j;
                    return;
                }
                throw new ProtocolException("expected " + this.f5022d + " bytes but received " + j);
            }
            throw new IllegalStateException("closed");
        }

        @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f5021c) {
                return;
            }
            this.f5021c = true;
            if (this.f5022d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            C2002a.this.m2323a(this.f5020b);
            C2002a.this.f5006e = 3;
        }

        @Override // p000a.AbstractC0025r, java.io.Flushable
        public void flush() {
            if (this.f5021c) {
                return;
            }
            C2002a.this.f5005d.flush();
        }
    }

    /* renamed from: okhttp3.internal.c.a$e */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$e.class */
    public class C2008e extends AbstractC2004a {

        /* renamed from: f */
        private long f5024f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2008e(long j) {
            super();
            C2002a.this = r6;
            this.f5024f = j;
            if (this.f5024f == 0) {
                m2315a(true, (IOException) null);
            }
        }

        @Override // okhttp3.internal.p093c.C2002a.AbstractC2004a, p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f5009b) {
                throw new IllegalStateException("closed");
            } else {
                long j2 = this.f5024f;
                if (j2 == 0) {
                    return -1L;
                }
                long mo2087a = super.mo2087a(c0005c, Math.min(j2, j));
                if (mo2087a == -1) {
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    m2315a(false, (IOException) protocolException);
                    throw protocolException;
                }
                this.f5024f -= mo2087a;
                if (this.f5024f == 0) {
                    m2315a(true, (IOException) null);
                }
                return mo2087a;
            }
        }

        @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f5009b) {
                return;
            }
            if (this.f5024f != 0 && !C1999c.m2354a(this, 100, TimeUnit.MILLISECONDS)) {
                m2315a(false, (IOException) null);
            }
            this.f5009b = true;
        }
    }

    /* renamed from: okhttp3.internal.c.a$f */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/c/a$f.class */
    public class C2009f extends AbstractC2004a {

        /* renamed from: f */
        private boolean f5026f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2009f() {
            super();
            C2002a.this = r5;
        }

        @Override // okhttp3.internal.p093c.C2002a.AbstractC2004a, p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f5009b) {
                throw new IllegalStateException("closed");
            } else {
                if (this.f5026f) {
                    return -1L;
                }
                long mo2087a = super.mo2087a(c0005c, j);
                if (mo2087a != -1) {
                    return mo2087a;
                }
                this.f5026f = true;
                m2315a(true, (IOException) null);
                return -1L;
            }
        }

        @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f5009b) {
                return;
            }
            if (!this.f5026f) {
                m2315a(false, (IOException) null);
            }
            this.f5009b = true;
        }
    }

    public C2002a(C2098w c2098w, C2016f c2016f, AbstractC0008e abstractC0008e, AbstractC0007d abstractC0007d) {
        this.f5002a = c2098w;
        this.f5003b = c2016f;
        this.f5004c = abstractC0008e;
        this.f5005d = abstractC0007d;
    }

    /* renamed from: f */
    private String m2316f() {
        String mo8069e = this.f5004c.mo8069e(this.f5007f);
        this.f5007f -= mo8069e.length();
        return mo8069e;
    }

    /* renamed from: a */
    public AbstractC0025r m2324a(long j) {
        if (this.f5006e == 1) {
            this.f5006e = 2;
            return new C2007d(j);
        }
        throw new IllegalStateException("state: " + this.f5006e);
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public AbstractC0025r mo2175a(C2104z c2104z, long j) {
        if ("chunked".equalsIgnoreCase(c2104z.m1822a("Transfer-Encoding"))) {
            return m2318d();
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        return m2324a(j);
    }

    /* renamed from: a */
    public AbstractC0026s m2321a(C2089s c2089s) {
        if (this.f5006e == 4) {
            this.f5006e = 5;
            return new C2006c(c2089s);
        }
        throw new IllegalStateException("state: " + this.f5006e);
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public C1955ab.C1956a mo2174a(boolean z) {
        int i = this.f5006e;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.f5006e);
        }
        try {
            C1997k m2358a = C1997k.m2358a(m2316f());
            C1955ab.C1956a m2471a = new C1955ab.C1956a().m2470a(m2358a.f4979a).m2479a(m2358a.f4980b).m2477a(m2358a.f4981c).m2471a(m2319c());
            if (z && m2358a.f4980b == 100) {
                return null;
            }
            if (m2358a.f4980b == 100) {
                this.f5006e = 3;
                return m2471a;
            }
            this.f5006e = 4;
            return m2471a;
        } catch (EOFException e) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f5003b);
            iOException.initCause(e);
            throw iOException;
        }
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public AbstractC1957ac mo2177a(C1955ab c1955ab) {
        this.f5003b.f5062c.m1976f(this.f5003b.f5061b);
        String m2493a = c1955ab.m2493a("Content-Type");
        if (!C1991e.m2384b(c1955ab)) {
            return new C1994h(m2493a, 0L, C0015l.m8098a(m2320b(0L)));
        }
        if ("chunked".equalsIgnoreCase(c1955ab.m2493a("Transfer-Encoding"))) {
            return new C1994h(m2493a, -1L, C0015l.m8098a(m2321a(c1955ab.m2494a().m1823a())));
        }
        long m2388a = C1991e.m2388a(c1955ab);
        return m2388a != -1 ? new C1994h(m2493a, m2388a, C0015l.m8098a(m2320b(m2388a))) : new C1994h(m2493a, -1L, C0015l.m8098a(m2317e()));
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public void mo2179a() {
        this.f5005d.flush();
    }

    /* renamed from: a */
    void m2323a(C0012i c0012i) {
        C0027t m8107a = c0012i.m8107a();
        c0012i.m8106a(C0027t.f57c);
        m8107a.mo8034f();
        m8107a.mo8031r_();
    }

    /* renamed from: a */
    public void m2322a(C2087r c2087r, String str) {
        if (this.f5006e != 0) {
            throw new IllegalStateException("state: " + this.f5006e);
        }
        this.f5005d.mo8089b(str).mo8089b("\r\n");
        int m1970a = c2087r.m1970a();
        for (int i = 0; i < m1970a; i++) {
            this.f5005d.mo8089b(c2087r.m1969a(i)).mo8089b(": ").mo8089b(c2087r.m1964b(i)).mo8089b("\r\n");
        }
        this.f5005d.mo8089b("\r\n");
        this.f5006e = 1;
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public void mo2176a(C2104z c2104z) {
        m2322a(c2104z.m1820c(), C1995i.m2368a(c2104z, this.f5003b.m2266c().m2307a().m2458b().type()));
    }

    /* renamed from: b */
    public AbstractC0026s m2320b(long j) {
        if (this.f5006e == 4) {
            this.f5006e = 5;
            return new C2008e(j);
        }
        throw new IllegalStateException("state: " + this.f5006e);
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: b */
    public void mo2173b() {
        this.f5005d.flush();
    }

    /* renamed from: c */
    public C2087r m2319c() {
        C2087r.C2088a c2088a = new C2087r.C2088a();
        while (true) {
            String m2316f = m2316f();
            if (m2316f.length() != 0) {
                AbstractC1974a.f4904a.mo1846a(c2088a, m2316f);
            } else {
                return c2088a.m1962a();
            }
        }
    }

    /* renamed from: d */
    public AbstractC0025r m2318d() {
        if (this.f5006e == 1) {
            this.f5006e = 2;
            return new C2005b();
        }
        throw new IllegalStateException("state: " + this.f5006e);
    }

    /* renamed from: e */
    public AbstractC0026s m2317e() {
        if (this.f5006e != 4) {
            throw new IllegalStateException("state: " + this.f5006e);
        }
        C2016f c2016f = this.f5003b;
        if (c2016f == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f5006e = 5;
        c2016f.m2264e();
        return new C2009f();
    }
}
