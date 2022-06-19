package p268v9;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;
import javax.annotation.Nullable;
import okhttp3.internal.http2.StreamResetException;
import p011aa.AbstractC0073x;
import p011aa.AbstractC0074y;
import p011aa.C0049c;
import p011aa.C0053f;
import p011aa.C0075z;
import p204p9.C4121r;
/* renamed from: v9.o */
/* loaded from: classes2-dex2jar.jar:v9/o.class */
public final class C4684o {

    /* renamed from: b */
    public long f14467b;

    /* renamed from: c */
    public final int f14468c;

    /* renamed from: d */
    public final C4667f f14469d;

    /* renamed from: e */
    public final Deque<C4121r> f14470e;

    /* renamed from: f */
    public boolean f14471f;

    /* renamed from: g */
    public final C4686b f14472g;

    /* renamed from: h */
    public final C4685a f14473h;

    /* renamed from: a */
    public long f14466a = 0;

    /* renamed from: i */
    public final C4687c f14474i = new C4687c();

    /* renamed from: j */
    public final C4687c f14475j = new C4687c();

    /* renamed from: k */
    public int f14476k = 0;

    /* renamed from: v9.o$a */
    /* loaded from: classes2-dex2jar.jar:v9/o$a.class */
    public final class C4685a implements AbstractC0073x {

        /* renamed from: a */
        public final C0053f f14477a = new C0053f();

        /* renamed from: b */
        public boolean f14478b;

        /* renamed from: c */
        public boolean f14479c;

        public C4685a() {
            C4684o.this = r5;
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: E */
        public void mo613E(C0053f c0053f, long j) throws IOException {
            this.f14477a.mo613E(c0053f, j);
            while (this.f14477a.f120b >= 16384) {
                m611d(false);
            }
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: b */
        public C0075z mo612b() {
            return C4684o.this.f14475j;
        }

        @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (C4684o.this) {
                if (this.f14478b) {
                    return;
                }
                C4684o c4684o = C4684o.this;
                if (!c4684o.f14473h.f14479c) {
                    if (this.f14477a.f120b > 0) {
                        while (this.f14477a.f120b > 0) {
                            m611d(true);
                        }
                    } else {
                        c4684o.f14469d.m647D(c4684o.f14468c, true, null, 0L);
                    }
                }
                synchronized (C4684o.this) {
                    this.f14478b = true;
                }
                C4684o.this.f14469d.f14419r.flush();
                C4684o.this.m623a();
            }
        }

        /* renamed from: d */
        public final void m611d(boolean z) throws IOException {
            C4684o c4684o;
            long min;
            C4684o c4684o2;
            synchronized (C4684o.this) {
                C4684o.this.f14475j.m8866i();
                while (true) {
                    c4684o = C4684o.this;
                    if (c4684o.f14467b > 0 || this.f14479c || this.f14478b || c4684o.f14476k != 0) {
                        break;
                    }
                    c4684o.m614j();
                }
                c4684o.f14475j.m606n();
                C4684o.this.m622b();
                min = Math.min(C4684o.this.f14467b, this.f14477a.f120b);
                c4684o2 = C4684o.this;
                c4684o2.f14467b -= min;
            }
            c4684o2.f14475j.m8866i();
            try {
                C4684o c4684o3 = C4684o.this;
                c4684o3.f14469d.m647D(c4684o3.f14468c, z && min == this.f14477a.f120b, this.f14477a, min);
            } finally {
                C4684o.this.f14475j.m606n();
            }
        }

        @Override // p011aa.AbstractC0073x, java.io.Flushable
        public void flush() throws IOException {
            synchronized (C4684o.this) {
                C4684o.this.m622b();
            }
            while (this.f14477a.f120b > 0) {
                m611d(false);
                C4684o.this.f14469d.flush();
            }
        }
    }

    /* renamed from: v9.o$b */
    /* loaded from: classes2-dex2jar.jar:v9/o$b.class */
    public final class C4686b implements AbstractC0074y {

        /* renamed from: a */
        public final C0053f f14481a = new C0053f();

        /* renamed from: b */
        public final C0053f f14482b = new C0053f();

        /* renamed from: c */
        public final long f14483c;

        /* renamed from: d */
        public boolean f14484d;

        /* renamed from: e */
        public boolean f14485e;

