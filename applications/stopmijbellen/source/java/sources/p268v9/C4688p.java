package p268v9;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import p007a6.C0033h;
import p011aa.AbstractC0054g;
import p011aa.C0053f;
import p134j4.C3248s0;
import p268v9.C4660b;
/* renamed from: v9.p */
/* loaded from: classes2-dex2jar.jar:v9/p.class */
public final class C4688p implements Closeable {

    /* renamed from: g */
    public static final Logger f14488g = Logger.getLogger(C4663c.class.getName());

    /* renamed from: a */
    public final AbstractC0054g f14489a;

    /* renamed from: b */
    public final boolean f14490b;

    /* renamed from: c */
    public final C0053f f14491c;

    /* renamed from: d */
    public int f14492d = 16384;

    /* renamed from: e */
    public boolean f14493e;

    /* renamed from: f */
    public final C4660b.C4662b f14494f;

    public C4688p(AbstractC0054g abstractC0054g, boolean z) {
        this.f14489a = abstractC0054g;
        this.f14490b = z;
        C0053f c0053f = new C0053f();
        this.f14491c = c0053f;
        this.f14494f = new C4660b.C4662b(c0053f);
    }

    /* renamed from: A */
    public void m605A(int i, long j) throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                C4663c.m658b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
                throw null;
            }
            m601l(i, 4, (byte) 8, (byte) 0);
            this.f14489a.mo8816q((int) j);
            this.f14489a.flush();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m604B(int r7, long r8) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L50
            r0 = r6
            int r0 = r0.f14492d
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
            r0.m601l(r1, r2, r3, r4)
            r0 = r6
            aa.g r0 = r0.f14489a
            r1 = r6
            aa.f r1 = r1.f14491c
            r2 = r11
            r0.mo613E(r1, r2)
            goto L0
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p268v9.C4688p.m604B(int, long):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.f14493e = true;
            this.f14489a.close();
        }
    }

    /* renamed from: d */
    public void m603d(C3248s0 c3248s0) throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            int i = this.f14492d;
            int i2 = c3248s0.f10959a;
            if ((i2 & 32) != 0) {
                i = ((int[]) c3248s0.f10960b)[5];
            }
            this.f14492d = i;
            int i3 = i2 & 2;
            if ((i3 != 0 ? ((int[]) c3248s0.f10960b)[1] : -1) != -1) {
                C4660b.C4662b c4662b = this.f14494f;
                int i4 = -1;
                if (i3 != 0) {
                    i4 = ((int[]) c3248s0.f10960b)[1];
                }
                Objects.requireNonNull(c4662b);
                int min = Math.min(i4, 16384);
                int i5 = c4662b.f14379d;
                if (i5 != min) {
                    if (min < i5) {
                        c4662b.f14377b = Math.min(c4662b.f14377b, min);
                    }
                    c4662b.f14378c = true;
                    c4662b.f14379d = min;
                    int i6 = c4662b.f14383h;
                    if (min < i6) {
                        if (min == 0) {
                            c4662b.m665a();
                        } else {
                            c4662b.m664b(i6 - min);
                        }
                    }
                }
            }
            m601l(0, 0, (byte) 4, (byte) 1);
            this.f14489a.flush();
        }
    }

    public void flush() throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            this.f14489a.flush();
        }
    }

    /* renamed from: k */
    public void m602k(boolean z, int i, C0053f c0053f, int i2) throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            m601l(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
            if (i2 > 0) {
                this.f14489a.mo613E(c0053f, i2);
            }
        }
    }

    /* renamed from: l */
    public void m601l(int i, int i2, byte b, byte b2) throws IOException {
        Logger logger = f14488g;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(C4663c.m659a(false, i, i2, b, b2));
        }
        int i3 = this.f14492d;
        if (i2 > i3) {
            C4663c.m658b("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            throw null;
        } else if ((Integer.MIN_VALUE & i) != 0) {
            C4663c.m658b("reserved bit set: %s", Integer.valueOf(i));
            throw null;
        } else {
            AbstractC0054g abstractC0054g = this.f14489a;
            abstractC0054g.mo8815w((i2 >>> 16) & 255);
            abstractC0054g.mo8815w((i2 >>> 8) & 255);
            abstractC0054g.mo8815w(i2 & 255);
            this.f14489a.mo8815w(b & 255);
            this.f14489a.mo8815w(b2 & 255);
            this.f14489a.mo8816q(i & Api.BaseClientBuilder.API_PRIORITY_OTHER);
        }
    }

    /* renamed from: o */
    public void m600o(int i, int i2, byte[] bArr) throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            if (C0033h.m8892e(i2) == -1) {
                C4663c.m658b("errorCode.httpCode == -1", new Object[0]);
                throw null;
            }
            m601l(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f14489a.mo8816q(i);
            this.f14489a.mo8816q(C0033h.m8892e(i2));
            if (bArr.length > 0) {
                this.f14489a.mo8814z(bArr);
            }
            this.f14489a.flush();
        }
    }

    /* renamed from: p */
    public void m599p(boolean z, int i, List<C4659a> list) throws IOException {
        if (!this.f14493e) {
            this.f14494f.m661e(list);
            long j = this.f14491c.f120b;
            int min = (int) Math.min(this.f14492d, j);
            long j2 = min;
            int i2 = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            byte b = i2 == 0 ? (byte) 4 : (byte) 0;
            byte b2 = b;
            if (z) {
                b2 = (byte) (b | 1);
            }
            m601l(i, min, (byte) 1, b2);
            this.f14489a.mo613E(this.f14491c, j2);
            if (i2 <= 0) {
                return;
            }
            m604B(i, j - j2);
            return;
        }
        throw new IOException("closed");
    }

    /* renamed from: r */
    public void m598r(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            m601l(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f14489a.mo8816q(i);
            this.f14489a.mo8816q(i2);
            this.f14489a.flush();
        }
    }

    /* renamed from: s */
    public void m597s(int i, int i2) throws IOException {
        synchronized (this) {
            if (this.f14493e) {
                throw new IOException("closed");
            }
            if (C0033h.m8892e(i2) == -1) {
                throw new IllegalArgumentException();
            }
            m601l(i, 4, (byte) 3, (byte) 0);
            this.f14489a.mo8816q(C0033h.m8892e(i2));
            this.f14489a.flush();
        }
    }
}
