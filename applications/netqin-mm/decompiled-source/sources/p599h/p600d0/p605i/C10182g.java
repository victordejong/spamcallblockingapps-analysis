package p599h.p600d0.p605i;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import p599h.C10234r;
import p599h.p600d0.C10109c;
import p599h.p600d0.p605i.C10156a;
import p610i.AbstractC10264e;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10255a;
import p610i.C10260c;
import p610i.C10282r;
/* renamed from: h.d0.i.g */
/* loaded from: classes2-dex2jar.jar:h/d0/i/g.class */
public final class C10182g {

    /* renamed from: b */
    public long f37605b;

    /* renamed from: c */
    public final int f37606c;

    /* renamed from: d */
    public final C10164e f37607d;

    /* renamed from: f */
    public C10156a.AbstractC10157a f37609f;

    /* renamed from: g */
    public boolean f37610g;

    /* renamed from: h */
    public final C10184b f37611h;

    /* renamed from: i */
    public final C10183a f37612i;

    /* renamed from: a */
    public long f37604a = 0;

    /* renamed from: e */
    public final Deque<C10234r> f37608e = new ArrayDeque();

    /* renamed from: j */
    public final C10185c f37613j = new C10185c();

    /* renamed from: k */
    public final C10185c f37614k = new C10185c();

    /* renamed from: l */
    public ErrorCode f37615l = null;

    /* renamed from: h.d0.i.g$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/g$a.class */
    public final class C10183a implements AbstractC10280p {

        /* renamed from: a */
        public final C10260c f37616a = new C10260c();

        /* renamed from: b */
        public boolean f37617b;

        /* renamed from: c */
        public boolean f37618c;

