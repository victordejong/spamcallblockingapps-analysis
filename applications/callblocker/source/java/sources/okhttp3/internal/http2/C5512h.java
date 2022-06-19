package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import p000a.AbstractC0007e;
import p000a.AbstractC0023r;
import p000a.AbstractC0024s;
import p000a.C0000a;
import p000a.C0005c;
import p000a.C0025t;
/* renamed from: okhttp3.internal.http2.h */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h.class */
public final class C5512h {

    /* renamed from: i */
    static final /* synthetic */ boolean f23020i;

    /* renamed from: b */
    long f23022b;

    /* renamed from: c */
    final int f23023c;

    /* renamed from: d */
    final C5494f f23024d;

    /* renamed from: e */
    final C5513a f23025e;

    /* renamed from: j */
    private final List<C5487b> f23029j;

    /* renamed from: k */
    private List<C5487b> f23030k;

    /* renamed from: l */
    private boolean f23031l;

    /* renamed from: m */
    private final C5514b f23032m;

    /* renamed from: a */
    long f23021a = 0;

    /* renamed from: f */
    final C5515c f23026f = new C5515c();

    /* renamed from: g */
    final C5515c f23027g = new C5515c();

    /* renamed from: h */
    EnumC5486a f23028h = null;

    /* renamed from: okhttp3.internal.http2.h$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h$a.class */
    public final class C5513a implements AbstractC0023r {

        /* renamed from: c */
        static final /* synthetic */ boolean f23033c;

        /* renamed from: a */
        boolean f23034a;

        /* renamed from: b */
        boolean f23035b;

        /* renamed from: e */
        private final C0005c f23037e = new C0005c();

        static {
            f23033c = !C5512h.class.desiredAssertionStatus();
        }