        public C4686b(long j) {
            C4684o.this = r5;
            this.f14483c = j;
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: b */
        public C0075z mo610b() {
            return C4684o.this.f14474i;
        }

        @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long j;
            synchronized (C4684o.this) {
                this.f14484d = true;
                C0053f c0053f = this.f14482b;
                j = c0053f.f120b;
                c0053f.m8849d();
                if (!C4684o.this.f14470e.isEmpty()) {
                    Objects.requireNonNull(C4684o.this);
                }
                C4684o.this.notifyAll();
            }
            if (j > 0) {
                C4684o.this.f14469d.m648B(j);
            }
            C4684o.this.m623a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x00e6, code lost:
            r9 = 65535;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00ea, code lost:
            p268v9.C4684o.this.f14474i.m606n();
         */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        @Override // p011aa.AbstractC0074y
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long mo609f(p011aa.C0053f r8, long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 351
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p268v9.C4684o.C4686b.mo609f(aa.f, long):long");
        }
    }

    /* renamed from: v9.o$c */
    /* loaded from: classes2-dex2jar.jar:v9/o$c.class */
    public class C4687c extends C0049c {
        public C4687c() {
            C4684o.this = r4;
        }

        @Override // p011aa.C0049c
        /* renamed from: l */
        public IOException mo608l(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p011aa.C0049c
        /* renamed from: m */
        public void mo607m() {
            C4684o.this.m619e(6);
        }

        /* renamed from: n */
        public void m606n() throws IOException {
            if (!m8864k()) {
                return;
            }
            throw mo608l(null);
        }
    }

    public C4684o(int i, C4667f c4667f, boolean z, boolean z2, @Nullable C4121r c4121r) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f14470e = arrayDeque;
        Objects.requireNonNull(c4667f, "connection == null");
        this.f14468c = i;
        this.f14469d = c4667f;
        this.f14467b = c4667f.f14416o.m2511a();
        C4686b c4686b = new C4686b(c4667f.f14415n.m2511a());
        this.f14472g = c4686b;
        C4685a c4685a = new C4685a();
        this.f14473h = c4685a;
        c4686b.f14485e = z2;
        c4685a.f14479c = z;
        if (c4121r != null) {
            arrayDeque.add(c4121r);
        }
        if (!m617g() || c4121r == null) {
            if (!m617g() && c4121r == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
            return;
        }
        throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
    }

    /* renamed from: a */
    public void m623a() throws IOException {
        boolean z;
        boolean m616h;
        synchronized (this) {
            C4686b c4686b = this.f14472g;
            if (!c4686b.f14485e && c4686b.f14484d) {
                C4685a c4685a = this.f14473h;
                if (c4685a.f14479c || c4685a.f14478b) {
                    z = true;
                    m616h = m616h();
                }
            }
            z = false;
            m616h = m616h();
        }
        if (z) {
            m621c(6);
        } else if (m616h) {
        } else {
            this.f14469d.m638s(this.f14468c);
        }
    }

    /* renamed from: b */
    public void m622b() throws IOException {
        C4685a c4685a = this.f14473h;
        if (!c4685a.f14478b) {
            if (c4685a.f14479c) {
                throw new IOException("stream finished");
            }
            if (this.f14476k != 0) {
                throw new StreamResetException(this.f14476k);
            }
            return;
        }
        throw new IOException("stream closed");
    }

    /* renamed from: c */
    public void m621c(int i) throws IOException {
        if (!m620d(i)) {
            return;
        }
        C4667f c4667f = this.f14469d;
        c4667f.f14419r.m597s(this.f14468c, i);
    }

    /* renamed from: d */
    public final boolean m620d(int i) {
        synchronized (this) {
            if (this.f14476k != 0) {
                return false;
            }
            if (this.f14472g.f14485e && this.f14473h.f14479c) {
                return false;
            }
            this.f14476k = i;
            notifyAll();
            this.f14469d.m638s(this.f14468c);
            return true;
        }
    }

    /* renamed from: e */
    public void m619e(int i) {
        if (!m620d(i)) {
            return;
        }
        this.f14469d.m646J(this.f14468c, i);
    }

    /* renamed from: f */
    public AbstractC0073x m618f() {
        synchronized (this) {
            if (!this.f14471f && !m617g()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f14473h;
    }

    /* renamed from: g */
    public boolean m617g() {
        return this.f14469d.f14402a == ((this.f14468c & 1) == 1);
    }

    /* renamed from: h */
    public boolean m616h() {
        synchronized (this) {
            if (this.f14476k != 0) {
                return false;
            }
            C4686b c4686b = this.f14472g;
            if (c4686b.f14485e || c4686b.f14484d) {
                C4685a c4685a = this.f14473h;
                if (c4685a.f14479c || c4685a.f14478b) {
                    if (this.f14471f) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    /* renamed from: i */
    public void m615i() {
        boolean m616h;
        synchronized (this) {
            this.f14472g.f14485e = true;
            m616h = m616h();
            notifyAll();
        }
        if (!m616h) {
            this.f14469d.m638s(this.f14468c);
        }
    }

    /* renamed from: j */
    public void m614j() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
