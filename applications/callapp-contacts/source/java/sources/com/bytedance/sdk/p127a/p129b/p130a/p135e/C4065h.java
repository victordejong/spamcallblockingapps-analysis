package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p128a.C3991t;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4044d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.bytedance.sdk.a.b.a.e.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/h.class */
public final class C4065h implements Closeable {

    /* renamed from: a */
    static final Logger f14771a = Logger.getLogger(C4047e.class.getName());

    /* renamed from: b */
    final C4044d.C4045a f14772b;

    /* renamed from: c */
    private final AbstractC3972e f14773c;

    /* renamed from: d */
    private final C4066a f14774d;

    /* renamed from: e */
    private final boolean f14775e;

    /* renamed from: com.bytedance.sdk.a.b.a.e.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/h$a.class */
    public static final class C4066a implements AbstractC3990s {

        /* renamed from: a */
        int f14776a;

        /* renamed from: b */
        byte f14777b;

        /* renamed from: c */
        int f14778c;

        /* renamed from: d */
        int f14779d;

        /* renamed from: e */
        short f14780e;

        /* renamed from: f */
        private final AbstractC3972e f14781f;

        C4066a(AbstractC3972e abstractC3972e) {
            this.f14781f = abstractC3972e;
        }

        /* renamed from: b */
        private void m36753b() throws IOException {
            int i = this.f14778c;
            int m36766a = C4065h.m36766a(this.f14781f);
            this.f14779d = m36766a;
            this.f14776a = m36766a;
            byte mo37054h = (byte) (this.f14781f.mo37054h() & 255);
            this.f14777b = (byte) (this.f14781f.mo37054h() & 255);
            if (C4065h.f14771a.isLoggable(Level.FINE)) {
                C4065h.f14771a.fine(C4047e.m36809a(true, this.f14778c, this.f14776a, mo37054h, this.f14777b));
            }
            int mo37051j = this.f14781f.mo37051j() & Integer.MAX_VALUE;
            this.f14778c = mo37051j;
            if (mo37054h == 9) {
                if (mo37051j != i) {
                    throw C4047e.m36808b("TYPE_CONTINUATION streamId changed", new Object[0]);
                }
                return;
            }
            throw C4047e.m36808b("%s != TYPE_CONTINUATION", Byte.valueOf(mo37054h));
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public final long mo36719a(C3969c c3969c, long j) throws IOException {
            while (true) {
                int i = this.f14779d;
                if (i != 0) {
                    long a = this.f14781f.mo36719a(c3969c, Math.min(j, i));
                    if (a == -1) {
                        return -1L;
                    }
                    this.f14779d = (int) (this.f14779d - a);
                    return a;
                }
                this.f14781f.mo37053h(this.f14780e);
                this.f14780e = (short) 0;
                if ((this.f14777b & 4) != 0) {
                    return -1L;
                }
                m36753b();
            }
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public final C3991t mo36720a() {
            return this.f14781f.mo36720a();
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.e.h$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/h$b.class */
    public interface AbstractC4067b {
        /* renamed from: a */
        void mo36752a();

        /* renamed from: a */
        void mo36751a(int i, int i2, int i3, boolean z);

        /* renamed from: a */
        void mo36750a(int i, int i2, List<C4043c> list) throws IOException;

        /* renamed from: a */
        void mo36749a(int i, long j);

        /* renamed from: a */
        void mo36748a(int i, EnumC4042b enumC4042b);

        /* renamed from: a */
        void mo36747a(int i, EnumC4042b enumC4042b, C3973f c3973f);

        /* renamed from: a */
        void mo36746a(boolean z, int i, int i2);

        /* renamed from: a */
        void mo36745a(boolean z, int i, int i2, List<C4043c> list);

        /* renamed from: a */
        void mo36744a(boolean z, int i, AbstractC3972e abstractC3972e, int i2) throws IOException;

        /* renamed from: a */
        void mo36743a(boolean z, C4078n c4078n);
    }

    public C4065h(AbstractC3972e abstractC3972e, boolean z) {
        this.f14773c = abstractC3972e;
        this.f14775e = z;
        C4066a c4066a = new C4066a(abstractC3972e);
        this.f14774d = c4066a;
        this.f14772b = new C4044d.C4045a(4096, c4066a);
    }

    /* renamed from: a */
    static int m36768a(int i, byte b, short s) throws IOException {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        throw C4047e.m36808b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
    }

    /* renamed from: a */
    static int m36766a(AbstractC3972e abstractC3972e) throws IOException {
        return (abstractC3972e.mo37054h() & 255) | ((abstractC3972e.mo37054h() & 255) << 16) | ((abstractC3972e.mo37054h() & 255) << 8);
    }

    /* renamed from: a */
    private List<C4043c> m36767a(int i, short s, byte b, int i2) throws IOException {
        C4066a c4066a = this.f14774d;
        c4066a.f14779d = i;
        c4066a.f14776a = i;
        this.f14774d.f14780e = s;
        this.f14774d.f14777b = b;
        this.f14774d.f14778c = i2;
        this.f14772b.m36836a();
        return this.f14772b.m36832b();
    }

    /* renamed from: a */
    private void m36764a(AbstractC4067b abstractC4067b, int i) throws IOException {
        int mo37051j = this.f14773c.mo37051j();
        abstractC4067b.mo36751a(i, mo37051j & Integer.MAX_VALUE, (this.f14773c.mo37054h() & 255) + 1, (Integer.MIN_VALUE & mo37051j) != 0);
    }

    /* renamed from: a */
    private void m36763a(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            boolean z = (b & 1) != 0;
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.f14773c.mo37054h() & 255);
            }
            int i3 = i;
            if ((b & 32) != 0) {
                m36764a(abstractC4067b, i2);
                i3 = i - 5;
            }
            abstractC4067b.mo36745a(z, i2, -1, m36767a(m36768a(i3, b, s), s, b, i2));
            return;
        }
        throw C4047e.m36808b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    /* renamed from: b */
    private void m36761b(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            boolean z = true;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (z) {
                throw C4047e.m36808b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.f14773c.mo37054h() & 255);
            }
            abstractC4067b.mo36744a(z2, i2, this.f14773c, m36768a(i, b, s));
            this.f14773c.mo37053h(s);
            return;
        }
        throw C4047e.m36808b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
    }