        C5513a() {
            C5512h.this = r5;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private void m407a(boolean z) {
            long min;
            synchronized (C5512h.this) {
                C5512h.this.f23027g.m22577c();
                while (C5512h.this.f23022b <= 0 && !this.f23035b && !this.f23034a && C5512h.this.f23028h == null) {
                    C5512h.this.m409l();
                }
                C5512h.this.f23027g.m399b();
                C5512h.this.m410k();
                min = Math.min(C5512h.this.f23022b, this.f23037e.m22562b());
                C5512h.this.f23022b -= min;
            }
            C5512h.this.f23027g.m22577c();
            try {
                C5512h.this.f23024d.m480a(C5512h.this.f23023c, z && min == this.f23037e.m22562b(), this.f23037e, min);
                C5512h.this.f23027g.m399b();
            } catch (Throwable th) {
                C5512h.this.f23027g.m399b();
                throw th;
            }
        }

        @Override // p000a.AbstractC0023r
        /* renamed from: a */
        public C0025t mo408a() {
            return C5512h.this.f23027g;
        }

        @Override // p000a.AbstractC0023r
        /* renamed from: a_ */
        public void mo406a_(C0005c c0005c, long j) {
            if (f23033c || !Thread.holdsLock(C5512h.this)) {
                this.f23037e.mo406a_(c0005c, j);
                while (this.f23037e.m22562b() >= 16384) {
                    m407a(false);
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (f23033c || !Thread.holdsLock(C5512h.this)) {
                synchronized (C5512h.this) {
                    if (this.f23034a) {
                        return;
                    }
                    if (!C5512h.this.f23025e.f23035b) {
                        if (this.f23037e.m22562b() > 0) {
                            while (this.f23037e.m22562b() > 0) {
                                m407a(true);
                            }
                        } else {
                            C5512h.this.f23024d.m480a(C5512h.this.f23023c, true, (C0005c) null, 0L);
                        }
                    }
                    synchronized (C5512h.this) {
                        this.f23034a = true;
                    }
                    C5512h.this.f23024d.m471b();
                    C5512h.this.m411j();
                    return;
                }
            }
            throw new AssertionError();
        }

        @Override // p000a.AbstractC0023r, java.io.Flushable
        public void flush() {
            if (f23033c || !Thread.holdsLock(C5512h.this)) {
                synchronized (C5512h.this) {
                    C5512h.this.m410k();
                }
                while (this.f23037e.m22562b() > 0) {
                    m407a(false);
                    C5512h.this.f23024d.m471b();
                }
                return;
            }
            throw new AssertionError();
        }
    }

    /* renamed from: okhttp3.internal.http2.h$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h$b.class */
    public final class C5514b implements AbstractC0024s {

        /* renamed from: c */
        static final /* synthetic */ boolean f23038c;

        /* renamed from: a */
        boolean f23039a;

        /* renamed from: b */
        boolean f23040b;

        /* renamed from: e */
        private final C0005c f23042e = new C0005c();

        /* renamed from: f */
        private final C0005c f23043f = new C0005c();

        /* renamed from: g */
        private final long f23044g;

        static {
            f23038c = !C5512h.class.desiredAssertionStatus();
        }

        C5514b(long j) {
            C5512h.this = r5;
            this.f23044g = j;
        }

        /* renamed from: b */
        private void m403b() {
            C5512h.this.f23026f.m22577c();
            while (this.f23043f.m22562b() == 0 && !this.f23040b && !this.f23039a && C5512h.this.f23028h == null) {
                try {
                    C5512h.this.m409l();
                } finally {
                    C5512h.this.f23026f.m399b();
                }
            }
        }

        /* renamed from: c */
        private void m402c() {
            if (this.f23039a) {
                throw new IOException("stream closed");
            }
            if (C5512h.this.f23028h == null) {
                return;
            }
            throw new StreamResetException(C5512h.this.f23028h);
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        @Override // p000a.AbstractC0024s
        /* renamed from: a */
        public long mo90a(C0005c c0005c, long j) {
            char mo90a;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (C5512h.this) {
                m403b();
                m402c();
                if (this.f23043f.m22562b() == 0) {
                    mo90a = 65535;
                } else {
                    mo90a = this.f23043f.mo90a(c0005c, Math.min(j, this.f23043f.m22562b()));
                    C5512h.this.f23021a += mo90a;
                    if (C5512h.this.f23021a >= C5512h.this.f23024d.f22958k.m363d() / 2) {
                        C5512h.this.f23024d.m485a(C5512h.this.f23023c, C5512h.this.f23021a);
                        C5512h.this.f23021a = 0L;
                    }
                    synchronized (C5512h.this.f23024d) {
                        C5512h.this.f23024d.f22956i += mo90a;
                        if (C5512h.this.f23024d.f22956i >= C5512h.this.f23024d.f22958k.m363d() / 2) {
                            C5512h.this.f23024d.m485a(0, C5512h.this.f23024d.f22956i);
                            C5512h.this.f23024d.f22956i = 0L;
                        }
                    }
                }
            }
            return mo90a;
        }

        @Override // p000a.AbstractC0024s
        /* renamed from: a */
        public C0025t mo405a() {
            return C5512h.this.f23026f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* renamed from: a */
        void m404a(AbstractC0007e abstractC0007e, long j) {
            boolean z;
            boolean z2;
            char c = j;
            if (!f23038c) {
                c = j;
                if (Thread.holdsLock(C5512h.this)) {
                    throw new AssertionError();
                }
            }
            while (c > 0) {
                synchronized (C5512h.this) {
                    z = this.f23040b;
                    z2 = this.f23043f.m22562b() + c > this.f23044g;
                }
                if (z2) {
                    abstractC0007e.mo22488h(c);
                    C5512h.this.m421b(EnumC5486a.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    abstractC0007e.mo22488h(c);
                    return;
                } else {
                    long a = abstractC0007e.mo90a(this.f23042e, c);
                    if (a == -1) {
                        throw new EOFException();
                    }
                    c -= a;
                    synchronized (C5512h.this) {
                        boolean z3 = this.f23043f.m22562b() == 0;
                        this.f23043f.m22567a((AbstractC0024s) this.f23042e);
                        if (z3) {
                            C5512h.this.notifyAll();
                        }
                    }
                }
            }
        }

        @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (C5512h.this) {
                this.f23039a = true;
                this.f23043f.m22544q();
                C5512h.this.notifyAll();
            }
            C5512h.this.m411j();
        }
    }

    /* renamed from: okhttp3.internal.http2.h$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/h$c.class */
    public class C5515c extends C0000a {
        C5515c() {
            C5512h.this = r4;
        }

        @Override // p000a.C0000a
        /* renamed from: a */
        protected IOException mo400a(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p000a.C0000a
        /* renamed from: a */
        protected void mo401a() {
            C5512h.this.m421b(EnumC5486a.CANCEL);
        }

        /* renamed from: b */
        public void m399b() {
            if (m22585G_()) {
                throw mo400a((IOException) null);
            }
        }
    }

    static {
        f23020i = !C5512h.class.desiredAssertionStatus();
    }

    public C5512h(int i, C5494f c5494f, boolean z, boolean z2, List<C5487b> list) {
        if (c5494f == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f23023c = i;
        this.f23024d = c5494f;
        this.f23022b = c5494f.f22959l.m363d();
        this.f23032m = new C5514b(c5494f.f22958k.m363d());
        this.f23025e = new C5513a();
        this.f23032m.f23040b = z2;
        this.f23025e.f23035b = z;
        this.f23029j = list;
    }

    /* renamed from: d */
    private boolean m417d(EnumC5486a enumC5486a) {
        boolean z = false;
        if (f23020i || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.f23028h == null) {
                    if (!this.f23032m.f23040b || !this.f23025e.f23035b) {
                        this.f23028h = enumC5486a;
                        notifyAll();
                        this.f23024d.m470b(this.f23023c);
                        z = true;
                    }
                }
            }
            return z;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public int m427a() {
        return this.f23023c;
    }

    /* renamed from: a */
    public void m426a(long j) {
        this.f23022b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public void m425a(AbstractC0007e abstractC0007e, int i) {
        if (f23020i || !Thread.holdsLock(this)) {
            this.f23032m.m404a(abstractC0007e, i);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m424a(List<C5487b> list) {
        boolean z = true;
        if (f23020i || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.f23031l = true;
                if (this.f23030k == null) {
                    this.f23030k = list;
                    z = m422b();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.f23030k);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.f23030k = arrayList;
                }
            }
            if (z) {
                return;
            }
            this.f23024d.m470b(this.f23023c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m423a(EnumC5486a enumC5486a) {
        if (!m417d(enumC5486a)) {
            return;
        }
        this.f23024d.m468b(this.f23023c, enumC5486a);
    }

    /* renamed from: b */
    public void m421b(EnumC5486a enumC5486a) {
        if (!m417d(enumC5486a)) {
            return;
        }
        this.f23024d.m481a(this.f23023c, enumC5486a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
        if (r2.f23031l == false) goto L22;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m422b() {
        /*
            r2 = this;
            r0 = 0
            r3 = r0
            r0 = r2
            monitor-enter(r0)
            r0 = r2
            okhttp3.internal.http2.a r0 = r0.f23028h     // Catch: java.lang.Throwable -> L47
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L11
        Ld:
            r0 = r2
            monitor-exit(r0)
            r0 = r3
            return r0
        L11:
            r0 = r2
            okhttp3.internal.http2.h$b r0 = r0.f23032m     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.f23040b     // Catch: java.lang.Throwable -> L47
            if (r0 != 0) goto L25
            r0 = r2
            okhttp3.internal.http2.h$b r0 = r0.f23032m     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.f23039a     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L42
        L25:
            r0 = r2
            okhttp3.internal.http2.h$a r0 = r0.f23025e     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.f23035b     // Catch: java.lang.Throwable -> L47
            if (r0 != 0) goto L39
            r0 = r2
            okhttp3.internal.http2.h$a r0 = r0.f23025e     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.f23034a     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L42
        L39:
            r0 = r2
            boolean r0 = r0.f23031l     // Catch: java.lang.Throwable -> L47
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Ld
        L42:
            r0 = 1
            r3 = r0
            goto Ld
        L47:
            r4 = move-exception
            r0 = r2
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C5512h.m422b():boolean");
    }

    /* renamed from: c */
    public void m419c(EnumC5486a enumC5486a) {
        synchronized (this) {
            if (this.f23028h == null) {
                this.f23028h = enumC5486a;
                notifyAll();
            }
        }
    }

    /* renamed from: c */
    public boolean m420c() {
        return this.f23024d.f22948a == ((this.f23023c & 1) == 1);
    }

    /* renamed from: d */
    public List<C5487b> m418d() {
        List<C5487b> list;
        synchronized (this) {
            if (!m420c()) {
                throw new IllegalStateException("servers cannot read response headers");
            }
            this.f23026f.m22577c();
            while (this.f23030k == null && this.f23028h == null) {
                m409l();
            }
            this.f23026f.m399b();
            list = this.f23030k;
            if (list == null) {
                throw new StreamResetException(this.f23028h);
            }
            this.f23030k = null;
        }
        return list;
    }

    /* renamed from: e */
    public C0025t m416e() {
        return this.f23026f;
    }

    /* renamed from: f */
    public C0025t m415f() {
        return this.f23027g;
    }

    /* renamed from: g */
    public AbstractC0024s m414g() {
        return this.f23032m;
    }

    /* renamed from: h */
    public AbstractC0023r m413h() {
        synchronized (this) {
            if (!this.f23031l && !m420c()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f23025e;
    }

    /* renamed from: i */
    public void m412i() {
        boolean m422b;
        if (f23020i || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.f23032m.f23040b = true;
                m422b = m422b();
                notifyAll();
            }
            if (m422b) {
                return;
            }
            this.f23024d.m470b(this.f23023c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: j */
    void m411j() {
        boolean z;
        boolean m422b;
        if (f23020i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = !this.f23032m.f23040b && this.f23032m.f23039a && (this.f23025e.f23035b || this.f23025e.f23034a);
                m422b = m422b();
            }
            if (z) {
                m423a(EnumC5486a.CANCEL);
                return;
            } else if (m422b) {
                return;
            } else {
                this.f23024d.m470b(this.f23023c);
                return;
            }
        }
        throw new AssertionError();
    }

    /* renamed from: k */
    void m410k() {
        if (this.f23025e.f23034a) {
            throw new IOException("stream closed");
        }
        if (this.f23025e.f23035b) {
            throw new IOException("stream finished");
        }
        if (this.f23028h == null) {
            return;
        }
        throw new StreamResetException(this.f23028h);
    }

    /* renamed from: l */
    void m409l() {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }
}
