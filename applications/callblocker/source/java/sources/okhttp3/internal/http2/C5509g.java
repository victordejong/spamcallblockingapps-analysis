package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.C5449c;
import okhttp3.internal.http2.C5488c;
import p000a.AbstractC0007e;
import p000a.AbstractC0024s;
import p000a.C0005c;
import p000a.C0008f;
import p000a.C0025t;
/* renamed from: okhttp3.internal.http2.g */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/g.class */
public final class C5509g implements Closeable {

    /* renamed from: a */
    static final Logger f23009a = Logger.getLogger(C5491d.class.getName());

    /* renamed from: b */
    final C5488c.C5489a f23010b;

    /* renamed from: c */
    private final AbstractC0007e f23011c;

    /* renamed from: d */
    private final C5510a f23012d;

    /* renamed from: e */
    private final boolean f23013e;

    /* renamed from: okhttp3.internal.http2.g$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/g$a.class */
    public static final class C5510a implements AbstractC0024s {

        /* renamed from: a */
        int f23014a;

        /* renamed from: b */
        byte f23015b;

        /* renamed from: c */
        int f23016c;

        /* renamed from: d */
        int f23017d;

        /* renamed from: e */
        short f23018e;

        /* renamed from: f */
        private final AbstractC0007e f23019f;

        C5510a(AbstractC0007e abstractC0007e) {
            this.f23019f = abstractC0007e;
        }

        /* renamed from: b */
        private void m438b() {
            int i = this.f23016c;
            int m451a = C5509g.m451a(this.f23019f);
            this.f23017d = m451a;
            this.f23014a = m451a;
            byte mo22491g = (byte) (this.f23019f.mo22491g() & 255);
            this.f23015b = (byte) (this.f23019f.mo22491g() & 255);
            if (C5509g.f23009a.isLoggable(Level.FINE)) {
                C5509g.f23009a.fine(C5491d.m499a(true, this.f23016c, this.f23014a, mo22491g, this.f23015b));
            }
            this.f23016c = this.f23019f.mo22487i() & Integer.MAX_VALUE;
            if (mo22491g != 9) {
                throw C5491d.m498b("%s != TYPE_CONTINUATION", Byte.valueOf(mo22491g));
            }
            if (this.f23016c == i) {
                return;
            }
            throw C5491d.m498b("TYPE_CONTINUATION streamId changed", new Object[0]);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        @Override // p000a.AbstractC0024s
        /* renamed from: a */
        public long mo90a(C0005c c0005c, long j) {
            char c;
            while (true) {
                if (this.f23017d == 0) {
                    this.f23019f.mo22488h(this.f23018e);
                    this.f23018e = (short) 0;
                    if ((this.f23015b & 4) != 0) {
                        c = 65535;
                        break;
                    }
                    m438b();
                } else {
                    ?? a = this.f23019f.mo90a(c0005c, Math.min(j, this.f23017d));
                    c = 65535;
                    if (a != -1) {
                        this.f23017d = (int) (this.f23017d - a);
                        c = a;
                    }
                }
            }
            return c;
        }

        @Override // p000a.AbstractC0024s
        /* renamed from: a */
        public C0025t mo405a() {
            return this.f23019f.mo405a();
        }

        @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    /* renamed from: okhttp3.internal.http2.g$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/g$b.class */
    public interface AbstractC5511b {
        /* renamed from: a */
        void mo437a();

        /* renamed from: a */
        void mo436a(int i, int i2, int i3, boolean z);

        /* renamed from: a */
        void mo435a(int i, int i2, List<C5487b> list);

        /* renamed from: a */
        void mo434a(int i, long j);

        /* renamed from: a */
        void mo433a(int i, EnumC5486a enumC5486a);

        /* renamed from: a */
        void mo432a(int i, EnumC5486a enumC5486a, C0008f c0008f);

        /* renamed from: a */
        void mo431a(boolean z, int i, int i2);

        /* renamed from: a */
        void mo430a(boolean z, int i, int i2, List<C5487b> list);

        /* renamed from: a */
        void mo429a(boolean z, int i, AbstractC0007e abstractC0007e, int i2);

        /* renamed from: a */
        void mo428a(boolean z, C5521l c5521l);
    }

    public C5509g(AbstractC0007e abstractC0007e, boolean z) {
        this.f23011c = abstractC0007e;
        this.f23013e = z;
        this.f23012d = new C5510a(this.f23011c);
        this.f23010b = new C5488c.C5489a(4096, this.f23012d);
    }

    /* renamed from: a */
    static int m453a(int i, byte b, short s) {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s > i2) {
            throw C5491d.m498b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        }
        return (short) (i2 - s);
    }

