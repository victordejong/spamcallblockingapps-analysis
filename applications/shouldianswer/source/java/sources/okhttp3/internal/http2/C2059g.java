package okhttp3.internal.http2;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.C1999c;
import okhttp3.internal.http2.C2038c;
import p000a.AbstractC0008e;
import p000a.AbstractC0026s;
import p000a.C0005c;
import p000a.C0009f;
import p000a.C0027t;
/* renamed from: okhttp3.internal.http2.g */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/g.class */
public final class C2059g implements Closeable {

    /* renamed from: a */
    static final Logger f5235a = Logger.getLogger(C2041d.class.getName());

    /* renamed from: b */
    final C2038c.C2039a f5236b;

    /* renamed from: c */
    private final AbstractC0008e f5237c;

    /* renamed from: d */
    private final C2060a f5238d;

    /* renamed from: e */
    private final boolean f5239e;

    /* renamed from: okhttp3.internal.http2.g$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/g$a.class */
    public static final class C2060a implements AbstractC0026s {

        /* renamed from: a */
        int f5240a;

        /* renamed from: b */
        byte f5241b;

        /* renamed from: c */
        int f5242c;

        /* renamed from: d */
        int f5243d;

        /* renamed from: e */
        short f5244e;

        /* renamed from: f */
        private final AbstractC0008e f5245f;

        C2060a(AbstractC0008e abstractC0008e) {
            this.f5245f = abstractC0008e;
        }

        /* renamed from: b */
        private void m2121b() {
            int i = this.f5242c;
            int m2134a = C2059g.m2134a(this.f5245f);
            this.f5243d = m2134a;
            this.f5240a = m2134a;
            byte mo8066h = (byte) (this.f5245f.mo8066h() & 255);
            this.f5241b = (byte) (this.f5245f.mo8066h() & 255);
            if (C2059g.f5235a.isLoggable(Level.FINE)) {
                C2059g.f5235a.fine(C2041d.m2181a(true, this.f5242c, this.f5240a, mo8066h, this.f5241b));
            }
            this.f5242c = this.f5245f.mo8063j() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
            if (mo8066h == 9) {
                if (this.f5242c != i) {
                    throw C2041d.m2180b("TYPE_CONTINUATION streamId changed", new Object[0]);
                }
                return;
            }
            throw C2041d.m2180b("%s != TYPE_CONTINUATION", Byte.valueOf(mo8066h));
        }

