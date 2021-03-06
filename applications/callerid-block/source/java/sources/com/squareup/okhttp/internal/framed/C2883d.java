package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* renamed from: com.squareup.okhttp.internal.framed.d */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/d.class */
public final class C2883d {

    /* renamed from: b */
    long f12209b;

    /* renamed from: c */
    private final int f12210c;

    /* renamed from: d */
    private final C2871c f12211d;

    /* renamed from: e */
    private final List<C2888e> f12212e;

    /* renamed from: f */
    private List<C2888e> f12213f;

    /* renamed from: g */
    private final C2886c f12214g;

    /* renamed from: h */
    final C2885b f12215h;

    /* renamed from: a */
    long f12208a = 0;

    /* renamed from: i */
    private final C2887d f12216i = new C2887d();

    /* renamed from: j */
    private final C2887d f12217j = new C2887d();

    /* renamed from: k */
    private ErrorCode f12218k = null;

    /* renamed from: com.squareup.okhttp.internal.framed.d$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/d$b.class */
    public final class C2885b implements Sink {

        /* renamed from: b */
        private final Buffer f12219b = new Buffer();

        /* renamed from: c */
        private boolean f12220c;

        /* renamed from: d */
        private boolean f12221d;

        C2885b() {
            C2883d.this = r5;
        }

        /* renamed from: B */
        private void m1157B(boolean z) {
            long min;
            C2883d c2883d;
            synchronized (C2883d.this) {
                try {
                    C2883d.this.f12217j.enter();
                    while (true) {
                        C2883d c2883d2 = C2883d.this;
                        if (c2883d2.f12209b > 0 || this.f12221d || this.f12220c || c2883d2.f12218k != null) {
                            break;
                        }
                        C2883d.this.m1158z();
                    }
                    C2883d.this.f12217j.exitAndThrowIfTimedOut();
                    C2883d.this.m1173k();
                    min = Math.min(C2883d.this.f12209b, this.f12219b.size());
                    c2883d = C2883d.this;
                    c2883d.f12209b -= min;
                } catch (Throwable th) {
                    throw th;
                }
            }
            c2883d.f12217j.enter();
            try {
                C2883d.this.f12211d.m1242A0(C2883d.this.f12210c, z && min == this.f12219b.size(), this.f12219b, min);
            } finally {
                C2883d.this.f12217j.exitAndThrowIfTimedOut();
            }
        }

