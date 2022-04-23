package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2861f;
import com.squareup.okhttp.C2862g;
import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.p089u.AbstractC2965b;
import com.squareup.okhttp.p089u.C2975i;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* renamed from: com.squareup.okhttp.internal.http.e */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e.class */
public final class C2918e {

    /* renamed from: a */
    private final C2862g f12321a;

    /* renamed from: b */
    private final C2861f f12322b;

    /* renamed from: c */
    private final Socket f12323c;

    /* renamed from: d */
    private final BufferedSource f12324d;

    /* renamed from: e */
    private final BufferedSink f12325e;

    /* renamed from: f */
    private int f12326f = 0;

    /* renamed from: g */
    private int f12327g = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.squareup.okhttp.internal.http.e$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e$b.class */
    public abstract class AbstractC2920b implements Source {

        /* renamed from: b */
        protected final ForwardingTimeout f12328b;

        /* renamed from: c */
        protected boolean f12329c;

        private AbstractC2920b() {
            this.f12328b = new ForwardingTimeout(C2918e.this.f12324d.timeout());
        }

        /* renamed from: a */
        protected final void m999a(boolean z) {
            if (C2918e.this.f12326f == 5) {
                C2918e.this.m1013m(this.f12328b);
                C2918e.this.f12326f = 0;
                if (z && C2918e.this.f12327g == 1) {
                    C2918e.this.f12327g = 0;
                    AbstractC2965b.f12498b.mo695j(C2918e.this.f12321a, C2918e.this.f12322b);
                } else if (C2918e.this.f12327g == 2) {
                    C2918e.this.f12326f = 6;
                    C2918e.this.f12322b.m1282m().close();
                }
            } else {
                throw new IllegalStateException("state: " + C2918e.this.f12326f);
            }
        }

        /* renamed from: p */
        protected final void m998p() {
            C2975i.m656d(C2918e.this.f12322b.m1282m());
            C2918e.this.f12326f = 6;
        }

