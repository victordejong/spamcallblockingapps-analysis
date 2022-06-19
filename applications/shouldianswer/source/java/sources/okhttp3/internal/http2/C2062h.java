package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import p000a.AbstractC0008e;
import p000a.AbstractC0025r;
import p000a.AbstractC0026s;
import p000a.C0000a;
import p000a.C0005c;
import p000a.C0027t;
/* renamed from: okhttp3.internal.http2.h */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h.class */
public final class C2062h {

    /* renamed from: i */
    static final /* synthetic */ boolean f5246i = !C2062h.class.desiredAssertionStatus();

    /* renamed from: b */
    long f5248b;

    /* renamed from: c */
    final int f5249c;

    /* renamed from: d */
    final C2044f f5250d;

    /* renamed from: e */
    final C2063a f5251e;

    /* renamed from: j */
    private final List<C2037b> f5255j;

    /* renamed from: k */
    private List<C2037b> f5256k;

    /* renamed from: l */
    private boolean f5257l;

    /* renamed from: m */
    private final C2064b f5258m;

    /* renamed from: a */
    long f5247a = 0;

    /* renamed from: f */
    final C2065c f5252f = new C2065c();

    /* renamed from: g */
    final C2065c f5253g = new C2065c();

    /* renamed from: h */
    EnumC2036a f5254h = null;

    /* renamed from: okhttp3.internal.http2.h$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h$a.class */
    public final class C2063a implements AbstractC0025r {

        /* renamed from: c */
        static final /* synthetic */ boolean f5259c = !C2062h.class.desiredAssertionStatus();

        /* renamed from: a */
        boolean f5260a;

        /* renamed from: b */
        boolean f5261b;

        /* renamed from: e */
        private final C0005c f5263e = new C0005c();

        C2063a() {
            C2062h.this = r5;
        }

        /* renamed from: a */
        private void m2090a(boolean z) {
            long min;
            synchronized (C2062h.this) {
                C2062h.this.f5253g.m8153c();
                while (C2062h.this.f5248b <= 0 && !this.f5261b && !this.f5260a && C2062h.this.f5254h == null) {
                    C2062h.this.m2092l();
                }
                C2062h.this.f5253g.m2081b();
                C2062h.this.m2093k();
                min = Math.min(C2062h.this.f5248b, this.f5263e.m8137b());
                C2062h.this.f5248b -= min;
            }
            C2062h.this.f5253g.m8153c();
            try {
                C2062h.this.f5250d.m2163a(C2062h.this.f5249c, z && min == this.f5263e.m8137b(), this.f5263e, min);
            } finally {
                C2062h.this.f5253g.m2081b();
            }
        }

        @Override // p000a.AbstractC0025r
        /* renamed from: a */
        public C0027t mo2091a() {
            return C2062h.this.f5253g;
        }