        public C10183a() {
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: a */
        public void mo706a(C10260c cVar, long j) throws IOException {
            this.f37616a.mo706a(cVar, j);
            while (this.f37616a.size() >= 16384) {
                m1153a(false);
            }
        }

        /* renamed from: a */
        public final void m1153a(boolean z) throws IOException {
            long min;
            synchronized (C10182g.this) {
                try {
                    C10182g.this.f37614k.m789g();
                    while (C10182g.this.f37605b <= 0 && !this.f37618c && !this.f37617b && C10182g.this.f37615l == null) {
                        C10182g.this.m1155k();
                    }
                    C10182g.this.f37614k.m1150k();
                    C10182g.this.m1168b();
                    min = Math.min(C10182g.this.f37605b, this.f37616a.size());
                    C10182g.this.f37605b -= min;
                } catch (Throwable th) {
                    throw th;
                }
            }
            C10182g.this.f37614k.m789g();
            try {
                C10182g.this.f37607d.m1228a(C10182g.this.f37606c, z && min == this.f37616a.size(), this.f37616a, min);
            } finally {
                C10182g.this.f37614k.m1150k();
            }
        }

        @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (C10182g.this) {
                try {
                    if (!this.f37617b) {
                        if (!C10182g.this.f37612i.f37618c) {
                            if (this.f37616a.size() > 0) {
                                while (this.f37616a.size() > 0) {
                                    m1153a(true);
                                }
                            } else {
                                C10182g gVar = C10182g.this;
                                gVar.f37607d.m1228a(gVar.f37606c, true, (C10260c) null, 0L);
                            }
                        }
                        synchronized (C10182g.this) {
                            this.f37617b = true;
                        }
                        C10182g.this.f37607d.flush();
                        C10182g.this.m1174a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: f0 */
        public C10282r mo705f0() {
            return C10182g.this.f37614k;
        }

        @Override // p610i.AbstractC10280p, java.io.Flushable
        public void flush() throws IOException {
            synchronized (C10182g.this) {
                try {
                    C10182g.this.m1168b();
                } catch (Throwable th) {
                    throw th;
                }
            }
            while (this.f37616a.size() > 0) {
                m1153a(false);
                C10182g.this.f37607d.flush();
            }
        }
    }

    /* renamed from: h.d0.i.g$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/g$b.class */
    public final class C10184b implements AbstractC10281q {

        /* renamed from: a */
        public final C10260c f37620a = new C10260c();

        /* renamed from: b */
        public final C10260c f37621b = new C10260c();

        /* renamed from: c */
        public final long f37622c;

        /* renamed from: d */
        public boolean f37623d;

        /* renamed from: e */
        public boolean f37624e;

        public C10184b(long j) {
            this.f37622c = j;
        }

        /* renamed from: a */
        public void m1152a(AbstractC10264e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            while (j > 0) {
                synchronized (C10182g.this) {
                    z = this.f37624e;
                    z3 = true;
                    z2 = this.f37621b.size() + j > this.f37622c;
                }
                if (z2) {
                    eVar.skip(j);
                    C10182g.this.m1164c(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    eVar.skip(j);
                    return;
                } else {
                    long b = eVar.mo704b(this.f37620a, j);
                    if (b != -1) {
                        j -= b;
                        synchronized (C10182g.this) {
                            if (this.f37621b.size() != 0) {
                                z3 = false;
                            }
                            this.f37621b.mo739a(this.f37620a);
                            if (z3) {
                                C10182g.this.notifyAll();
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x0178, code lost:
            throw new java.io.IOException("stream closed");
         */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long mo704b(p610i.C10260c r8, long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 437
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p605i.C10182g.C10184b.mo704b(i.c, long):long");
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long size;
            C10156a.AbstractC10157a aVar;
            ArrayList<C10234r> arrayList;
            synchronized (C10182g.this) {
                try {
                    this.f37623d = true;
                    size = this.f37621b.size();
                    this.f37621b.m774c();
                    aVar = null;
                    if (C10182g.this.f37608e.isEmpty() || C10182g.this.f37609f == null) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(C10182g.this.f37608e);
                        C10182g.this.f37608e.clear();
                        aVar = C10182g.this.f37609f;
                    }
                    C10182g.this.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (size > 0) {
                m1151d(size);
            }
            C10182g.this.m1174a();
            if (aVar != null) {
                for (C10234r rVar : arrayList) {
                    aVar.m1275a(rVar);
                }
            }
        }

        /* renamed from: d */
        public final void m1151d(long j) {
            C10182g.this.f37607d.m1209d(j);
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return C10182g.this.f37613j;
        }
    }

    /* renamed from: h.d0.i.g$c */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/g$c.class */
    public class C10185c extends C10255a {
        public C10185c() {
        }

        @Override // p610i.C10255a
        /* renamed from: b */
        public IOException mo741b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p610i.C10255a
        /* renamed from: i */
        public void mo740i() {
            C10182g.this.m1164c(ErrorCode.CANCEL);
        }

        /* renamed from: k */
        public void m1150k() throws IOException {
            if (m788h()) {
                throw mo741b((IOException) null);
            }
        }
    }

    public C10182g(int i, C10164e eVar, boolean z, boolean z2, C10234r rVar) {
        if (eVar != null) {
            this.f37606c = i;
            this.f37607d = eVar;
            this.f37605b = eVar.f37546o.m1117c();
            this.f37611h = new C10184b(eVar.f37545n.m1117c());
            C10183a aVar = new C10183a();
            this.f37612i = aVar;
            this.f37611h.f37624e = z2;
            aVar.f37618c = z;
            if (rVar != null) {
                this.f37608e.add(rVar);
            }
            if (m1160f() && rVar != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            } else if (!m1160f() && rVar == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            throw new NullPointerException("connection == null");
        }
    }

    /* renamed from: a */
    public void m1174a() throws IOException {
        boolean z;
        boolean g;
        synchronized (this) {
            z = !this.f37611h.f37624e && this.f37611h.f37623d && (this.f37612i.f37618c || this.f37612i.f37617b);
            g = m1159g();
        }
        if (z) {
            m1169a(ErrorCode.CANCEL);
        } else if (!g) {
            this.f37607d.m1212c(this.f37606c);
        }
    }

    /* renamed from: a */
    public void m1173a(long j) {
        this.f37605b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: a */
    public void m1171a(AbstractC10264e eVar, int i) throws IOException {
        this.f37611h.m1152a(eVar, i);
    }

    /* renamed from: a */
    public void m1170a(List<C10156a> list) {
        boolean g;
        synchronized (this) {
            this.f37610g = true;
            this.f37608e.add(C10109c.m1438b(list));
            g = m1159g();
            notifyAll();
        }
        if (!g) {
            this.f37607d.m1212c(this.f37606c);
        }
    }

    /* renamed from: a */
    public void m1169a(ErrorCode errorCode) throws IOException {
        if (m1166b(errorCode)) {
            this.f37607d.m1216b(this.f37606c, errorCode);
        }
    }

    /* renamed from: b */
    public void m1168b() throws IOException {
        C10183a aVar = this.f37612i;
        if (aVar.f37617b) {
            throw new IOException("stream closed");
        } else if (aVar.f37618c) {
            throw new IOException("stream finished");
        } else if (this.f37615l != null) {
            throw new StreamResetException(this.f37615l);
        }
    }

    /* renamed from: b */
    public final boolean m1166b(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f37615l != null) {
                return false;
            }
            if (this.f37611h.f37624e && this.f37612i.f37618c) {
                return false;
            }
            this.f37615l = errorCode;
            notifyAll();
            this.f37607d.m1212c(this.f37606c);
            return true;
        }
    }

    /* renamed from: c */
    public int m1165c() {
        return this.f37606c;
    }

    /* renamed from: c */
    public void m1164c(ErrorCode errorCode) {
        if (m1166b(errorCode)) {
            this.f37607d.m1211c(this.f37606c, errorCode);
        }
    }

    /* renamed from: d */
    public AbstractC10280p m1163d() {
        synchronized (this) {
            if (!this.f37610g && !m1160f()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f37612i;
    }

    /* renamed from: d */
    public void m1162d(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f37615l == null) {
                this.f37615l = errorCode;
                notifyAll();
            }
        }
    }

    /* renamed from: e */
    public AbstractC10281q m1161e() {
        return this.f37611h;
    }

    /* renamed from: f */
    public boolean m1160f() {
        boolean z = true;
        if (this.f37607d.f37532a != ((this.f37606c & 1) == 1)) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    public boolean m1159g() {
        synchronized (this) {
            if (this.f37615l != null) {
                return false;
            }
            if ((this.f37611h.f37624e || this.f37611h.f37623d) && (this.f37612i.f37618c || this.f37612i.f37617b)) {
                if (this.f37610g) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: h */
    public C10282r m1158h() {
        return this.f37613j;
    }

    /* renamed from: i */
    public void m1157i() {
        boolean g;
        synchronized (this) {
            this.f37611h.f37624e = true;
            g = m1159g();
            notifyAll();
        }
        if (!g) {
            this.f37607d.m1212c(this.f37606c);
        }
    }

    /* renamed from: j */
    public C10234r m1156j() throws IOException {
        C10234r removeFirst;
        synchronized (this) {
            this.f37613j.m789g();
            while (this.f37608e.isEmpty() && this.f37615l == null) {
                m1155k();
            }
            this.f37613j.m1150k();
            if (!this.f37608e.isEmpty()) {
                removeFirst = this.f37608e.removeFirst();
            } else {
                throw new StreamResetException(this.f37615l);
            }
        }
        return removeFirst;
    }

    /* renamed from: k */
    public void m1155k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    /* renamed from: l */
    public C10282r m1154l() {
        return this.f37614k;
    }
}
