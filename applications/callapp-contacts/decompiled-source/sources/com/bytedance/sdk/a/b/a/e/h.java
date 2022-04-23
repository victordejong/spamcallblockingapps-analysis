package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.f;
import com.bytedance.sdk.a.a.s;
import com.bytedance.sdk.a.a.t;
import com.bytedance.sdk.a.b.a.e.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/h.class */
public final class h implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f7985a = Logger.getLogger(e.class.getName());

    /* renamed from: b  reason: collision with root package name */
    final d.a f7986b;

    /* renamed from: c  reason: collision with root package name */
    private final e f7987c;

    /* renamed from: d  reason: collision with root package name */
    private final a f7988d;
    private final boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/h$a.class */
    public static final class a implements s {

        /* renamed from: a  reason: collision with root package name */
        int f7989a;

        /* renamed from: b  reason: collision with root package name */
        byte f7990b;

        /* renamed from: c  reason: collision with root package name */
        int f7991c;

        /* renamed from: d  reason: collision with root package name */
        int f7992d;
        short e;
        private final e f;

        a(e eVar) {
            this.f = eVar;
        }

        private void b() throws IOException {
            int i = this.f7991c;
            int a2 = h.a(this.f);
            this.f7992d = a2;
            this.f7989a = a2;
            byte h = (byte) (this.f.h() & 255);
            this.f7990b = (byte) (this.f.h() & 255);
            if (h.f7985a.isLoggable(Level.FINE)) {
                h.f7985a.fine(e.a(true, this.f7991c, this.f7989a, h, this.f7990b));
            }
            int j = this.f.j() & Integer.MAX_VALUE;
            this.f7991c = j;
            if (h != 9) {
                throw e.b("%s != TYPE_CONTINUATION", Byte.valueOf(h));
            } else if (j != i) {
                throw e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // com.bytedance.sdk.a.a.s
        public final long a(c cVar, long j) throws IOException {
            while (true) {
                int i = this.f7992d;
                if (i == 0) {
                    this.f.h(this.e);
                    this.e = (short) 0;
                    if ((this.f7990b & 4) != 0) {
                        return -1L;
                    }
                    b();
                } else {
                    long a2 = this.f.a(cVar, Math.min(j, i));
                    if (a2 == -1) {
                        return -1L;
                    }
                    this.f7992d = (int) (this.f7992d - a2);
                    return a2;
                }
            }
        }

        @Override // com.bytedance.sdk.a.a.s
        public final t a() {
            return this.f.a();
        }

        @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/h$b.class */
    public interface b {
        void a();

        void a(int i, int i2, int i3, boolean z);

        void a(int i, int i2, List<c> list) throws IOException;

        void a(int i, long j);

        void a(int i, com.bytedance.sdk.a.b.a.e.b bVar);

        void a(int i, com.bytedance.sdk.a.b.a.e.b bVar, f fVar);

        void a(boolean z, int i, int i2);

        void a(boolean z, int i, int i2, List<c> list);

        void a(boolean z, int i, e eVar, int i2) throws IOException;

        void a(boolean z, n nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, boolean z) {
        this.f7987c = eVar;
        this.e = z;
        a aVar = new a(eVar);
        this.f7988d = aVar;
        this.f7986b = new d.a(4096, aVar);
    }

    static int a(int i, byte b2, short s) throws IOException {
        int i2 = i;
        if ((b2 & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        throw e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
    }

    static int a(e eVar) throws IOException {
        return (eVar.h() & 255) | ((eVar.h() & 255) << 16) | ((eVar.h() & 255) << 8);
    }

    private List<c> a(int i, short s, byte b2, int i2) throws IOException {
        a aVar = this.f7988d;
        aVar.f7992d = i;
        aVar.f7989a = i;
        this.f7988d.e = s;
        this.f7988d.f7990b = b2;
        this.f7988d.f7991c = i2;
        this.f7986b.a();
        return this.f7986b.b();
    }

    private void a(b bVar, int i) throws IOException {
        int j = this.f7987c.j();
        bVar.a(i, j & Integer.MAX_VALUE, (this.f7987c.h() & 255) + 1, (Integer.MIN_VALUE & j) != 0);
    }

    private void a(b bVar, int i, byte b2, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            boolean z = (b2 & 1) != 0;
            if ((b2 & 8) != 0) {
                s = (short) (this.f7987c.h() & 255);
            }
            int i3 = i;
            if ((b2 & 32) != 0) {
                a(bVar, i2);
                i3 = i - 5;
            }
            bVar.a(z, i2, -1, a(a(i3, b2, s), s, b2, i2));
            return;
        }
        throw e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    private void b(b bVar, int i, byte b2, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            boolean z = true;
            boolean z2 = (b2 & 1) != 0;
            if ((b2 & 32) == 0) {
                z = false;
            }
            if (!z) {
                if ((b2 & 8) != 0) {
                    s = (short) (this.f7987c.h() & 255);
                }
                bVar.a(z2, i2, this.f7987c, a(i, b2, s));
                this.f7987c.h(s);
                return;
            }
            throw e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        throw e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
    }

    private void c(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 5) {
            throw e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        } else if (i2 != 0) {
            a(bVar, i2);
        } else {
            throw e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
    }

    private void d(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            throw e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        } else if (i2 != 0) {
            int j = this.f7987c.j();
            com.bytedance.sdk.a.b.a.e.b a2 = com.bytedance.sdk.a.b.a.e.b.a(j);
            if (a2 != null) {
                bVar.a(i2, a2);
                return;
            }
            throw e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(j));
        } else {
            throw e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
    }

    private void e(b bVar, int i, byte b2, int i2) throws IOException {
        short s;
        if (i2 != 0) {
            throw e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
        } else if ((b2 & 1) != 0) {
            if (i == 0) {
                bVar.a();
                return;
            }
            throw e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
        } else if (i % 6 == 0) {
            n nVar = new n();
            for (int i3 = 0; i3 < i; i3 += 6) {
                short i4 = this.f7987c.i();
                int j = this.f7987c.j();
                if (i4 == 2) {
                    s = i4;
                    if (j == 0) {
                        continue;
                    } else if (j == 1) {
                        s = i4;
                    } else {
                        throw e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    }
                } else if (i4 == 3) {
                    s = 4;
                } else if (i4 == 4) {
                    s = 7;
                    if (j < 0) {
                        throw e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                } else if (i4 != 5) {
                    s = i4;
                } else if (j < 16384 || j > 16777215) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(j));
                } else {
                    s = i4;
                }
                nVar.a(s, j);
            }
            bVar.a(false, nVar);
        } else {
            throw e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        }
    }

    private void f(b bVar, int i, byte b2, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            if ((b2 & 8) != 0) {
                s = (short) (this.f7987c.h() & 255);
            }
            bVar.a(i2, this.f7987c.j() & Integer.MAX_VALUE, a(a(i - 4, b2, s), s, b2, i2));
            return;
        }
        throw e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }

    private void g(b bVar, int i, byte b2, int i2) throws IOException {
        boolean z = false;
        if (i != 8) {
            throw e.b("TYPE_PING length != 8: %s", Integer.valueOf(i));
        } else if (i2 == 0) {
            int j = this.f7987c.j();
            int j2 = this.f7987c.j();
            if ((b2 & 1) != 0) {
                z = true;
            }
            bVar.a(z, j, j2);
        } else {
            throw e.b("TYPE_PING streamId != 0", new Object[0]);
        }
    }

    private void h(b bVar, int i, byte b2, int i2) throws IOException {
        if (i < 8) {
            throw e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        } else if (i2 == 0) {
            int j = this.f7987c.j();
            int j2 = this.f7987c.j();
            int i3 = i - 8;
            com.bytedance.sdk.a.b.a.e.b a2 = com.bytedance.sdk.a.b.a.e.b.a(j2);
            if (a2 != null) {
                f fVar = f.f7788b;
                if (i3 > 0) {
                    fVar = this.f7987c.c(i3);
                }
                bVar.a(j, a2, fVar);
                return;
            }
            throw e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(j2));
        } else {
            throw e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
    }

    private void i(b bVar, int i, byte b2, int i2) throws IOException {
        if (i == 4) {
            long j = this.f7987c.j() & 2147483647L;
            if (j != 0) {
                bVar.a(i2, j);
                return;
            }
            throw e.b("windowSizeIncrement was 0", Long.valueOf(j));
        }
        throw e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
    }

    public final void a(b bVar) throws IOException {
        if (!this.e) {
            f c2 = this.f7987c.c(e.f7938a.g());
            Logger logger = f7985a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(com.bytedance.sdk.a.b.a.c.a("<< CONNECTION %s", c2.e()));
            }
            if (!e.f7938a.equals(c2)) {
                throw e.b("Expected a connection header but was %s", c2.a());
            }
        } else if (!a(true, bVar)) {
            throw e.b("Required SETTINGS preface not received", new Object[0]);
        }
    }

    public final boolean a(boolean z, b bVar) throws IOException {
        try {
            this.f7987c.a(9L);
            int a2 = a(this.f7987c);
            if (a2 < 0 || a2 > 16384) {
                throw e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(a2));
            }
            byte h = (byte) (this.f7987c.h() & 255);
            if (!z || h == 4) {
                byte h2 = (byte) (this.f7987c.h() & 255);
                int j = this.f7987c.j() & Integer.MAX_VALUE;
                Logger logger = f7985a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(e.a(true, j, a2, h, h2));
                }
                switch (h) {
                    case 0:
                        b(bVar, a2, h2, j);
                        return true;
                    case 1:
                        a(bVar, a2, h2, j);
                        return true;
                    case 2:
                        c(bVar, a2, h2, j);
                        return true;
                    case 3:
                        d(bVar, a2, h2, j);
                        return true;
                    case 4:
                        e(bVar, a2, h2, j);
                        return true;
                    case 5:
                        f(bVar, a2, h2, j);
                        return true;
                    case 6:
                        g(bVar, a2, h2, j);
                        return true;
                    case 7:
                        h(bVar, a2, h2, j);
                        return true;
                    case 8:
                        i(bVar, a2, h2, j);
                        return true;
                    default:
                        this.f7987c.h(a2);
                        return true;
                }
            } else {
                throw e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(h));
            }
        } catch (IOException e) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f7987c.close();
    }
}
