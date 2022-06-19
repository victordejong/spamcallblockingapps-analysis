package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p135e.C4044d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.bytedance.sdk.a.b.a.e.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/j.class */
final class C4072j implements Closeable {

    /* renamed from: b */
    private static final Logger f14808b = Logger.getLogger(C4047e.class.getName());

    /* renamed from: a */
    final C4044d.C4046b f14809a;

    /* renamed from: c */
    private final AbstractC3971d f14810c;

    /* renamed from: d */
    private final boolean f14811d;

    /* renamed from: e */
    private final C3969c f14812e;

    /* renamed from: f */
    private int f14813f = 16384;

    /* renamed from: g */
    private boolean f14814g;

    public C4072j(AbstractC3971d abstractC3971d, boolean z) {
        this.f14810c = abstractC3971d;
        this.f14811d = z;
        C3969c c3969c = new C3969c();
        this.f14812e = c3969c;
        this.f14809a = new C4044d.C4046b(c3969c);
    }

    /* renamed from: a */
    private static void m36705a(AbstractC3971d abstractC3971d, int i) throws IOException {
        abstractC3971d.mo37072i((i >>> 16) & 255);
        abstractC3971d.mo37072i((i >>> 8) & 255);
        abstractC3971d.mo37072i(i & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m36698b(int r7, long r8) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L50
            r0 = r6
            int r0 = r0.f14813f
            long r0 = (long) r0
            r1 = r8
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r10
            long r0 = (long) r0
            r11 = r0
            r0 = r8
            r1 = r11
            long r0 = r0 - r1
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L2c
            r0 = 4
            r13 = r0
            r0 = r13
            r14 = r0
            goto L33
        L2c:
            r0 = 0
            r13 = r0
            r0 = r13
            r14 = r0
        L33:
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = 9
            r4 = r14
            r0.m36710a(r1, r2, r3, r4)
            r0 = r6
            com.bytedance.sdk.a.a.d r0 = r0.f14810c
            r1 = r6
            com.bytedance.sdk.a.a.c r1 = r1.f14812e
            r2 = r11
            r0.mo36721a_(r1, r2)
            goto L0
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.p135e.C4072j.m36698b(int, long):void");
    }

    /* renamed from: a */
    public final void m36712a() throws IOException {
        synchronized (this) {
            if (!this.f14814g) {
                if (!this.f14811d) {
                    return;
                }
                Logger logger = f14808b;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(C4015c.m36903a(">> CONNECTION %s", C4047e.f14686a.mo37028e()));
                }
                this.f14810c.mo37076c(C4047e.f14686a.mo37025h());
                this.f14810c.flush();
                return;
            }
            throw new IOException("closed");
        }
    }

    /* renamed from: a */
    final void m36711a(int i, byte b, C3969c c3969c, int i2) throws IOException {
        m36710a(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.f14810c.mo36721a_(c3969c, i2);
        }
    }