        @Override // p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            while (true) {
                int i = this.f5243d;
                if (i != 0) {
                    long a = this.f5245f.mo2087a(c0005c, Math.min(j, i));
                    if (a == -1) {
                        return -1L;
                    }
                    this.f5243d = (int) (this.f5243d - a);
                    return a;
                }
                this.f5245f.mo8065h(this.f5244e);
                this.f5244e = (short) 0;
                if ((this.f5241b & 4) != 0) {
                    return -1L;
                }
                m2121b();
            }
        }

        @Override // p000a.AbstractC0026s
        /* renamed from: a */
        public C0027t mo2088a() {
            return this.f5245f.mo2088a();
        }

        @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    /* renamed from: okhttp3.internal.http2.g$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/g$b.class */
    public interface AbstractC2061b {
        /* renamed from: a */
        void mo2120a();

        /* renamed from: a */
        void mo2119a(int i, int i2, int i3, boolean z);

        /* renamed from: a */
        void mo2118a(int i, int i2, List<C2037b> list);

        /* renamed from: a */
        void mo2117a(int i, long j);

        /* renamed from: a */
        void mo2116a(int i, EnumC2036a enumC2036a);

        /* renamed from: a */
        void mo2115a(int i, EnumC2036a enumC2036a, C0009f c0009f);

        /* renamed from: a */
        void mo2114a(boolean z, int i, int i2);

        /* renamed from: a */
        void mo2113a(boolean z, int i, int i2, List<C2037b> list);

        /* renamed from: a */
        void mo2112a(boolean z, int i, AbstractC0008e abstractC0008e, int i2);

        /* renamed from: a */
        void mo2111a(boolean z, C2071l c2071l);
    }

    public C2059g(AbstractC0008e abstractC0008e, boolean z) {
        this.f5237c = abstractC0008e;
        this.f5239e = z;
        this.f5238d = new C2060a(this.f5237c);
        this.f5236b = new C2038c.C2039a(CodedOutputStream.DEFAULT_BUFFER_SIZE, this.f5238d);
    }

    /* renamed from: a */
    static int m2136a(int i, byte b, short s) {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        throw C2041d.m2180b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
    }

    /* renamed from: a */
    static int m2134a(AbstractC0008e abstractC0008e) {
        return (abstractC0008e.mo8066h() & 255) | ((abstractC0008e.mo8066h() & 255) << 16) | ((abstractC0008e.mo8066h() & 255) << 8);
    }

    /* renamed from: a */
    private List<C2037b> m2135a(int i, short s, byte b, int i2) {
        C2060a c2060a = this.f5238d;
        c2060a.f5243d = i;
        c2060a.f5240a = i;
        c2060a.f5244e = s;
        c2060a.f5241b = b;
        c2060a.f5242c = i2;
        this.f5236b.m2208a();
        return this.f5236b.m2204b();
    }

    /* renamed from: a */
    private void m2132a(AbstractC2061b abstractC2061b, int i) {
        int mo8063j = this.f5237c.mo8063j();
        abstractC2061b.mo2119a(i, mo8063j & Api.BaseClientBuilder.API_PRIORITY_OTHER, (this.f5237c.mo8066h() & 255) + 1, (Integer.MIN_VALUE & mo8063j) != 0);
    }

    /* renamed from: a */
    private void m2131a(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i2 != 0) {
            boolean z = (b & 1) != 0;
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.f5237c.mo8066h() & 255);
            }
            int i3 = i;
            if ((b & 32) != 0) {
                m2132a(abstractC2061b, i2);
                i3 = i - 5;
            }
            abstractC2061b.mo2113a(z, i2, -1, m2135a(m2136a(i3, b, s), s, b, i2));
            return;
        }
        throw C2041d.m2180b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    /* renamed from: b */
    private void m2129b(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i2 != 0) {
            boolean z = true;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (z) {
                throw C2041d.m2180b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.f5237c.mo8066h() & 255);
            }
            abstractC2061b.mo2112a(z2, i2, this.f5237c, m2136a(i, b, s));
            this.f5237c.mo8065h(s);
            return;
        }
        throw C2041d.m2180b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
    }

    /* renamed from: c */
    private void m2128c(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i == 5) {
            if (i2 == 0) {
                throw C2041d.m2180b("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            m2132a(abstractC2061b, i2);
            return;
        }
        throw C2041d.m2180b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
    }

    /* renamed from: d */
    private void m2127d(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i == 4) {
            if (i2 == 0) {
                throw C2041d.m2180b("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int mo8063j = this.f5237c.mo8063j();
            EnumC2036a m2211a = EnumC2036a.m2211a(mo8063j);
            if (m2211a == null) {
                throw C2041d.m2180b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(mo8063j));
            }
            abstractC2061b.mo2116a(i2, m2211a);
            return;
        }
        throw C2041d.m2180b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
    }

    /* renamed from: e */
    private void m2126e(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i2 == 0) {
            if ((b & 1) != 0) {
                if (i != 0) {
                    throw C2041d.m2180b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                abstractC2061b.mo2120a();
                return;
            } else if (i % 6 != 0) {
                throw C2041d.m2180b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            } else {
                C2071l c2071l = new C2071l();
                for (int i3 = 0; i3 < i; i3 += 6) {
                    int mo8064i = this.f5237c.mo8064i() & 65535;
                    int mo8063j = this.f5237c.mo8063j();
                    int i4 = mo8064i;
                    switch (mo8064i) {
                        case 1:
                        case 6:
                            break;
                        case 2:
                            i4 = mo8064i;
                            if (mo8063j != 0) {
                                if (mo8063j == 1) {
                                    i4 = mo8064i;
                                    break;
                                } else {
                                    throw C2041d.m2180b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                }
                            } else {
                                continue;
                            }
                        case 3:
                            i4 = 4;
                            break;
                        case 4:
                            i4 = 7;
                            if (mo8063j < 0) {
                                throw C2041d.m2180b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            }
                            break;
                        case 5:
                            if (mo8063j < 16384 || mo8063j > 16777215) {
                                throw C2041d.m2180b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(mo8063j));
                            }
                            i4 = mo8064i;
                            break;
                        default:
                            i4 = mo8064i;
                            break;
                    }
                    c2071l.m2051a(i4, mo8063j);
                }
                abstractC2061b.mo2111a(false, c2071l);
                return;
            }
        }
        throw C2041d.m2180b("TYPE_SETTINGS streamId != 0", new Object[0]);
    }

    /* renamed from: f */
    private void m2125f(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i2 != 0) {
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.f5237c.mo8066h() & 255);
            }
            abstractC2061b.mo2118a(i2, this.f5237c.mo8063j() & Api.BaseClientBuilder.API_PRIORITY_OTHER, m2135a(m2136a(i - 4, b, s), s, b, i2));
            return;
        }
        throw C2041d.m2180b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }

    /* renamed from: g */
    private void m2124g(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        boolean z = false;
        if (i == 8) {
            if (i2 != 0) {
                throw C2041d.m2180b("TYPE_PING streamId != 0", new Object[0]);
            }
            int mo8063j = this.f5237c.mo8063j();
            int mo8063j2 = this.f5237c.mo8063j();
            if ((b & 1) != 0) {
                z = true;
            }
            abstractC2061b.mo2114a(z, mo8063j, mo8063j2);
            return;
        }
        throw C2041d.m2180b("TYPE_PING length != 8: %s", Integer.valueOf(i));
    }

    /* renamed from: h */
    private void m2123h(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i >= 8) {
            if (i2 != 0) {
                throw C2041d.m2180b("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int mo8063j = this.f5237c.mo8063j();
            int mo8063j2 = this.f5237c.mo8063j();
            int i3 = i - 8;
            EnumC2036a m2211a = EnumC2036a.m2211a(mo8063j2);
            if (m2211a == null) {
                throw C2041d.m2180b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(mo8063j2));
            }
            C0009f c0009f = C0009f.f17b;
            if (i3 > 0) {
                c0009f = this.f5237c.mo8071c(i3);
            }
            abstractC2061b.mo2115a(mo8063j, m2211a, c0009f);
            return;
        }
        throw C2041d.m2180b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
    }

    /* renamed from: i */
    private void m2122i(AbstractC2061b abstractC2061b, int i, byte b, int i2) {
        if (i == 4) {
            long mo8063j = this.f5237c.mo8063j() & 2147483647L;
            if (mo8063j == 0) {
                throw C2041d.m2180b("windowSizeIncrement was 0", Long.valueOf(mo8063j));
            }
            abstractC2061b.mo2117a(i2, mo8063j);
            return;
        }
        throw C2041d.m2180b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m2133a(AbstractC2061b abstractC2061b) {
        if (this.f5239e) {
            if (!m2130a(true, abstractC2061b)) {
                throw C2041d.m2180b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        C0009f mo8071c = this.f5237c.mo8071c(C2041d.f5150a.mo8038g());
        if (f5235a.isLoggable(Level.FINE)) {
            f5235a.fine(C1999c.m2342a("<< CONNECTION %s", mo8071c.mo8040e()));
        }
        if (!C2041d.f5150a.equals(mo8071c)) {
            throw C2041d.m2180b("Expected a connection header but was %s", mo8071c.mo8050a());
        }
    }

    /* renamed from: a */
    public boolean m2130a(boolean z, AbstractC2061b abstractC2061b) {
        try {
            this.f5237c.mo8078a(9L);
            int m2134a = m2134a(this.f5237c);
            if (m2134a < 0 || m2134a > 16384) {
                throw C2041d.m2180b("FRAME_SIZE_ERROR: %s", Integer.valueOf(m2134a));
            }
            byte mo8066h = (byte) (this.f5237c.mo8066h() & 255);
            if (z && mo8066h != 4) {
                throw C2041d.m2180b("Expected a SETTINGS frame but was %s", Byte.valueOf(mo8066h));
            }
            byte mo8066h2 = (byte) (this.f5237c.mo8066h() & 255);
            int mo8063j = this.f5237c.mo8063j() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
            if (f5235a.isLoggable(Level.FINE)) {
                f5235a.fine(C2041d.m2181a(true, mo8063j, m2134a, mo8066h, mo8066h2));
            }
            switch (mo8066h) {
                case 0:
                    m2129b(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 1:
                    m2131a(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 2:
                    m2128c(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 3:
                    m2127d(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 4:
                    m2126e(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 5:
                    m2125f(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 6:
                    m2124g(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 7:
                    m2123h(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                case 8:
                    m2122i(abstractC2061b, m2134a, mo8066h2, mo8063j);
                    return true;
                default:
                    this.f5237c.mo8065h(m2134a);
                    return true;
            }
        } catch (IOException e) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5237c.close();
    }
}