        @Override // p000a.AbstractC0025r
        /* renamed from: a_ */
        public void mo2089a_(C0005c c0005c, long j) {
            if (f5259c || !Thread.holdsLock(C2062h.this)) {
                this.f5263e.mo2089a_(c0005c, j);
                while (this.f5263e.m8137b() >= 16384) {
                    m2090a(false);
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (f5259c || !Thread.holdsLock(C2062h.this)) {
                synchronized (C2062h.this) {
                    if (this.f5260a) {
                        return;
                    }
                    if (!C2062h.this.f5251e.f5261b) {
                        if (this.f5263e.m8137b() > 0) {
                            while (this.f5263e.m8137b() > 0) {
                                m2090a(true);
                            }
                        } else {
                            C2062h.this.f5250d.m2163a(C2062h.this.f5249c, true, (C0005c) null, 0L);
                        }
                    }
                    synchronized (C2062h.this) {
                        this.f5260a = true;
                    }
                    C2062h.this.f5250d.m2154b();
                    C2062h.this.m2094j();
                    return;
                }
            }
            throw new AssertionError();
        }

        @Override // p000a.AbstractC0025r, java.io.Flushable
        public void flush() {
            if (f5259c || !Thread.holdsLock(C2062h.this)) {
                synchronized (C2062h.this) {
                    C2062h.this.m2093k();
                }
                while (this.f5263e.m8137b() > 0) {
                    m2090a(false);
                    C2062h.this.f5250d.m2154b();
                }
                return;
            }
            throw new AssertionError();
        }
    }

    /* renamed from: okhttp3.internal.http2.h$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h$b.class */
    public final class C2064b implements AbstractC0026s {

        /* renamed from: c */
        static final /* synthetic */ boolean f5264c = !C2062h.class.desiredAssertionStatus();

        /* renamed from: a */
        boolean f5265a;

        /* renamed from: b */
        boolean f5266b;

        /* renamed from: e */
        private final C0005c f5268e = new C0005c();

        /* renamed from: f */
        private final C0005c f5269f = new C0005c();

        /* renamed from: g */
        private final long f5270g;

        C2064b(long j) {
            C2062h.this = r5;
            this.f5270g = j;
        }

        /* renamed from: b */
        private void m2085b() {
            C2062h.this.f5252f.m8153c();
            while (this.f5269f.m8137b() == 0 && !this.f5266b && !this.f5265a && C2062h.this.f5254h == null) {
                try {
                    C2062h.this.m2092l();
                } finally {
                    C2062h.this.f5252f.m2081b();
                }
            }
        }

        /* renamed from: c */
        private void m2084c() {
            if (!this.f5265a) {
                if (C2062h.this.f5254h != null) {
                    throw new StreamResetException(C2062h.this.f5254h);
                }
                return;
            }
            throw new IOException("stream closed");
        }

        @Override // p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (C2062h.this) {
                m2085b();
                m2084c();
                if (this.f5269f.m8137b() == 0) {
                    return -1L;
                }
                long mo2087a = this.f5269f.mo2087a(c0005c, Math.min(j, this.f5269f.m8137b()));
                C2062h.this.f5247a += mo2087a;
                if (C2062h.this.f5247a >= C2062h.this.f5250d.f5184k.m2045d() / 2) {
                    C2062h.this.f5250d.m2168a(C2062h.this.f5249c, C2062h.this.f5247a);
                    C2062h.this.f5247a = 0L;
                }
                synchronized (C2062h.this.f5250d) {
                    C2062h.this.f5250d.f5182i += mo2087a;
                    if (C2062h.this.f5250d.f5182i >= C2062h.this.f5250d.f5184k.m2045d() / 2) {
                        C2062h.this.f5250d.m2168a(0, C2062h.this.f5250d.f5182i);
                        C2062h.this.f5250d.f5182i = 0L;
                    }
                }
                return mo2087a;
            }
        }

        @Override // p000a.AbstractC0026s
        /* renamed from: a */
        public C0027t mo2088a() {
            return C2062h.this.f5252f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v33, types: [long] */
        /* renamed from: a */
        void m2086a(AbstractC0008e abstractC0008e, long j) {
            boolean z;
            boolean z2;
            char c = j;
            if (!f5264c) {
                if (Thread.holdsLock(C2062h.this)) {
                    throw new AssertionError();
                }
                c = j;
            }
            while (c > 0) {
                synchronized (C2062h.this) {
                    z = this.f5266b;
                    z2 = this.f5269f.m8137b() + c > this.f5270g;
                }
                if (z2) {
                    abstractC0008e.mo8065h(c);
                    C2062h.this.m2104b(EnumC2036a.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    abstractC0008e.mo8065h(c);
                    return;
                } else {
                    long a = abstractC0008e.mo2087a(this.f5268e, c);
                    if (a == -1) {
                        throw new EOFException();
                    }
                    c -= a;
                    synchronized (C2062h.this) {
                        boolean z3 = this.f5269f.m8137b() == 0;
                        this.f5269f.m8142a(this.f5268e);
                        if (z3) {
                            C2062h.this.notifyAll();
                        }
                    }
                }
            }
        }

        @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (C2062h.this) {
                this.f5265a = true;
                this.f5269f.m8119r();
                C2062h.this.notifyAll();
            }
            C2062h.this.m2094j();
        }
    }

    /* renamed from: okhttp3.internal.http2.h$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h$c.class */
    public class C2065c extends C0000a {
        C2065c() {
            C2062h.this = r4;
        }

        @Override // p000a.C0000a
        /* renamed from: a */
        protected IOException mo2082a(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p000a.C0000a
        /* renamed from: a */
        protected void mo2083a() {
            C2062h.this.m2104b(EnumC2036a.CANCEL);
        }

        /* renamed from: b */
        public void m2081b() {
            if (!m8151o_()) {
                return;
            }
            throw mo2082a((IOException) null);
        }
    }

    public C2062h(int i, C2044f c2044f, boolean z, boolean z2, List<C2037b> list) {
        if (c2044f != null) {
            if (list == null) {
                throw new NullPointerException("requestHeaders == null");
            }
            this.f5249c = i;
            this.f5250d = c2044f;
            this.f5248b = c2044f.f5185l.m2045d();
            this.f5258m = new C2064b(c2044f.f5184k.m2045d());
            this.f5251e = new C2063a();
            this.f5258m.f5266b = z2;
            this.f5251e.f5261b = z;
            this.f5255j = list;
            return;
        }
        throw new NullPointerException("connection == null");
    }