        public void close() {
            synchronized (C2883d.this) {
                try {
                    if (this.f12220c) {
                        return;
                    }
                    if (!C2883d.this.f12215h.f12221d) {
                        if (this.f12219b.size() > 0) {
                            while (this.f12219b.size() > 0) {
                                m1157B(true);
                            }
                        } else {
                            C2883d.this.f12211d.m1242A0(C2883d.this.f12210c, true, null, 0L);
                        }
                    }
                    synchronized (C2883d.this) {
                        this.f12220c = true;
                    }
                    C2883d.this.f12211d.flush();
                    C2883d.this.m1174j();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void flush() {
            synchronized (C2883d.this) {
                try {
                    C2883d.this.m1173k();
                } catch (Throwable th) {
                    throw th;
                }
            }
            while (this.f12219b.size() > 0) {
                m1157B(false);
                C2883d.this.f12211d.flush();
            }
        }

        public Timeout timeout() {
            return C2883d.this.f12217j;
        }

        public void write(Buffer buffer, long j) {
            this.f12219b.write(buffer, j);
            while (this.f12219b.size() >= 16384) {
                m1157B(false);
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.d$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/d$c.class */
    public final class C2886c implements Source {

        /* renamed from: b */
        private final Buffer f12223b;

        /* renamed from: c */
        private final Buffer f12224c;

        /* renamed from: d */
        private final long f12225d;

        /* renamed from: e */
        private boolean f12226e;

        /* renamed from: f */
        private boolean f12227f;

        private C2886c(long j) {
            C2883d.this = r5;
            this.f12223b = new Buffer();
            this.f12224c = new Buffer();
            this.f12225d = j;
        }

        /* renamed from: B */
        private void m1153B() {
            if (!this.f12226e) {
                if (C2883d.this.f12218k == null) {
                    return;
                }
                throw new IOException("stream was reset: " + C2883d.this.f12218k);
            }
            throw new IOException("stream closed");
        }

        /* renamed from: F */
        private void m1151F() {
            C2883d.this.f12216i.enter();
            while (this.f12224c.size() == 0 && !this.f12227f && !this.f12226e && C2883d.this.f12218k == null) {
                try {
                    C2883d.this.m1158z();
                } catch (Throwable th) {
                    C2883d.this.f12216i.exitAndThrowIfTimedOut();
                    throw th;
                }
            }
            C2883d.this.f12216i.exitAndThrowIfTimedOut();
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
            r7 = r7;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        /* renamed from: C */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m1152C(okio.BufferedSource r6, long r7) {
            /*
                Method dump skipped, instructions count: 206
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.C2883d.C2886c.m1152C(okio.BufferedSource, long):void");
        }

        public void close() {
            synchronized (C2883d.this) {
                this.f12226e = true;
                this.f12224c.clear();
                C2883d.this.notifyAll();
            }
            C2883d.this.m1174j();
        }

        public long read(Buffer buffer, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (C2883d.this) {
                m1151F();
                m1153B();
                if (this.f12224c.size() == 0) {
                    return -1L;
                }
                Buffer buffer2 = this.f12224c;
                long read = buffer2.read(buffer, Math.min(j, buffer2.size()));
                C2883d c2883d = C2883d.this;
                long j2 = c2883d.f12208a + read;
                c2883d.f12208a = j2;
                if (j2 >= c2883d.f12211d.f12162p.m1069e(65536) / 2) {
                    C2883d.this.f12211d.m1234F0(C2883d.this.f12210c, C2883d.this.f12208a);
                    C2883d.this.f12208a = 0L;
                }
                synchronized (C2883d.this.f12211d) {
                    C2883d.this.f12211d.f12160n += read;
                    if (C2883d.this.f12211d.f12160n >= C2883d.this.f12211d.f12162p.m1069e(65536) / 2) {
                        C2883d.this.f12211d.m1234F0(0, C2883d.this.f12211d.f12160n);
                        C2883d.this.f12211d.f12160n = 0L;
                    }
                }
                return read;
            }
        }

        public Timeout timeout() {
            return C2883d.this.f12216i;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.d$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/d$d.class */
    public class C2887d extends AsyncTimeout {
        C2887d() {
            C2883d.this = r4;
        }

        public void exitAndThrowIfTimedOut() {
            if (!exit()) {
                return;
            }
            throw newTimeoutException(null);
        }

        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        protected void timedOut() {
            C2883d.this.m1170n(ErrorCode.CANCEL);
        }
    }

    public C2883d(int i, C2871c c2871c, boolean z, boolean z2, List<C2888e> list) {
        if (c2871c != null) {
            if (list == null) {
                throw new NullPointerException("requestHeaders == null");
            }
            this.f12210c = i;
            this.f12211d = c2871c;
            this.f12209b = c2871c.f12163q.m1069e(65536);
            C2886c c2886c = new C2886c(c2871c.f12162p.m1069e(65536));
            this.f12214g = c2886c;
            C2885b c2885b = new C2885b();
            this.f12215h = c2885b;
            c2886c.f12227f = z2;
            c2885b.f12221d = z;
            this.f12212e = list;
            return;
        }
        throw new NullPointerException("connection == null");
    }

    /* renamed from: j */
    public void m1174j() {
        boolean z;
        boolean m1164t;
        synchronized (this) {
            z = !this.f12214g.f12227f && this.f12214g.f12226e && (this.f12215h.f12221d || this.f12215h.f12220c);
            m1164t = m1164t();
        }
        if (z) {
            m1172l(ErrorCode.CANCEL);
        } else if (m1164t) {
        } else {
            this.f12211d.m1201w0(this.f12210c);
        }
    }

    /* renamed from: k */
    public void m1173k() {
        if (!this.f12215h.f12220c) {
            if (this.f12215h.f12221d) {
                throw new IOException("stream finished");
            }
            if (this.f12218k == null) {
                return;
            }
            throw new IOException("stream was reset: " + this.f12218k);
        }
        throw new IOException("stream closed");
    }

    /* renamed from: m */
    private boolean m1171m(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f12218k != null) {
                return false;
            }
            if (this.f12214g.f12227f && this.f12215h.f12221d) {
                return false;
            }
            this.f12218k = errorCode;
            notifyAll();
            this.f12211d.m1201w0(this.f12210c);
            return true;
        }
    }

    /* renamed from: z */
    public void m1158z() {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    /* renamed from: i */
    public void m1175i(long j) {
        this.f12209b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: l */
    public void m1172l(ErrorCode errorCode) {
        if (!m1171m(errorCode)) {
            return;
        }
        this.f12211d.m1237D0(this.f12210c, errorCode);
    }

    /* renamed from: n */
    public void m1170n(ErrorCode errorCode) {
        if (!m1171m(errorCode)) {
            return;
        }
        this.f12211d.m1236E0(this.f12210c, errorCode);
    }

    /* renamed from: o */
    public int m1169o() {
        return this.f12210c;
    }

    /* renamed from: p */
    public List<C2888e> m1168p() {
        List<C2888e> list;
        synchronized (this) {
            this.f12216i.enter();
            while (this.f12213f == null && this.f12218k == null) {
                m1158z();
            }
            this.f12216i.exitAndThrowIfTimedOut();
            list = this.f12213f;
            if (list == null) {
                throw new IOException("stream was reset: " + this.f12218k);
            }
        }
        return list;
    }

    /* renamed from: q */
    public Sink m1167q() {
        synchronized (this) {
            if (this.f12213f == null && !m1165s()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f12215h;
    }

    /* renamed from: r */
    public Source m1166r() {
        return this.f12214g;
    }

    /* renamed from: s */
    public boolean m1165s() {
        return this.f12211d.f12149c == ((this.f12210c & 1) == 1);
    }

    /* renamed from: t */
    public boolean m1164t() {
        synchronized (this) {
            if (this.f12218k != null) {
                return false;
            }
            if ((this.f12214g.f12227f || this.f12214g.f12226e) && (this.f12215h.f12221d || this.f12215h.f12220c)) {
                if (this.f12213f != null) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: u */
    public Timeout m1163u() {
        return this.f12216i;
    }

    /* renamed from: v */
    public void m1162v(BufferedSource bufferedSource, int i) {
        this.f12214g.m1152C(bufferedSource, i);
    }

    /* renamed from: w */
    public void m1161w() {
        boolean m1164t;
        synchronized (this) {
            this.f12214g.f12227f = true;
            m1164t = m1164t();
            notifyAll();
        }
        if (!m1164t) {
            this.f12211d.m1201w0(this.f12210c);
        }
    }

    /* renamed from: x */
    public void m1160x(List<C2888e> list, HeadersMode headersMode) {
        ErrorCode errorCode;
        boolean z = true;
        synchronized (this) {
            if (this.f12213f == null) {
                if (headersMode.failIfHeadersAbsent()) {
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                } else {
                    this.f12213f = list;
                    z = m1164t();
                    notifyAll();
                    errorCode = null;
                }
            } else if (headersMode.failIfHeadersPresent()) {
                errorCode = ErrorCode.STREAM_IN_USE;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f12213f);
                arrayList.addAll(list);
                this.f12213f = arrayList;
                errorCode = null;
            }
        }
        if (errorCode != null) {
            m1170n(errorCode);
        } else if (z) {
        } else {
            this.f12211d.m1201w0(this.f12210c);
        }
    }

    /* renamed from: y */
    public void m1159y(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f12218k == null) {
                this.f12218k = errorCode;
                notifyAll();
            }
        }
    }
}