    /* renamed from: a */
    static int m451a(AbstractC0007e abstractC0007e) {
        return ((abstractC0007e.mo22491g() & 255) << 16) | ((abstractC0007e.mo22491g() & 255) << 8) | (abstractC0007e.mo22491g() & 255);
    }

    /* renamed from: a */
    private List<C5487b> m452a(int i, short s, byte b, int i2) {
        C5510a c5510a = this.f23012d;
        this.f23012d.f23017d = i;
        c5510a.f23014a = i;
        this.f23012d.f23018e = s;
        this.f23012d.f23015b = b;
        this.f23012d.f23016c = i2;
        this.f23010b.m526a();
        return this.f23010b.m522b();
    }

    /* renamed from: a */
    private void m449a(AbstractC5511b abstractC5511b, int i) {
        int mo22487i = this.f23011c.mo22487i();
        abstractC5511b.mo436a(i, mo22487i & Integer.MAX_VALUE, (this.f23011c.mo22491g() & 255) + 1, (Integer.MIN_VALUE & mo22487i) != 0);
    }

    /* renamed from: a */
    private void m448a(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i2 == 0) {
            throw C5491d.m498b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b & 1) != 0;
        short s = 0;
        if ((b & 8) != 0) {
            s = (short) (this.f23011c.mo22491g() & 255);
        }
        int i3 = i;
        if ((b & 32) != 0) {
            m449a(abstractC5511b, i2);
            i3 = i - 5;
        }
        abstractC5511b.mo430a(z, i2, -1, m452a(m453a(i3, b, s), s, b, i2));
    }