    /* renamed from: d */
    private boolean m2100d(EnumC2036a enumC2036a) {
        if (f5246i || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.f5254h != null) {
                    return false;
                }
                if (this.f5258m.f5266b && this.f5251e.f5261b) {
                    return false;
                }
                this.f5254h = enumC2036a;
                notifyAll();
                this.f5250d.m2153b(this.f5249c);
                return true;
            }
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public int m2110a() {
        return this.f5249c;
    }

    /* renamed from: a */
    public void m2109a(long j) {
        this.f5248b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public void m2108a(AbstractC0008e abstractC0008e, int i) {
        if (f5246i || !Thread.holdsLock(this)) {
            this.f5258m.m2086a(abstractC0008e, i);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m2107a(List<C2037b> list) {
        boolean z;
        if (f5246i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = true;
                this.f5257l = true;
                if (this.f5256k == null) {
                    this.f5256k = list;
                    z = m2105b();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.f5256k);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.f5256k = arrayList;
                }
            }
            if (z) {
                return;
            }
            this.f5250d.m2153b(this.f5249c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m2106a(EnumC2036a enumC2036a) {
        if (!m2100d(enumC2036a)) {
            return;
        }
        this.f5250d.m2151b(this.f5249c, enumC2036a);
    }

    /* renamed from: b */
    public void m2104b(EnumC2036a enumC2036a) {
        if (!m2100d(enumC2036a)) {
            return;
        }
        this.f5250d.m2164a(this.f5249c, enumC2036a);
    }

    /* renamed from: b */
    public boolean m2105b() {
        synchronized (this) {
            if (this.f5254h != null) {
                return false;
            }
            if ((this.f5258m.f5266b || this.f5258m.f5265a) && (this.f5251e.f5261b || this.f5251e.f5260a)) {
                if (this.f5257l) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: c */
    public void m2102c(EnumC2036a enumC2036a) {
        synchronized (this) {
            if (this.f5254h == null) {
                this.f5254h = enumC2036a;
                notifyAll();
            }
        }
    }

    /* renamed from: c */
    public boolean m2103c() {
        return this.f5250d.f5174a == ((this.f5249c & 1) == 1);
    }

    /* renamed from: d */
    public List<C2037b> m2101d() {
        List<C2037b> list;
        synchronized (this) {
            if (!m2103c()) {
                throw new IllegalStateException("servers cannot read response headers");
            }
            this.f5252f.m8153c();
            while (this.f5256k == null && this.f5254h == null) {
                m2092l();
            }
            this.f5252f.m2081b();
            list = this.f5256k;
            if (list == null) {
                throw new StreamResetException(this.f5254h);
            }
            this.f5256k = null;
        }
        return list;
    }

    /* renamed from: e */
    public C0027t m2099e() {
        return this.f5252f;
    }

    /* renamed from: f */
    public C0027t m2098f() {
        return this.f5253g;
    }

    /* renamed from: g */
    public AbstractC0026s m2097g() {
        return this.f5258m;
    }

    /* renamed from: h */
    public AbstractC0025r m2096h() {
        synchronized (this) {
            if (!this.f5257l && !m2103c()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f5251e;
    }

    /* renamed from: i */
    public void m2095i() {
        boolean m2105b;
        if (f5246i || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.f5258m.f5266b = true;
                m2105b = m2105b();
                notifyAll();
            }
            if (m2105b) {
                return;
            }
            this.f5250d.m2153b(this.f5249c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: j */
    void m2094j() {
        boolean z;
        boolean m2105b;
        if (f5246i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = !this.f5258m.f5266b && this.f5258m.f5265a && (this.f5251e.f5261b || this.f5251e.f5260a);
                m2105b = m2105b();
            }
            if (z) {
                m2106a(EnumC2036a.CANCEL);
                return;
            } else if (m2105b) {
                return;
            } else {
                this.f5250d.m2153b(this.f5249c);
                return;
            }
        }
        throw new AssertionError();
    }

    /* renamed from: k */
    void m2093k() {
        if (!this.f5251e.f5260a) {
            if (this.f5251e.f5261b) {
                throw new IOException("stream finished");
            }
            EnumC2036a enumC2036a = this.f5254h;
            if (enumC2036a != null) {
                throw new StreamResetException(enumC2036a);
            }
            return;
        }
        throw new IOException("stream closed");
    }

    /* renamed from: l */
    void m2092l() {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }
}
