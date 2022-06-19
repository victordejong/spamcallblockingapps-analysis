package p268v9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Level;
import java.util.logging.Logger;
import p007a6.C0033h;
import p011aa.AbstractC0055h;
import p011aa.AbstractC0074y;
import p011aa.C0053f;
import p011aa.C0056i;
import p011aa.C0075z;
import p134j4.C3248s0;
import p214q9.C4171c;
import p268v9.C4660b;
import p268v9.C4667f;
import p268v9.C4684o;
/* renamed from: v9.n */
/* loaded from: classes2-dex2jar.jar:v9/n.class */
public final class C4681n implements Closeable {

    /* renamed from: e */
    public static final Logger f14455e = Logger.getLogger(C4663c.class.getName());

    /* renamed from: a */
    public final AbstractC0055h f14456a;

    /* renamed from: b */
    public final C4682a f14457b;

    /* renamed from: c */
    public final boolean f14458c;

    /* renamed from: d */
    public final C4660b.C4661a f14459d;

    /* renamed from: v9.n$a */
    /* loaded from: classes2-dex2jar.jar:v9/n$a.class */
    public static final class C4682a implements AbstractC0074y {

        /* renamed from: a */
        public final AbstractC0055h f14460a;

        /* renamed from: b */
        public int f14461b;

        /* renamed from: c */
        public byte f14462c;

        /* renamed from: d */
        public int f14463d;

        /* renamed from: e */
        public int f14464e;

        /* renamed from: f */
        public short f14465f;