    /* renamed from: b */
    private void m446b(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        boolean z = true;
        if (i2 == 0) {
            throw C5491d.m498b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z2 = (b & 1) != 0;
        if ((b & 32) == 0) {
            z = false;
        }
        if (z) {
            throw C5491d.m498b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short s = 0;
        if ((b & 8) != 0) {
            s = (short) (this.f23011c.mo22491g() & 255);
        }
        abstractC5511b.mo429a(z2, i2, this.f23011c, m453a(i, b, s));
        this.f23011c.mo22488h(s);
    }

    /* renamed from: c */
    private void m445c(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i != 5) {
            throw C5491d.m498b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw C5491d.m498b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        m449a(abstractC5511b, i2);
    }

    /* renamed from: d */
    private void m444d(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i != 4) {
            throw C5491d.m498b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw C5491d.m498b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int mo22487i = this.f23011c.mo22487i();
        EnumC5486a m529a = EnumC5486a.m529a(mo22487i);
        if (m529a == null) {
            throw C5491d.m498b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(mo22487i));
        }
        abstractC5511b.mo433a(i2, m529a);
    }

    /* renamed from: e */
    private void m443e(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i2 != 0) {
            throw C5491d.m498b("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b & 1) != 0) {
            if (i != 0) {
                throw C5491d.m498b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            abstractC5511b.mo437a();
        } else if (i % 6 != 0) {
            throw C5491d.m498b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        } else {
            C5521l c5521l = new C5521l();
            for (int i3 = 0; i3 < i; i3 += 6) {
                int mo22489h = this.f23011c.mo22489h() & 65535;
                int mo22487i = this.f23011c.mo22487i();
                int i4 = mo22489h;
                switch (mo22489h) {
                    case 1:
                    case 6:
                        break;
                    case 2:
                        i4 = mo22489h;
                        if (mo22487i != 0) {
                            i4 = mo22489h;
                            if (mo22487i != 1) {
                                throw C5491d.m498b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                            }
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i4 = 4;
                        break;
                    case 4:
                        i4 = 7;
                        if (mo22487i < 0) {
                            throw C5491d.m498b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                        break;
                    case 5:
                        if (mo22487i >= 16384) {
                            i4 = mo22489h;
                            if (mo22487i <= 16777215) {
                                break;
                            }
                        }
                        throw C5491d.m498b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(mo22487i));
                    default:
                        i4 = mo22489h;
                        break;
                }
                c5521l.m369a(i4, mo22487i);
            }
            abstractC5511b.mo428a(false, c5521l);
        }
    }

    /* renamed from: f */
    private void m442f(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i2 == 0) {
            throw C5491d.m498b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s = 0;
        if ((b & 8) != 0) {
            s = (short) (this.f23011c.mo22491g() & 255);
        }
        abstractC5511b.mo435a(i2, this.f23011c.mo22487i() & Integer.MAX_VALUE, m452a(m453a(i - 4, b, s), s, b, i2));
    }

    /* renamed from: g */
    private void m441g(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        boolean z = true;
        if (i != 8) {
            throw C5491d.m498b("TYPE_PING length != 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw C5491d.m498b("TYPE_PING streamId != 0", new Object[0]);
        }
        int mo22487i = this.f23011c.mo22487i();
        int mo22487i2 = this.f23011c.mo22487i();
        if ((b & 1) == 0) {
            z = false;
        }
        abstractC5511b.mo431a(z, mo22487i, mo22487i2);
    }

    /* renamed from: h */
    private void m440h(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i < 8) {
            throw C5491d.m498b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw C5491d.m498b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int mo22487i = this.f23011c.mo22487i();
        int mo22487i2 = this.f23011c.mo22487i();
        int i3 = i - 8;
        EnumC5486a m529a = EnumC5486a.m529a(mo22487i2);
        if (m529a == null) {
            throw C5491d.m498b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(mo22487i2));
        }
        C0008f c0008f = C0008f.f16b;
        if (i3 > 0) {
            c0008f = this.f23011c.mo22494c(i3);
        }
        abstractC5511b.mo432a(mo22487i, m529a, c0008f);
    }

    /* renamed from: i */
    private void m439i(AbstractC5511b abstractC5511b, int i, byte b, int i2) {
        if (i != 4) {
            throw C5491d.m498b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long mo22487i = this.f23011c.mo22487i() & 2147483647L;
        if (mo22487i == 0) {
            throw C5491d.m498b("windowSizeIncrement was 0", Long.valueOf(mo22487i));
        }
        abstractC5511b.mo434a(i2, mo22487i);
    }

    /* renamed from: a */
    public void m450a(AbstractC5511b abstractC5511b) {
        if (this.f23013e) {
            if (m447a(true, abstractC5511b)) {
                return;
            }
            throw C5491d.m498b("Required SETTINGS preface not received", new Object[0]);
        }
        C0008f mo22494c = this.f23011c.mo22494c(C5491d.f22924a.mo22462g());
        if (f23009a.isLoggable(Level.FINE)) {
            f23009a.fine(C5449c.m662a("<< CONNECTION %s", mo22494c.mo22464e()));
        }
        if (C5491d.f22924a.equals(mo22494c)) {
            return;
        }
        throw C5491d.m498b("Expected a connection header but was %s", mo22494c.mo22474a());
    }

    /* renamed from: a */
    public boolean m447a(boolean z, AbstractC5511b abstractC5511b) {
        boolean z2;
        int m451a;
        try {
            this.f23011c.mo22502a(9L);
            m451a = m451a(this.f23011c);
        } catch (IOException e) {
            z2 = false;
        }
        if (m451a < 0 || m451a > 16384) {
            throw C5491d.m498b("FRAME_SIZE_ERROR: %s", Integer.valueOf(m451a));
        }
        byte mo22491g = (byte) (this.f23011c.mo22491g() & 255);
        if (z && mo22491g != 4) {
            throw C5491d.m498b("Expected a SETTINGS frame but was %s", Byte.valueOf(mo22491g));
        }
        byte mo22491g2 = (byte) (this.f23011c.mo22491g() & 255);
        int mo22487i = this.f23011c.mo22487i() & Integer.MAX_VALUE;
        if (f23009a.isLoggable(Level.FINE)) {
            f23009a.fine(C5491d.m499a(true, mo22487i, m451a, mo22491g, mo22491g2));
        }
        switch (mo22491g) {
            case 0:
                m446b(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 1:
                m448a(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 2:
                m445c(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 3:
                m444d(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 4:
                m443e(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 5:
                m442f(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 6:
                m441g(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 7:
                m440h(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            case 8:
                m439i(abstractC5511b, m451a, mo22491g2, mo22487i);
                z2 = true;
                break;
            default:
                this.f23011c.mo22488h(m451a);
                z2 = true;
                break;
        }
        return z2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f23011c.close();
    }
}