    /* renamed from: a */
    public final void m36710a(int i, int i2, byte b, byte b2) throws IOException {
        Logger logger = f14808b;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(C4047e.m36809a(false, i, i2, b, b2));
        }
        int i3 = this.f14813f;
        if (i2 <= i3) {
            if ((Integer.MIN_VALUE & i) != 0) {
                throw C4047e.m36810a("reserved bit set: %s", Integer.valueOf(i));
            }
            m36705a(this.f14810c, i2);
            this.f14810c.mo37072i(b & 255);
            this.f14810c.mo37072i(b2 & 255);
            this.f14810c.mo37074g(i & Integer.MAX_VALUE);
            return;
        }
        throw C4047e.m36810a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public final void m36709a(int i, int i2, List<C4043c> list) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            this.f14809a.m36814a(list);
            long m37124b = this.f14812e.m37124b();
            int min = (int) Math.min(this.f14813f - 4, m37124b);
            long j = min;
            int i3 = (m37124b > j ? 1 : (m37124b == j ? 0 : -1));
            m36710a(i, min + 4, (byte) 5, i3 == 0 ? (byte) 4 : (byte) 0);
            this.f14810c.mo37074g(i2 & Integer.MAX_VALUE);
            this.f14810c.mo36721a_(this.f14812e, j);
            if (i3 > 0) {
                m36698b(i, m37124b - j);
            }
        }
    }

    /* renamed from: a */
    public final void m36708a(int i, long j) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw C4047e.m36810a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            m36710a(i, 4, (byte) 8, (byte) 0);
            this.f14810c.mo37074g((int) j);
            this.f14810c.flush();
        }
    }

    /* renamed from: a */
    public final void m36707a(int i, EnumC4042b enumC4042b) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            if (enumC4042b.f14656g == -1) {
                throw new IllegalArgumentException();
            }
            m36710a(i, 4, (byte) 3, (byte) 0);
            this.f14810c.mo37074g(enumC4042b.f14656g);
            this.f14810c.flush();
        }
    }

    /* renamed from: a */
    public final void m36706a(int i, EnumC4042b enumC4042b, byte[] bArr) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            if (enumC4042b.f14656g == -1) {
                throw C4047e.m36810a("errorCode.httpCode == -1", new Object[0]);
            }
            m36710a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f14810c.mo37074g(i);
            this.f14810c.mo37074g(enumC4042b.f14656g);
            if (bArr.length > 0) {
                this.f14810c.mo37076c(bArr);
            }
            this.f14810c.flush();
        }
    }

    /* renamed from: a */
    public final void m36704a(C4078n c4078n) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            this.f14813f = c4078n.m36673d(this.f14813f);
            if (c4078n.m36676c() != -1) {
                this.f14809a.m36818a(c4078n.m36676c());
            }
            m36710a(0, 0, (byte) 4, (byte) 1);
            this.f14810c.flush();
        }
    }

    /* renamed from: a */
    public final void m36703a(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            m36710a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f14810c.mo37074g(i);
            this.f14810c.mo37074g(i2);
            this.f14810c.flush();
        }
    }

    /* renamed from: a */
    public final void m36702a(boolean z, int i, int i2, List<C4043c> list) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            m36700a(z, i, list);
        }
    }

    /* renamed from: a */
    public final void m36701a(boolean z, int i, C3969c c3969c, int i2) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            m36711a(i, z ? (byte) 1 : (byte) 0, c3969c, i2);
        }
    }

    /* renamed from: a */
    final void m36700a(boolean z, int i, List<C4043c> list) throws IOException {
        if (!this.f14814g) {
            this.f14809a.m36814a(list);
            long m37124b = this.f14812e.m37124b();
            int min = (int) Math.min(this.f14813f, m37124b);
            long j = min;
            int i2 = (m37124b > j ? 1 : (m37124b == j ? 0 : -1));
            byte b = i2 == 0 ? (byte) 4 : (byte) 0;
            byte b2 = b;
            if (z) {
                b2 = (byte) (b | 1);
            }
            m36710a(i, min, (byte) 1, b2);
            this.f14810c.mo36721a_(this.f14812e, j);
            if (i2 <= 0) {
                return;
            }
            m36698b(i, m37124b - j);
            return;
        }
        throw new IOException("closed");
    }

    /* renamed from: b */
    public final void m36699b() throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            this.f14810c.flush();
        }
    }

    /* renamed from: b */
    public final void m36697b(C4078n c4078n) throws IOException {
        synchronized (this) {
            if (this.f14814g) {
                throw new IOException("closed");
            }
            int i = 0;
            m36710a(0, c4078n.m36678b() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (c4078n.m36681a(i)) {
                    this.f14810c.mo37073h(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.f14810c.mo37074g(c4078n.m36677b(i));
                }
                i++;
            }
            this.f14810c.flush();
        }
    }

    /* renamed from: c */
    public final int m36696c() {
        return this.f14813f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.f14814g = true;
            this.f14810c.close();
        }
    }
}
