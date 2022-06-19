package p257u9;

import android.support.p012v4.media.C0082b;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import p011aa.AbstractC0054g;
import p011aa.AbstractC0055h;
import p011aa.AbstractC0073x;
import p011aa.AbstractC0074y;
import p011aa.C0053f;
import p011aa.C0059l;
import p011aa.C0062o;
import p011aa.C0069t;
import p011aa.C0075z;
import p204p9.AbstractC4096d0;
import p204p9.C4084b0;
import p204p9.C4121r;
import p204p9.C4123s;
import p204p9.C4128v;
import p204p9.C4135y;
import p214q9.AbstractC4169a;
import p214q9.C4171c;
import p236s9.C4335c;
import p236s9.C4338e;
import p246t9.AbstractC4433c;
import p246t9.C4436e;
import p246t9.C4438g;
import p246t9.C4439h;
import p246t9.C4441j;
/* renamed from: u9.a */
/* loaded from: classes2-dex2jar.jar:u9/a.class */
public final class C4554a implements AbstractC4433c {

    /* renamed from: a */
    public final C4128v f13983a;

    /* renamed from: b */
    public final C4338e f13984b;

    /* renamed from: c */
    public final AbstractC0055h f13985c;

    /* renamed from: d */
    public final AbstractC0054g f13986d;

    /* renamed from: e */
    public int f13987e = 0;

    /* renamed from: f */
    public long f13988f = 262144;

    /* renamed from: u9.a$b */
    /* loaded from: classes2-dex2jar.jar:u9/a$b.class */
    public abstract class AbstractC4556b implements AbstractC0074y {

        /* renamed from: a */
        public final C0059l f13989a;

        /* renamed from: b */
        public boolean f13990b;

        /* renamed from: c */
        public long f13991c = 0;

        public AbstractC4556b(C4555a c4555a) {
            C4554a.this = r6;
            this.f13989a = new C0059l(r6.f13985c.mo610b());
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: b */
        public C0075z mo610b() {
            return this.f13989a;
        }

        /* renamed from: d */
        public final void m838d(boolean z, IOException iOException) throws IOException {
            C4554a c4554a = C4554a.this;
            int i = c4554a.f13987e;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                StringBuilder m8752j = C0082b.m8752j("state: ");
                m8752j.append(C4554a.this.f13987e);
                throw new IllegalStateException(m8752j.toString());
            }
            c4554a.m843g(this.f13989a);
            C4554a c4554a2 = C4554a.this;
            c4554a2.f13987e = 6;
            C4338e c4338e = c4554a2.f13984b;
            if (c4338e == null) {
                return;
            }
            c4338e.m1072i(!z, c4554a2, this.f13991c, iOException);
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            try {
                long mo609f = C4554a.this.f13985c.mo609f(c0053f, j);
                if (mo609f > 0) {
                    this.f13991c += mo609f;
                }
                return mo609f;
            } catch (IOException e) {
                m838d(false, e);
                throw e;
            }
        }
    }

    /* renamed from: u9.a$c */
    /* loaded from: classes2-dex2jar.jar:u9/a$c.class */
    public final class C4557c implements AbstractC0073x {

        /* renamed from: a */
        public final C0059l f13993a;

        /* renamed from: b */
        public boolean f13994b;

        public C4557c() {
            C4554a.this = r6;
            this.f13993a = new C0059l(r6.f13986d.mo612b());
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: E */
        public void mo613E(C0053f c0053f, long j) throws IOException {
            if (!this.f13994b) {
                if (j == 0) {
                    return;
                }
                C4554a.this.f13986d.mo8818g(j);
                C4554a.this.f13986d.mo8821R("\r\n");
                C4554a.this.f13986d.mo613E(c0053f, j);
                C4554a.this.f13986d.mo8821R("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: b */
        public C0075z mo612b() {
            return this.f13993a;
        }

        @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this) {
                if (this.f13994b) {
                    return;
                }
                this.f13994b = true;
                C4554a.this.f13986d.mo8821R("0\r\n\r\n");
                C4554a.this.m843g(this.f13993a);
                C4554a.this.f13987e = 3;
            }
        }

        @Override // p011aa.AbstractC0073x, java.io.Flushable
        public void flush() throws IOException {
            synchronized (this) {
                if (this.f13994b) {
                    return;
                }
                C4554a.this.f13986d.flush();
            }
        }
    }

    /* renamed from: u9.a$d */
    /* loaded from: classes2-dex2jar.jar:u9/a$d.class */
    public class C4558d extends AbstractC4556b {

        /* renamed from: e */
        public final C4123s f13996e;

        /* renamed from: f */
        public long f13997f = -1;

        /* renamed from: g */
        public boolean f13998g = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4558d(C4123s c4123s) {
            super(null);
            C4554a.this = r5;
            this.f13996e = c4123s;
        }

        @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f13990b) {
                return;
            }
            if (this.f13998g && !C4171c.m1326j(this, 100, TimeUnit.MILLISECONDS)) {
                m838d(false, null);
            }
            this.f13990b = true;
        }

