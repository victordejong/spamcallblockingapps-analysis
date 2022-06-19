package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.C5449c;
import okhttp3.internal.http2.C5488c;
import p000a.AbstractC0006d;
import p000a.C0005c;
/* renamed from: okhttp3.internal.http2.i */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/i.class */
final class C5516i implements Closeable {

    /* renamed from: b */
    private static final Logger f23046b = Logger.getLogger(C5491d.class.getName());

    /* renamed from: c */
    private final AbstractC0006d f23048c;

    /* renamed from: d */
    private final boolean f23049d;

    /* renamed from: g */
    private boolean f23052g;

    /* renamed from: e */
    private final C0005c f23050e = new C0005c();

    /* renamed from: a */
    final C5488c.C5490b f23047a = new C5488c.C5490b(this.f23050e);

    /* renamed from: f */
    private int f23051f = 16384;

    public C5516i(AbstractC0006d abstractC0006d, boolean z) {
        this.f23048c = abstractC0006d;
        this.f23049d = z;
    }

    /* renamed from: a */
    private static void m391a(AbstractC0006d abstractC0006d, int i) {
        abstractC0006d.mo22508i((i >>> 16) & 255);
        abstractC0006d.mo22508i((i >>> 8) & 255);
        abstractC0006d.mo22508i(i & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m384b(int r7, long r8) {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L4d
            r0 = r6
            int r0 = r0.f23051f
            long r0 = (long) r0
            r1 = r8
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r8
            r1 = r10
            long r1 = (long) r1
            long r0 = r0 - r1
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L43
            r0 = 4
            r11 = r0
            r0 = r11
            r12 = r0
        L25:
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = 9
            r4 = r12
            r0.m396a(r1, r2, r3, r4)
            r0 = r6
            a.d r0 = r0.f23048c
            r1 = r6
            a.c r1 = r1.f23050e
            r2 = r10
            long r2 = (long) r2
            r0.mo406a_(r1, r2)
            goto L0
        L43:
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            goto L25
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C5516i.m384b(int, long):void");
    }

    /* renamed from: a */
    public void m398a() {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            if (this.f23049d) {
                if (f23046b.isLoggable(Level.FINE)) {
                    f23046b.fine(C5449c.m662a(">> CONNECTION %s", C5491d.f22924a.mo22464e()));
                }
                this.f23048c.mo22512c(C5491d.f22924a.mo22461h());
                this.f23048c.flush();
            }
        }
    }

    /* renamed from: a */
    void m397a(int i, byte b, C0005c c0005c, int i2) {
        m396a(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.f23048c.mo406a_(c0005c, i2);
        }
    }

    /* renamed from: a */
    public void m396a(int i, int i2, byte b, byte b2) {
        if (f23046b.isLoggable(Level.FINE)) {
            f23046b.fine(C5491d.m499a(false, i, i2, b, b2));
        }
        if (i2 > this.f23051f) {
            throw C5491d.m500a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.f23051f), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw C5491d.m500a("reserved bit set: %s", Integer.valueOf(i));
        }
        m391a(this.f23048c, i2);
        this.f23048c.mo22508i(b & 255);
        this.f23048c.mo22508i(b2 & 255);
        this.f23048c.mo22510g(Integer.MAX_VALUE & i);
    }

    /* renamed from: a */
    public void m395a(int i, int i2, List<C5487b> list) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            this.f23047a.m505a(list);
            long m22562b = this.f23050e.m22562b();
            int min = (int) Math.min(this.f23051f - 4, m22562b);
            m396a(i, min + 4, (byte) 5, m22562b == ((long) min) ? (byte) 4 : (byte) 0);
            this.f23048c.mo22510g(Integer.MAX_VALUE & i2);
            this.f23048c.mo406a_(this.f23050e, min);
            if (m22562b > min) {
                m384b(i, m22562b - min);
            }
        }
    }

    /* renamed from: a */
    public void m394a(int i, long j) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw C5491d.m500a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            m396a(i, 4, (byte) 8, (byte) 0);
            this.f23048c.mo22510g((int) j);
            this.f23048c.flush();
        }
    }

    /* renamed from: a */
    public void m393a(int i, EnumC5486a enumC5486a) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            if (enumC5486a.f22894l == -1) {
                throw new IllegalArgumentException();
            }
            m396a(i, 4, (byte) 3, (byte) 0);
            this.f23048c.mo22510g(enumC5486a.f22894l);
            this.f23048c.flush();
        }
    }

    /* renamed from: a */
    public void m392a(int i, EnumC5486a enumC5486a, byte[] bArr) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            if (enumC5486a.f22894l == -1) {
                throw C5491d.m500a("errorCode.httpCode == -1", new Object[0]);
            }
            m396a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f23048c.mo22510g(i);
            this.f23048c.mo22510g(enumC5486a.f22894l);
            if (bArr.length > 0) {
                this.f23048c.mo22512c(bArr);
            }
            this.f23048c.flush();
        }
    }

    /* renamed from: a */
    public void m390a(C5521l c5521l) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            this.f23051f = c5521l.m362d(this.f23051f);
            if (c5521l.m365c() != -1) {
                this.f23047a.m508a(c5521l.m365c());
            }
            m396a(0, 0, (byte) 4, (byte) 1);
            this.f23048c.flush();
        }
    }

    /* renamed from: a */
    public void m389a(boolean z, int i, int i2) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            byte b = 0;
            if (z) {
                b = 1;
            }
            m396a(0, 8, (byte) 6, b);
            this.f23048c.mo22510g(i);
            this.f23048c.mo22510g(i2);
            this.f23048c.flush();
        }
    }

    /* renamed from: a */
    public void m388a(boolean z, int i, int i2, List<C5487b> list) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            m386a(z, i, list);
        }
    }

    /* renamed from: a */
    public void m387a(boolean z, int i, C0005c c0005c, int i2) {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            byte b = 0;
            if (z) {
                b = (byte) 1;
            }
            m397a(i, b, c0005c, i2);
        }
    }

    /* renamed from: a */
    void m386a(boolean z, int i, List<C5487b> list) {
        if (this.f23052g) {
            throw new IOException("closed");
        }
        this.f23047a.m505a(list);
        long m22562b = this.f23050e.m22562b();
        int min = (int) Math.min(this.f23051f, m22562b);
        byte b = m22562b == ((long) min) ? (byte) 4 : (byte) 0;
        byte b2 = b;
        if (z) {
            b2 = (byte) (b | 1);
        }
        m396a(i, min, (byte) 1, b2);
        this.f23048c.mo406a_(this.f23050e, min);
        if (m22562b <= min) {
            return;
        }
        m384b(i, m22562b - min);
    }

    /* renamed from: b */
    public void m385b() {
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            this.f23048c.flush();
        }
    }

    /* renamed from: b */
    public void m383b(C5521l c5521l) {
        int i = 0;
        synchronized (this) {
            if (this.f23052g) {
                throw new IOException("closed");
            }
            m396a(0, c5521l.m367b() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (c5521l.m370a(i)) {
                    this.f23048c.mo22509h(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.f23048c.mo22510g(c5521l.m366b(i));
                }
                i++;
            }
            this.f23048c.flush();
        }
    }

    /* renamed from: c */
    public int m382c() {
        return this.f23051f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f23052g = true;
            this.f23048c.close();
        }
    }
}