    /* renamed from: c */
    private void m36760c(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i == 5) {
            if (i2 == 0) {
                throw C4047e.m36808b("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            m36764a(abstractC4067b, i2);
            return;
        }
        throw C4047e.m36808b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
    }

    /* renamed from: d */
    private void m36759d(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i == 4) {
            if (i2 == 0) {
                throw C4047e.m36808b("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int mo37051j = this.f14773c.mo37051j();
            EnumC4042b m36839a = EnumC4042b.m36839a(mo37051j);
            if (m36839a == null) {
                throw C4047e.m36808b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(mo37051j));
            }
            abstractC4067b.mo36748a(i2, m36839a);
            return;
        }
        throw C4047e.m36808b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
    }

    /* renamed from: e */
    private void m36758e(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        short s;
        if (i2 == 0) {
            if ((b & 1) != 0) {
                if (i != 0) {
                    throw C4047e.m36808b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                abstractC4067b.mo36752a();
                return;
            } else if (i % 6 != 0) {
                throw C4047e.m36808b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            } else {
                C4078n c4078n = new C4078n();
                for (int i3 = 0; i3 < i; i3 += 6) {
                    short mo37052i = this.f14773c.mo37052i();
                    int mo37051j = this.f14773c.mo37051j();
                    if (mo37052i == 2) {
                        s = mo37052i;
                        if (mo37051j == 0) {
                            continue;
                        } else if (mo37051j != 1) {
                            throw C4047e.m36808b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        } else {
                            s = mo37052i;
                        }
                    } else if (mo37052i == 3) {
                        s = 4;
                    } else if (mo37052i == 4) {
                        s = 7;
                        if (mo37051j < 0) {
                            throw C4047e.m36808b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                    } else if (mo37052i != 5) {
                        s = mo37052i;
                    } else if (mo37051j < 16384 || mo37051j > 16777215) {
                        throw C4047e.m36808b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(mo37051j));
                    } else {
                        s = mo37052i;
                    }
                    c4078n.m36680a(s, mo37051j);
                }
                abstractC4067b.mo36743a(false, c4078n);
                return;
            }
        }
        throw C4047e.m36808b("TYPE_SETTINGS streamId != 0", new Object[0]);
    }

    /* renamed from: f */
    private void m36757f(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            short s = 0;
            if ((b & 8) != 0) {
                s = (short) (this.f14773c.mo37054h() & 255);
            }
            abstractC4067b.mo36750a(i2, this.f14773c.mo37051j() & Integer.MAX_VALUE, m36767a(m36768a(i - 4, b, s), s, b, i2));
            return;
        }
        throw C4047e.m36808b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }

    /* renamed from: g */
    private void m36756g(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        boolean z = false;
        if (i == 8) {
            if (i2 != 0) {
                throw C4047e.m36808b("TYPE_PING streamId != 0", new Object[0]);
            }
            int mo37051j = this.f14773c.mo37051j();
            int mo37051j2 = this.f14773c.mo37051j();
            if ((b & 1) != 0) {
                z = true;
            }
            abstractC4067b.mo36746a(z, mo37051j, mo37051j2);
            return;
        }
        throw C4047e.m36808b("TYPE_PING length != 8: %s", Integer.valueOf(i));
    }

    /* renamed from: h */
    private void m36755h(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i >= 8) {
            if (i2 != 0) {
                throw C4047e.m36808b("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int mo37051j = this.f14773c.mo37051j();
            int mo37051j2 = this.f14773c.mo37051j();
            int i3 = i - 8;
            EnumC4042b m36839a = EnumC4042b.m36839a(mo37051j2);
            if (m36839a == null) {
                throw C4047e.m36808b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(mo37051j2));
            }
            C3973f c3973f = C3973f.f14422b;
            if (i3 > 0) {
                c3973f = this.f14773c.mo37059c(i3);
            }
            abstractC4067b.mo36747a(mo37051j, m36839a, c3973f);
            return;
        }
        throw C4047e.m36808b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
    }

    /* renamed from: i */
    private void m36754i(AbstractC4067b abstractC4067b, int i, byte b, int i2) throws IOException {
        if (i == 4) {
            long mo37051j = this.f14773c.mo37051j() & 2147483647L;
            if (mo37051j == 0) {
                throw C4047e.m36808b("windowSizeIncrement was 0", Long.valueOf(mo37051j));
            }
            abstractC4067b.mo36749a(i2, mo37051j);
            return;
        }
        throw C4047e.m36808b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
    }

    /* renamed from: a */
    public final void m36765a(AbstractC4067b abstractC4067b) throws IOException {
        if (this.f14775e) {
            if (!m36762a(true, abstractC4067b)) {
                throw C4047e.m36808b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        C3973f mo37059c = this.f14773c.mo37059c(C4047e.f14686a.mo37026g());
        Logger logger = f14771a;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(C4015c.m36903a("<< CONNECTION %s", mo37059c.mo37028e()));
        }
        if (!C4047e.f14686a.equals(mo37059c)) {
            throw C4047e.m36808b("Expected a connection header but was %s", mo37059c.mo37038a());
        }
    }

    /* renamed from: a */
    public final boolean m36762a(boolean z, AbstractC4067b abstractC4067b) throws IOException {
        try {
            this.f14773c.mo37066a(9L);
            int m36766a = m36766a(this.f14773c);
            if (m36766a < 0 || m36766a > 16384) {
                throw C4047e.m36808b("FRAME_SIZE_ERROR: %s", Integer.valueOf(m36766a));
            }
            byte mo37054h = (byte) (this.f14773c.mo37054h() & 255);
            if (z && mo37054h != 4) {
                throw C4047e.m36808b("Expected a SETTINGS frame but was %s", Byte.valueOf(mo37054h));
            }
            byte mo37054h2 = (byte) (this.f14773c.mo37054h() & 255);
            int mo37051j = this.f14773c.mo37051j() & Integer.MAX_VALUE;
            Logger logger = f14771a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(C4047e.m36809a(true, mo37051j, m36766a, mo37054h, mo37054h2));
            }
            switch (mo37054h) {
                case 0:
                    m36761b(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 1:
                    m36763a(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 2:
                    m36760c(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 3:
                    m36759d(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 4:
                    m36758e(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 5:
                    m36757f(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 6:
                    m36756g(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 7:
                    m36755h(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                case 8:
                    m36754i(abstractC4067b, m36766a, mo37054h2, mo37051j);
                    return true;
                default:
                    this.f14773c.mo37053h(m36766a);
                    return true;
            }
        } catch (IOException e) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f14773c.close();
    }
}