        @Override // p257u9.C4554a.AbstractC4556b, p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f13990b) {
                throw new IllegalStateException("closed");
            } else {
                if (!this.f13998g) {
                    return -1L;
                }
                long j2 = this.f13997f;
                if (j2 == 0 || j2 == -1) {
                    if (j2 != -1) {
                        C4554a.this.f13985c.mo8800t();
                    }
                    try {
                        this.f13997f = C4554a.this.f13985c.mo8808X();
                        String trim = C4554a.this.f13985c.mo8800t().trim();
                        if (this.f13997f < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                            throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f13997f + trim + "\"");
                        }
                        if (this.f13997f == 0) {
                            this.f13998g = false;
                            C4554a c4554a = C4554a.this;
                            C4436e.m930d(c4554a.f13983a.f12984h, this.f13996e, c4554a.m840j());
                            m838d(true, null);
                        }
                        if (!this.f13998g) {
                            return -1L;
                        }
                    } catch (NumberFormatException e) {
                        throw new ProtocolException(e.getMessage());
                    }
                }
                long mo609f = super.mo609f(c0053f, Math.min(j, this.f13997f));
                if (mo609f != -1) {
                    this.f13997f -= mo609f;
                    return mo609f;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m838d(false, protocolException);
                throw protocolException;
            }
        }
    }

    /* renamed from: u9.a$e */
    /* loaded from: classes2-dex2jar.jar:u9/a$e.class */
    public final class C4559e implements AbstractC0073x {

        /* renamed from: a */
        public final C0059l f14000a;

        /* renamed from: b */
        public boolean f14001b;

        /* renamed from: c */
        public long f14002c;

        public C4559e(long j) {
            C4554a.this = r6;
            this.f14000a = new C0059l(r6.f13986d.mo612b());
            this.f14002c = j;
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: E */
        public void mo613E(C0053f c0053f, long j) throws IOException {
            if (!this.f14001b) {
                C4171c.m1333c(c0053f.f120b, 0L, j);
                if (j <= this.f14002c) {
                    C4554a.this.f13986d.mo613E(c0053f, j);
                    this.f14002c -= j;
                    return;
                }
                StringBuilder m8752j = C0082b.m8752j("expected ");
                m8752j.append(this.f14002c);
                m8752j.append(" bytes but received ");
                m8752j.append(j);
                throw new ProtocolException(m8752j.toString());
            }
            throw new IllegalStateException("closed");
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: b */
        public C0075z mo612b() {
            return this.f14000a;
        }

        @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f14001b) {
                return;
            }
            this.f14001b = true;
            if (this.f14002c > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            C4554a.this.m843g(this.f14000a);
            C4554a.this.f13987e = 3;
        }

        @Override // p011aa.AbstractC0073x, java.io.Flushable
        public void flush() throws IOException {
            if (this.f14001b) {
                return;
            }
            C4554a.this.f13986d.flush();
        }
    }

    /* renamed from: u9.a$f */
    /* loaded from: classes2-dex2jar.jar:u9/a$f.class */
    public class C4560f extends AbstractC4556b {

        /* renamed from: e */
        public long f14004e;

        public C4560f(C4554a c4554a, long j) throws IOException {
            super(null);
            this.f14004e = j;
            if (j == 0) {
                m838d(true, null);
            }
        }

        @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f13990b) {
                return;
            }
            if (this.f14004e != 0 && !C4171c.m1326j(this, 100, TimeUnit.MILLISECONDS)) {
                m838d(false, null);
            }
            this.f13990b = true;
        }

        @Override // p257u9.C4554a.AbstractC4556b, p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f13990b) {
                throw new IllegalStateException("closed");
            } else {
                long j2 = this.f14004e;
                if (j2 == 0) {
                    return -1L;
                }
                long mo609f = super.mo609f(c0053f, Math.min(j2, j));
                if (mo609f == -1) {
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    m838d(false, protocolException);
                    throw protocolException;
                }
                long j3 = this.f14004e - mo609f;
                this.f14004e = j3;
                if (j3 == 0) {
                    m838d(true, null);
                }
                return mo609f;
            }
        }
    }

    /* renamed from: u9.a$g */
    /* loaded from: classes2-dex2jar.jar:u9/a$g.class */
    public class C4561g extends AbstractC4556b {

        /* renamed from: e */
        public boolean f14005e;

        public C4561g(C4554a c4554a) {
            super(null);
        }

        @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f13990b) {
                return;
            }
            if (!this.f14005e) {
                m838d(false, null);
            }
            this.f13990b = true;
        }

        @Override // p257u9.C4554a.AbstractC4556b, p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f13990b) {
                throw new IllegalStateException("closed");
            } else {
                if (this.f14005e) {
                    return -1L;
                }
                long mo609f = super.mo609f(c0053f, j);
                if (mo609f != -1) {
                    return mo609f;
                }
                this.f14005e = true;
                m838d(true, null);
                return -1L;
            }
        }
    }

    public C4554a(C4128v c4128v, C4338e c4338e, AbstractC0055h abstractC0055h, AbstractC0054g abstractC0054g) {
        this.f13983a = c4128v;
        this.f13984b = c4338e;
        this.f13985c = abstractC0055h;
        this.f13986d = abstractC0054g;
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: a */
    public AbstractC4096d0 mo656a(C4084b0 c4084b0) throws IOException {
        Objects.requireNonNull(this.f13984b.f13513f);
        String m1401c = c4084b0.f12802f.m1401c("Content-Type");
        String str = null;
        if (m1401c == null) {
            m1401c = null;
        }
        if (!C4436e.m932b(c4084b0)) {
            AbstractC0074y m842h = m842h(0L);
            Logger logger = C0062o.f138a;
            return new C4438g(m1401c, 0L, new C0069t(m842h));
        }
        String m1401c2 = c4084b0.f12802f.m1401c("Transfer-Encoding");
        if (m1401c2 != null) {
            str = m1401c2;
        }
        if ("chunked".equalsIgnoreCase(str)) {
            C4123s c4123s = c4084b0.f12797a.f13041a;
            if (this.f13987e != 4) {
                StringBuilder m8752j = C0082b.m8752j("state: ");
                m8752j.append(this.f13987e);
                throw new IllegalStateException(m8752j.toString());
            }
            this.f13987e = 5;
            C4558d c4558d = new C4558d(c4123s);
            Logger logger2 = C0062o.f138a;
            return new C4438g(m1401c, -1L, new C0069t(c4558d));
        }
        long m933a = C4436e.m933a(c4084b0);
        if (m933a != -1) {
            AbstractC0074y m842h2 = m842h(m933a);
            Logger logger3 = C0062o.f138a;
            return new C4438g(m1401c, m933a, new C0069t(m842h2));
        } else if (this.f13987e != 4) {
            StringBuilder m8752j2 = C0082b.m8752j("state: ");
            m8752j2.append(this.f13987e);
            throw new IllegalStateException(m8752j2.toString());
        } else {
            C4338e c4338e = this.f13984b;
            if (c4338e == null) {
                throw new IllegalStateException("streamAllocation == null");
            }
            this.f13987e = 5;
            c4338e.m1075f();
            C4561g c4561g = new C4561g(this);
            Logger logger4 = C0062o.f138a;
            return new C4438g(m1401c, -1L, new C0069t(c4561g));
        }
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: b */
    public void mo655b() throws IOException {
        this.f13986d.flush();
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: c */
    public void mo654c() throws IOException {
        this.f13986d.flush();
    }

    @Override // p246t9.AbstractC4433c
    public void cancel() {
        C4335c m1079b = this.f13984b.m1079b();
        if (m1079b != null) {
            C4171c.m1331e(m1079b.f13487d);
        }
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: d */
    public AbstractC0073x mo653d(C4135y c4135y, long j) {
        if ("chunked".equalsIgnoreCase(c4135y.f13043c.m1401c("Transfer-Encoding"))) {
            if (this.f13987e == 1) {
                this.f13987e = 2;
                return new C4557c();
            }
            StringBuilder m8752j = C0082b.m8752j("state: ");
            m8752j.append(this.f13987e);
            throw new IllegalStateException(m8752j.toString());
        } else if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        } else {
            if (this.f13987e == 1) {
                this.f13987e = 2;
                return new C4559e(j);
            }
            StringBuilder m8752j2 = C0082b.m8752j("state: ");
            m8752j2.append(this.f13987e);
            throw new IllegalStateException(m8752j2.toString());
        }
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: e */
    public void mo652e(C4135y c4135y) throws IOException {
        Proxy.Type type = this.f13984b.m1079b().f13486c.f12876b.type();
        StringBuilder sb = new StringBuilder();
        sb.append(c4135y.f13042b);
        sb.append(' ');
        if (!c4135y.f13041a.f12955a.equals("https") && type == Proxy.Type.HTTP) {
            sb.append(c4135y.f13041a);
        } else {
            sb.append(C4439h.m922a(c4135y.f13041a));
        }
        sb.append(" HTTP/1.1");
        m839k(c4135y.f13043c, sb.toString());
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: f */
    public C4084b0.C4085a mo651f(boolean z) throws IOException {
        int i = this.f13987e;
        if (i != 1 && i != 3) {
            StringBuilder m8752j = C0082b.m8752j("state: ");
            m8752j.append(this.f13987e);
            throw new IllegalStateException(m8752j.toString());
        }
        try {
            C4441j m915a = C4441j.m915a(m841i());
            C4084b0.C4085a c4085a = new C4084b0.C4085a();
            c4085a.f12811b = m915a.f13807a;
            c4085a.f12812c = m915a.f13808b;
            c4085a.f12813d = m915a.f13809c;
            c4085a.m1431e(m840j());
            if (z && m915a.f13808b == 100) {
                return null;
            }
            if (m915a.f13808b == 100) {
                this.f13987e = 3;
                return c4085a;
            }
            this.f13987e = 4;
            return c4085a;
        } catch (EOFException e) {
            StringBuilder m8752j2 = C0082b.m8752j("unexpected end of stream on ");
            m8752j2.append(this.f13984b);
            IOException iOException = new IOException(m8752j2.toString());
            iOException.initCause(e);
            throw iOException;
        }
    }

    /* renamed from: g */
    public void m843g(C0059l c0059l) {
        C0075z c0075z = c0059l.f128e;
        c0059l.f128e = C0075z.f162d;
        c0075z.mo8777a();
        c0075z.mo8776b();
    }

    /* renamed from: h */
    public AbstractC0074y m842h(long j) throws IOException {
        if (this.f13987e == 4) {
            this.f13987e = 5;
            return new C4560f(this, j);
        }
        StringBuilder m8752j = C0082b.m8752j("state: ");
        m8752j.append(this.f13987e);
        throw new IllegalStateException(m8752j.toString());
    }

    /* renamed from: i */
    public final String m841i() throws IOException {
        String mo8811H = this.f13985c.mo8811H(this.f13988f);
        this.f13988f -= mo8811H.length();
        return mo8811H;
    }

    /* renamed from: j */
    public C4121r m840j() throws IOException {
        C4121r.C4122a c4122a = new C4121r.C4122a();
        while (true) {
            String m841i = m841i();
            if (m841i.length() != 0) {
                Objects.requireNonNull((C4128v.C4129a) AbstractC4169a.f13142a);
                c4122a.m1395a(m841i);
            } else {
                return new C4121r(c4122a);
            }
        }
    }

    /* renamed from: k */
    public void m839k(C4121r c4121r, String str) throws IOException {
        if (this.f13987e != 0) {
            StringBuilder m8752j = C0082b.m8752j("state: ");
            m8752j.append(this.f13987e);
            throw new IllegalStateException(m8752j.toString());
        }
        this.f13986d.mo8821R(str).mo8821R("\r\n");
        int m1398f = c4121r.m1398f();
        for (int i = 0; i < m1398f; i++) {
            this.f13986d.mo8821R(c4121r.m1400d(i)).mo8821R(": ").mo8821R(c4121r.m1397g(i)).mo8821R("\r\n");
        }
        this.f13986d.mo8821R("\r\n");
        this.f13987e = 1;
    }
}