        public Timeout timeout() {
            return this.f12328b;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.e$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e$c.class */
    private final class C2921c implements Sink {

        /* renamed from: b */
        private final ForwardingTimeout f12331b;

        /* renamed from: c */
        private boolean f12332c;

        private C2921c() {
            this.f12331b = new ForwardingTimeout(C2918e.this.f12325e.timeout());
        }

        public void close() {
            synchronized (this) {
                if (!this.f12332c) {
                    this.f12332c = true;
                    C2918e.this.f12325e.writeUtf8("0\r\n\r\n");
                    C2918e.this.m1013m(this.f12331b);
                    C2918e.this.f12326f = 3;
                }
            }
        }

        public void flush() {
            synchronized (this) {
                if (!this.f12332c) {
                    C2918e.this.f12325e.flush();
                }
            }
        }

        public Timeout timeout() {
            return this.f12331b;
        }

        public void write(Buffer buffer, long j) {
            if (this.f12332c) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                C2918e.this.f12325e.writeHexadecimalUnsignedLong(j);
                C2918e.this.f12325e.writeUtf8("\r\n");
                C2918e.this.f12325e.write(buffer, j);
                C2918e.this.f12325e.writeUtf8("\r\n");
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.e$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e$d.class */
    private class C2922d extends AbstractC2920b {

        /* renamed from: e */
        private long f12334e = -1;

        /* renamed from: f */
        private boolean f12335f = true;

        /* renamed from: g */
        private final C2928g f12336g;

        C2922d(C2928g gVar) {
            super();
            this.f12336g = gVar;
        }

        /* renamed from: x */
        private void m997x() {
            if (this.f12334e != -1) {
                C2918e.this.f12324d.readUtf8LineStrict();
            }
            try {
                this.f12334e = C2918e.this.f12324d.readHexadecimalUnsignedLong();
                String trim = C2918e.this.f12324d.readUtf8LineStrict().trim();
                if (this.f12334e < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f12334e + trim + "\"");
                } else if (this.f12334e == 0) {
                    this.f12335f = false;
                    C2943k.C2945b bVar = new C2943k.C2945b();
                    C2918e.this.m1003w(bVar);
                    this.f12336g.m990C(bVar.m891e());
                    m999a(true);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        public void close() {
            if (!this.f12329c) {
                if (this.f12335f && !C2975i.m655e(this, 100, TimeUnit.MILLISECONDS)) {
                    m998p();
                }
                this.f12329c = true;
            }
        }

        public long read(Buffer buffer, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f12329c) {
                throw new IllegalStateException("closed");
            } else if (!this.f12335f) {
                return -1L;
            } else {
                long j2 = this.f12334e;
                if (j2 == 0 || j2 == -1) {
                    m997x();
                    if (!this.f12335f) {
                        return -1L;
                    }
                }
                long read = C2918e.this.f12324d.read(buffer, Math.min(j, this.f12334e));
                if (read != -1) {
                    this.f12334e -= read;
                    return read;
                }
                m998p();
                throw new ProtocolException("unexpected end of stream");
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.e$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e$e.class */
    private final class C2923e implements Sink {

        /* renamed from: b */
        private final ForwardingTimeout f12338b;

        /* renamed from: c */
        private boolean f12339c;

        /* renamed from: d */
        private long f12340d;

        private C2923e(long j) {
            this.f12338b = new ForwardingTimeout(C2918e.this.f12325e.timeout());
            this.f12340d = j;
        }

        public void close() {
            if (!this.f12339c) {
                this.f12339c = true;
                if (this.f12340d <= 0) {
                    C2918e.this.m1013m(this.f12338b);
                    C2918e.this.f12326f = 3;
                    return;
                }
                throw new ProtocolException("unexpected end of stream");
            }
        }

        public void flush() {
            if (!this.f12339c) {
                C2918e.this.f12325e.flush();
            }
        }

        public Timeout timeout() {
            return this.f12338b;
        }

        public void write(Buffer buffer, long j) {
            if (!this.f12339c) {
                C2975i.m659a(buffer.size(), 0L, j);
                if (j <= this.f12340d) {
                    C2918e.this.f12325e.write(buffer, j);
                    this.f12340d -= j;
                    return;
                }
                throw new ProtocolException("expected " + this.f12340d + " bytes but received " + j);
            }
            throw new IllegalStateException("closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.squareup.okhttp.internal.http.e$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e$f.class */
    public class C2924f extends AbstractC2920b {

        /* renamed from: e */
        private long f12342e;

        public C2924f(long j) {
            super();
            this.f12342e = j;
            if (j == 0) {
                m999a(true);
            }
        }

        public void close() {
            if (!this.f12329c) {
                if (this.f12342e != 0 && !C2975i.m655e(this, 100, TimeUnit.MILLISECONDS)) {
                    m998p();
                }
                this.f12329c = true;
            }
        }

        public long read(Buffer buffer, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f12329c) {
                throw new IllegalStateException("closed");
            } else if (this.f12342e == 0) {
                return -1L;
            } else {
                long read = C2918e.this.f12324d.read(buffer, Math.min(this.f12342e, j));
                if (read != -1) {
                    long j2 = this.f12342e - read;
                    this.f12342e = j2;
                    if (j2 == 0) {
                        m999a(true);
                    }
                    return read;
                }
                m998p();
                throw new ProtocolException("unexpected end of stream");
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.e$g */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/e$g.class */
    private class C2925g extends AbstractC2920b {

        /* renamed from: e */
        private boolean f12344e;

        private C2925g() {
            super();
        }

        public void close() {
            if (!this.f12329c) {
                if (!this.f12344e) {
                    m998p();
                }
                this.f12329c = true;
            }
        }

        public long read(Buffer buffer, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f12329c) {
                throw new IllegalStateException("closed");
            } else if (this.f12344e) {
                return -1L;
            } else {
                long read = C2918e.this.f12324d.read(buffer, j);
                if (read != -1) {
                    return read;
                }
                this.f12344e = true;
                m999a(false);
                return -1L;
            }
        }
    }

    public C2918e(C2862g gVar, C2861f fVar, Socket socket) {
        this.f12321a = gVar;
        this.f12322b = fVar;
        this.f12323c = socket;
        this.f12324d = Okio.buffer(Okio.source(socket));
        this.f12325e = Okio.buffer(Okio.sink(socket));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m1013m(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    /* renamed from: A */
    public void m1026A(C2938m mVar) {
        if (this.f12326f == 1) {
            this.f12326f = 3;
            mVar.m932p(this.f12325e);
            return;
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: j */
    public long m1016j() {
        return this.f12324d.buffer().size();
    }

    /* renamed from: k */
    public void m1015k(Object obj) {
        AbstractC2965b.f12498b.mo701d(this.f12322b, obj);
    }

    /* renamed from: l */
    public void m1014l() {
        this.f12327g = 2;
        if (this.f12326f == 0) {
            this.f12326f = 6;
            this.f12322b.m1282m().close();
        }
    }

    /* renamed from: n */
    public void m1012n() {
        this.f12325e.flush();
    }

    /* renamed from: o */
    public boolean m1011o() {
        return this.f12326f == 6;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: p */
    public boolean m1010p() {
        try {
            int soTimeout = this.f12323c.getSoTimeout();
            try {
                this.f12323c.setSoTimeout(1);
                if (this.f12324d.exhausted()) {
                    this.f12323c.setSoTimeout(soTimeout);
                    return false;
                }
                this.f12323c.setSoTimeout(soTimeout);
                return true;
            } catch (Throwable th) {
                this.f12323c.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    /* renamed from: q */
    public Sink m1009q() {
        if (this.f12326f == 1) {
            this.f12326f = 2;
            return new C2921c();
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: r */
    public Source m1008r(C2928g gVar) {
        if (this.f12326f == 4) {
            this.f12326f = 5;
            return new C2922d(gVar);
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: s */
    public Sink m1007s(long j) {
        if (this.f12326f == 1) {
            this.f12326f = 2;
            return new C2923e(j);
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: t */
    public Source m1006t(long j) {
        if (this.f12326f == 4) {
            this.f12326f = 5;
            return new C2924f(j);
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: u */
    public Source m1005u() {
        if (this.f12326f == 4) {
            this.f12326f = 5;
            return new C2925g();
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: v */
    public void m1004v() {
        this.f12327g = 1;
        if (this.f12326f == 0) {
            this.f12327g = 0;
            AbstractC2965b.f12498b.mo695j(this.f12321a, this.f12322b);
        }
    }

    /* renamed from: w */
    public void m1003w(C2943k.C2945b bVar) {
        while (true) {
            String readUtf8LineStrict = this.f12324d.readUtf8LineStrict();
            if (readUtf8LineStrict.length() != 0) {
                AbstractC2965b.f12498b.mo704a(bVar, readUtf8LineStrict);
            } else {
                return;
            }
        }
    }

    /* renamed from: x */
    public C2959r.C2961b m1002x() {
        C2940o b;
        C2959r.C2961b bVar;
        int i = this.f12326f;
        if (i == 1 || i == 3) {
            do {
                try {
                    b = C2940o.m917b(this.f12324d.readUtf8LineStrict());
                    bVar = new C2959r.C2961b();
                    bVar.m716x(b.f12402a);
                    bVar.m723q(b.f12403b);
                    bVar.m719u(b.f12404c);
                    C2943k.C2945b bVar2 = new C2943k.C2945b();
                    m1003w(bVar2);
                    bVar2.m894b(C2934j.f12384e, b.f12402a.toString());
                    bVar.m720t(bVar2.m891e());
                } catch (EOFException e) {
                    IOException iOException = new IOException("unexpected end of stream on " + this.f12322b + " (recycle count=" + AbstractC2965b.f12498b.mo694k(this.f12322b) + ")");
                    iOException.initCause(e);
                    throw iOException;
                }
            } while (b.f12403b == 100);
            this.f12326f = 4;
            return bVar;
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }

    /* renamed from: y */
    public void m1001y(int i, int i2) {
        if (i != 0) {
            this.f12324d.timeout().timeout(i, TimeUnit.MILLISECONDS);
        }
        if (i2 != 0) {
            this.f12325e.timeout().timeout(i2, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: z */
    public void m1000z(C2943k kVar, String str) {
        if (this.f12326f == 0) {
            this.f12325e.writeUtf8(str).writeUtf8("\r\n");
            int f = kVar.m897f();
            for (int i = 0; i < f; i++) {
                this.f12325e.writeUtf8(kVar.m899d(i)).writeUtf8(": ").writeUtf8(kVar.m896g(i)).writeUtf8("\r\n");
            }
            this.f12325e.writeUtf8("\r\n");
            this.f12326f = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f12326f);
    }
}