        public C4682a(AbstractC0055h abstractC0055h) {
            this.f14460a = abstractC0055h;
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: b */
        public C0075z mo610b() {
            return this.f14460a.mo610b();
        }

        @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            int i;
            int readInt;
            do {
                int i2 = this.f14464e;
                if (i2 != 0) {
                    long mo609f = this.f14460a.mo609f(c0053f, Math.min(j, i2));
                    if (mo609f == -1) {
                        return -1L;
                    }
                    this.f14464e = (int) (this.f14464e - mo609f);
                    return mo609f;
                }
                this.f14460a.mo8804j(this.f14465f);
                this.f14465f = (short) 0;
                if ((this.f14462c & 4) != 0) {
                    return -1L;
                }
                i = this.f14463d;
                int m625r = C4681n.m625r(this.f14460a);
                this.f14464e = m625r;
                this.f14461b = m625r;
                byte readByte = (byte) (this.f14460a.readByte() & 255);
                this.f14462c = (byte) (this.f14460a.readByte() & 255);
                Logger logger = C4681n.f14455e;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(C4663c.m659a(true, this.f14463d, this.f14461b, readByte, this.f14462c));
                }
                readInt = this.f14460a.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
                this.f14463d = readInt;
                if (readByte != 9) {
                    C4663c.m657c("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                    throw null;
                }
            } while (readInt == i);
            C4663c.m657c("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }
    }

    /* renamed from: v9.n$b */
    /* loaded from: classes2-dex2jar.jar:v9/n$b.class */
    public interface AbstractC4683b {
    }

    public C4681n(AbstractC0055h abstractC0055h, boolean z) {
        this.f14456a = abstractC0055h;
        this.f14458c = z;
        C4682a c4682a = new C4682a(abstractC0055h);
        this.f14457b = c4682a;
        this.f14459d = new C4660b.C4661a(4096, c4682a);
    }

    /* renamed from: d */
    public static int m630d(int i, byte b, short s) throws IOException {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        C4663c.m657c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }

    /* renamed from: r */
    public static int m625r(AbstractC0055h abstractC0055h) throws IOException {
        return (abstractC0055h.readByte() & 255) | ((abstractC0055h.readByte() & 255) << 16) | ((abstractC0055h.readByte() & 255) << 8);
    }

    /* renamed from: A */
    public final void m634A(AbstractC4683b abstractC4683b, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            C4663c.m657c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short readByte = (b & 8) != 0 ? (short) (this.f14456a.readByte() & 255) : (short) 0;
        int readInt = this.f14456a.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
        List<C4659a> m626p = m626p(m630d(i - 4, b, readByte), readByte, b, i2);
        C4667f c4667f = C4667f.this;
        synchronized (c4667f) {
            if (c4667f.f14421t.contains(Integer.valueOf(readInt))) {
                c4667f.m646J(readInt, 2);
                return;
            }
            c4667f.f14421t.add(Integer.valueOf(readInt));
            try {
                c4667f.m640p(new C4674g(c4667f, "OkHttp %s Push Request[%s]", new Object[]{c4667f.f14405d, Integer.valueOf(readInt)}, readInt, m626p));
            } catch (RejectedExecutionException e) {
            }
        }
    }

    /* renamed from: B */
    public final void m633B(AbstractC4683b abstractC4683b, int i, int i2) throws IOException {
        if (i != 4) {
            C4663c.m657c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            C4663c.m657c("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        } else {
            int readInt = this.f14456a.readInt();
            int m8896a = C0033h.m8896a(readInt);
            if (m8896a == 0) {
                C4663c.m657c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
                throw null;
            }
            C4667f.C4673e c4673e = (C4667f.C4673e) abstractC4683b;
            if (C4667f.this.m639r(i2)) {
                C4667f c4667f = C4667f.this;
                c4667f.m640p(new C4677j(c4667f, "OkHttp %s Push Reset[%s]", new Object[]{c4667f.f14405d, Integer.valueOf(i2)}, i2, m8896a));
                return;
            }
            C4684o m638s = C4667f.this.m638s(i2);
            if (m638s == null) {
                return;
            }
            synchronized (m638s) {
                if (m638s.f14476k == 0) {
                    m638s.f14476k = m8896a;
                    m638s.notifyAll();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: D */
    public final void m632D(AbstractC4683b abstractC4683b, int i, byte b, int i2) throws IOException {
        char c;
        C4684o[] c4684oArr;
        int i3;
        int i4;
        if (i2 != 0) {
            C4663c.m657c("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        } else if ((b & 1) != 0) {
            if (i != 0) {
                C4663c.m657c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
            Objects.requireNonNull(abstractC4683b);
        } else if (i % 6 != 0) {
            C4663c.m657c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            throw null;
        } else {
            C3248s0 c3248s0 = new C3248s0();
            for (int i5 = 0; i5 < i; i5 += 6) {
                int readShort = this.f14456a.readShort() & 65535;
                int readInt = this.f14456a.readInt();
                if (readShort == 2) {
                    i4 = readShort;
                    if (readInt == 0) {
                        continue;
                    } else if (readInt != 1) {
                        C4663c.m657c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    } else {
                        i4 = readShort;
                    }
                } else if (readShort == 3) {
                    i4 = 4;
                } else if (readShort == 4) {
                    i4 = 7;
                    if (readInt < 0) {
                        C4663c.m657c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                } else if (readShort != 5) {
                    i4 = readShort;
                } else if (readInt < 16384 || readInt > 16777215) {
                    C4663c.m657c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                    throw null;
                } else {
                    i4 = readShort;
                }
                c3248s0.m2510b(i4, readInt);
            }
            C4667f.C4673e c4673e = (C4667f.C4673e) abstractC4683b;
            synchronized (C4667f.this) {
                int m2511a = C4667f.this.f14416o.m2511a();
                C3248s0 c3248s02 = C4667f.this.f14416o;
                Objects.requireNonNull(c3248s02);
                for (int i6 = 0; i6 < 10; i6++) {
                    if (((1 << i6) & c3248s0.f10959a) != 0) {
                        c3248s02.m2510b(i6, ((int[]) c3248s0.f10960b)[i6]);
                    }
                }
                try {
                    C4667f c4667f = C4667f.this;
                    c4667f.f14409h.execute(new C4680m(c4673e, "OkHttp %s ACK Settings", new Object[]{c4667f.f14405d}, c3248s0));
                } catch (RejectedExecutionException e) {
                }
                int m2511a2 = C4667f.this.f14416o.m2511a();
                if (m2511a2 == -1 || m2511a2 == m2511a) {
                    c = 0;
                    c4684oArr = null;
                } else {
                    ?? r0 = m2511a2 - m2511a;
                    C4667f c4667f2 = C4667f.this;
                    if (!c4667f2.f14417p) {
                        c4667f2.f14417p = true;
                    }
                    c4684oArr = null;
                    c = r0;
                    if (!c4667f2.f14404c.isEmpty()) {
                        c4684oArr = (C4684o[]) C4667f.this.f14404c.values().toArray(new C4684o[C4667f.this.f14404c.size()]);
                        c = r0;
                    }
                }
                ((ThreadPoolExecutor) C4667f.f14401u).execute(new C4679l(c4673e, "OkHttp %s settings", C4667f.this.f14405d));
            }
            if (c4684oArr == null || c == 0) {
                return;
            }
            for (C4684o c4684o : c4684oArr) {
                synchronized (c4684o) {
                    c4684o.f14467b += c;
                    if (i3 > 0) {
                        c4684o.notifyAll();
                    }
                }
            }
        }
    }

    /* renamed from: J */
    public final void m631J(AbstractC4683b abstractC4683b, int i, int i2) throws IOException {
        if (i != 4) {
            C4663c.m657c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            throw null;
        }
        long readInt = this.f14456a.readInt() & 2147483647L;
        int i3 = (readInt > 0L ? 1 : (readInt == 0L ? 0 : -1));
        if (i3 == 0) {
            C4663c.m657c("windowSizeIncrement was 0", Long.valueOf(readInt));
            throw null;
        }
        C4667f.C4673e c4673e = (C4667f.C4673e) abstractC4683b;
        if (i2 == 0) {
            synchronized (C4667f.this) {
                C4667f c4667f = C4667f.this;
                c4667f.f14414m += readInt;
                c4667f.notifyAll();
            }
            return;
        }
        C4684o m642l = C4667f.this.m642l(i2);
        if (m642l == null) {
            return;
        }
        synchronized (m642l) {
            m642l.f14467b += readInt;
            if (i3 > 0) {
                m642l.notifyAll();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14456a.close();
    }

    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: k */
    public boolean m629k(boolean z, AbstractC4683b abstractC4683b) throws IOException {
        boolean z2;
        boolean z3;
        boolean m616h;
        try {
            this.f14456a.mo8810Q(9L);
            int m625r = m625r(this.f14456a);
            if (m625r < 0 || m625r > 16384) {
                C4663c.m657c("FRAME_SIZE_ERROR: %s", Integer.valueOf(m625r));
                throw null;
            }
            byte readByte = (byte) (this.f14456a.readByte() & 255);
            if (z && readByte != 4) {
                C4663c.m657c("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
                throw null;
            }
            byte readByte2 = (byte) (this.f14456a.readByte() & 255);
            int readInt = this.f14456a.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
            Logger logger = f14455e;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(C4663c.m659a(true, readInt, m625r, readByte, readByte2));
            }
            switch (readByte) {
                case 0:
                    if (readInt == 0) {
                        C4663c.m657c("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
                        throw null;
                    }
                    boolean z4 = (readByte2 & 1) != 0;
                    if ((readByte2 & 32) != 0) {
                        C4663c.m657c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                        throw null;
                    }
                    short readByte3 = (readByte2 & 8) != 0 ? (short) (this.f14456a.readByte() & 255) : (short) 0;
                    int m630d = m630d(m625r, readByte2, readByte3);
                    AbstractC0055h abstractC0055h = this.f14456a;
                    C4667f.C4673e c4673e = (C4667f.C4673e) abstractC4683b;
                    if (C4667f.this.m639r(readInt)) {
                        C4667f c4667f = C4667f.this;
                        Objects.requireNonNull(c4667f);
                        C0053f c0053f = new C0053f();
                        long j = m630d;
                        abstractC0055h.mo8810Q(j);
                        abstractC0055h.mo609f(c0053f, j);
                        if (c0053f.f120b != j) {
                            throw new IOException(c0053f.f120b + " != " + m630d);
                        }
                        c4667f.m640p(new C4676i(c4667f, "OkHttp %s Push Data[%s]", new Object[]{c4667f.f14405d, Integer.valueOf(readInt)}, readInt, c0053f, m630d, z4));
                    } else {
                        C4684o m642l = C4667f.this.m642l(readInt);
                        if (m642l == null) {
                            C4667f.this.m646J(readInt, 2);
                            C4667f c4667f2 = C4667f.this;
                            long j2 = m630d;
                            c4667f2.m648B(j2);
                            abstractC0055h.mo8804j(j2);
                        } else {
                            C4684o.C4686b c4686b = m642l.f14472g;
                            char c = m630d;
                            Objects.requireNonNull(c4686b);
                            while (true) {
                                if (c > 0) {
                                    synchronized (C4684o.this) {
                                        z2 = c4686b.f14485e;
                                        z3 = c4686b.f14482b.f120b + c > c4686b.f14483c;
                                    }
                                    if (z3) {
                                        abstractC0055h.mo8804j(c);
                                        C4684o.this.m619e(4);
                                    } else if (z2) {
                                        abstractC0055h.mo8804j(c);
                                    } else {
                                        long mo609f = abstractC0055h.mo609f(c4686b.f14481a, c);
                                        if (mo609f == -1) {
                                            throw new EOFException();
                                        }
                                        c -= mo609f;
                                        synchronized (C4684o.this) {
                                            C0053f c0053f2 = c4686b.f14482b;
                                            boolean z5 = c0053f2.f120b == 0;
                                            c0053f2.m8855W(c4686b.f14481a);
                                            if (z5) {
                                                C4684o.this.notifyAll();
                                            }
                                        }
                                    }
                                }
                            }
                            if (z4) {
                                m642l.m615i();
                            }
                        }
                    }
                    this.f14456a.mo8804j(readByte3);
                    return true;
                case 1:
                    if (readInt == 0) {
                        C4663c.m657c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                        throw null;
                    }
                    boolean z6 = (readByte2 & 1) != 0;
                    short readByte4 = (readByte2 & 8) != 0 ? (short) (this.f14456a.readByte() & 255) : (short) 0;
                    int i = m625r;
                    if ((readByte2 & 32) != 0) {
                        this.f14456a.readInt();
                        this.f14456a.readByte();
                        Objects.requireNonNull(abstractC4683b);
                        i = m625r - 5;
                    }
                    List<C4659a> m626p = m626p(m630d(i, readByte2, readByte4), readByte4, readByte2, readInt);
                    C4667f.C4673e c4673e2 = (C4667f.C4673e) abstractC4683b;
                    if (C4667f.this.m639r(readInt)) {
                        C4667f c4667f3 = C4667f.this;
                        Objects.requireNonNull(c4667f3);
                        try {
                            c4667f3.m640p(new C4675h(c4667f3, "OkHttp %s Push Headers[%s]", new Object[]{c4667f3.f14405d, Integer.valueOf(readInt)}, readInt, m626p, z6));
                            return true;
                        } catch (RejectedExecutionException e) {
                            return true;
                        }
                    }
                    synchronized (C4667f.this) {
                        C4684o m642l2 = C4667f.this.m642l(readInt);
                        if (m642l2 == null) {
                            C4667f c4667f4 = C4667f.this;
                            if (!c4667f4.f14408g) {
                                if (readInt > c4667f4.f14406e) {
                                    if (readInt % 2 != c4667f4.f14407f % 2) {
                                        C4684o c4684o = new C4684o(readInt, C4667f.this, false, z6, C4171c.m1313w(m626p));
                                        C4667f c4667f5 = C4667f.this;
                                        c4667f5.f14406e = readInt;
                                        c4667f5.f14404c.put(Integer.valueOf(readInt), c4684o);
                                        ((ThreadPoolExecutor) C4667f.f14401u).execute(new C4678k(c4673e2, "OkHttp %s stream %d", new Object[]{C4667f.this.f14405d, Integer.valueOf(readInt)}, c4684o));
                                    }
                                }
                            }
                        } else {
                            synchronized (m642l2) {
                                m642l2.f14471f = true;
                                m642l2.f14470e.add(C4171c.m1313w(m626p));
                                m616h = m642l2.m616h();
                                m642l2.notifyAll();
                            }
                            if (!m616h) {
                                m642l2.f14469d.m638s(m642l2.f14468c);
                            }
                            if (z6) {
                                m642l2.m615i();
                            }
                        }
                    }
                    return true;
                case 2:
                    if (m625r != 5) {
                        C4663c.m657c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(m625r));
                        throw null;
                    } else if (readInt == 0) {
                        C4663c.m657c("TYPE_PRIORITY streamId == 0", new Object[0]);
                        throw null;
                    } else {
                        this.f14456a.readInt();
                        this.f14456a.readByte();
                        Objects.requireNonNull(abstractC4683b);
                        return true;
                    }
                case 3:
                    m633B(abstractC4683b, m625r, readInt);
                    return true;
                case 4:
                    m632D(abstractC4683b, m625r, readByte2, readInt);
                    return true;
                case 5:
                    m634A(abstractC4683b, m625r, readByte2, readInt);
                    return true;
                case 6:
                    m624s(abstractC4683b, m625r, readByte2, readInt);
                    return true;
                case 7:
                    m627o(abstractC4683b, m625r, readInt);
                    return true;
                case 8:
                    m631J(abstractC4683b, m625r, readInt);
                    return true;
                default:
                    this.f14456a.mo8804j(m625r);
                    return true;
            }
        } catch (IOException e2) {
            return false;
        }
    }

    /* renamed from: l */
    public void m628l(AbstractC4683b abstractC4683b) throws IOException {
        if (this.f14458c) {
            if (m629k(true, abstractC4683b)) {
                return;
            }
            C4663c.m657c("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        AbstractC0055h abstractC0055h = this.f14456a;
        C0056i c0056i = C4663c.f14384a;
        C0056i mo8805i = abstractC0055h.mo8805i(c0056i.f123a.length);
        Logger logger = f14455e;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(C4171c.m1324l("<< CONNECTION %s", mo8805i.mo8788h()));
        }
        if (c0056i.equals(mo8805i)) {
            return;
        }
        C4663c.m657c("Expected a connection header but was %s", mo8805i.mo8782o());
        throw null;
    }

    /* renamed from: o */
    public final void m627o(AbstractC4683b abstractC4683b, int i, int i2) throws IOException {
        C4684o[] c4684oArr;
        if (i < 8) {
            C4663c.m657c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            C4663c.m657c("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        } else {
            int readInt = this.f14456a.readInt();
            int readInt2 = this.f14456a.readInt();
            int i3 = i - 8;
            if (C0033h.m8896a(readInt2) == 0) {
                C4663c.m657c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
                throw null;
            }
            C0056i c0056i = C0056i.f122e;
            if (i3 > 0) {
                c0056i = this.f14456a.mo8805i(i3);
            }
            C4667f.C4673e c4673e = (C4667f.C4673e) abstractC4683b;
            Objects.requireNonNull(c4673e);
            c0056i.mo8785l();
            synchronized (C4667f.this) {
                c4684oArr = (C4684o[]) C4667f.this.f14404c.values().toArray(new C4684o[C4667f.this.f14404c.size()]);
                C4667f.this.f14408g = true;
            }
            for (C4684o c4684o : c4684oArr) {
                if (c4684o.f14468c > readInt && c4684o.m617g()) {
                    synchronized (c4684o) {
                        if (c4684o.f14476k == 0) {
                            c4684o.f14476k = 5;
                            c4684o.notifyAll();
                        }
                    }
                    C4667f.this.m638s(c4684o.f14468c);
                }
            }
        }
    }

    /* renamed from: p */
    public final List<C4659a> m626p(int i, short s, byte b, int i2) throws IOException {
        C4682a c4682a = this.f14457b;
        c4682a.f14464e = i;
        c4682a.f14461b = i;
        c4682a.f14465f = s;
        c4682a.f14462c = b;
        c4682a.f14463d = i2;
        C4660b.C4661a c4661a = this.f14459d;
        while (!c4661a.f14369b.mo8798v()) {
            int readByte = c4661a.f14369b.readByte() & 255;
            if (readByte == 128) {
                throw new IOException("index == 0");
            }
            if ((readByte & 128) == 128) {
                int m666g = c4661a.m666g(readByte, 127) - 1;
                if (!(m666g >= 0 && m666g <= C4660b.f14366a.length - 1)) {
                    int m671b = c4661a.m671b(m666g - C4660b.f14366a.length);
                    if (m671b >= 0) {
                        C4659a[] c4659aArr = c4661a.f14372e;
                        if (m671b < c4659aArr.length) {
                            c4661a.f14368a.add(c4659aArr[m671b]);
                        }
                    }
                    StringBuilder m8752j = C0082b.m8752j("Header index too large ");
                    m8752j.append(m666g + 1);
                    throw new IOException(m8752j.toString());
                }
                c4661a.f14368a.add(C4660b.f14366a[m666g]);
            } else if (readByte == 64) {
                C0056i m667f = c4661a.m667f();
                C4660b.m673a(m667f);
                c4661a.m668e(-1, new C4659a(m667f, c4661a.m667f()));
            } else if ((readByte & 64) == 64) {
                c4661a.m668e(-1, new C4659a(c4661a.m669d(c4661a.m666g(readByte, 63) - 1), c4661a.m667f()));
            } else if ((readByte & 32) == 32) {
                int m666g2 = c4661a.m666g(readByte, 31);
                c4661a.f14371d = m666g2;
                if (m666g2 < 0 || m666g2 > c4661a.f14370c) {
                    StringBuilder m8752j2 = C0082b.m8752j("Invalid dynamic table size update ");
                    m8752j2.append(c4661a.f14371d);
                    throw new IOException(m8752j2.toString());
                }
                int i3 = c4661a.f14375h;
                if (m666g2 < i3) {
                    if (m666g2 == 0) {
                        c4661a.m672a();
                    } else {
                        c4661a.m670c(i3 - m666g2);
                    }
                }
            } else if (readByte == 16 || readByte == 0) {
                C0056i m667f2 = c4661a.m667f();
                C4660b.m673a(m667f2);
                c4661a.f14368a.add(new C4659a(m667f2, c4661a.m667f()));
            } else {
                c4661a.f14368a.add(new C4659a(c4661a.m669d(c4661a.m666g(readByte, 15) - 1), c4661a.m667f()));
            }
        }
        C4660b.C4661a c4661a2 = this.f14459d;
        Objects.requireNonNull(c4661a2);
        ArrayList arrayList = new ArrayList(c4661a2.f14368a);
        c4661a2.f14368a.clear();
        return arrayList;
    }

    /* renamed from: s */
    public final void m624s(AbstractC4683b abstractC4683b, int i, byte b, int i2) throws IOException {
        if (i != 8) {
            C4663c.m657c("TYPE_PING length != 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            C4663c.m657c("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        } else {
            int readInt = this.f14456a.readInt();
            int readInt2 = this.f14456a.readInt();
            boolean z = (b & 1) != 0;
            C4667f.C4673e c4673e = (C4667f.C4673e) abstractC4683b;
            Objects.requireNonNull(c4673e);
            if (!z) {
                try {
                    C4667f c4667f = C4667f.this;
                    c4667f.f14409h.execute(new C4667f.C4672d(true, readInt, readInt2));
                    return;
                } catch (RejectedExecutionException e) {
                    return;
                }
            }
            synchronized (C4667f.this) {
                C4667f c4667f2 = C4667f.this;
                c4667f2.f14412k = false;
                c4667f2.notifyAll();
            }
        }
    }
}
