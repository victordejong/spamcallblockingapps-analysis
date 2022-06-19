package okhttp3.internal.http2;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.C1999c;
import okhttp3.internal.http2.C2038c;
import p000a.AbstractC0007d;
import p000a.C0005c;
/* renamed from: okhttp3.internal.http2.i */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/i.class */
final class C2066i implements Closeable {

    /* renamed from: b */
    private static final Logger f5272b = Logger.getLogger(C2041d.class.getName());

    /* renamed from: c */
    private final AbstractC0007d f5274c;

    /* renamed from: d */
    private final boolean f5275d;

    /* renamed from: g */
    private boolean f5278g;

    /* renamed from: e */
    private final C0005c f5276e = new C0005c();

    /* renamed from: a */
    final C2038c.C2040b f5273a = new C2038c.C2040b(this.f5276e);

    /* renamed from: f */
    private int f5277f = 16384;

    public C2066i(AbstractC0007d abstractC0007d, boolean z) {
        this.f5274c = abstractC0007d;
        this.f5275d = z;
    }

    /* renamed from: a */
    private static void m2073a(AbstractC0007d abstractC0007d, int i) {
        abstractC0007d.mo8084i((i >>> 16) & 255);
        abstractC0007d.mo8084i((i >>> 8) & 255);
        abstractC0007d.mo8084i(i & 255);
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
    private void m2066b(int r7, long r8) {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L50
            r0 = r6
            int r0 = r0.f5277f
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
            r0.m2078a(r1, r2, r3, r4)
            r0 = r6
            a.d r0 = r0.f5274c
            r1 = r6
            a.c r1 = r1.f5276e
            r2 = r11
            r0.mo2089a_(r1, r2)
            goto L0
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C2066i.m2066b(int, long):void");
    }

    /* renamed from: a */
    public void m2080a() {
        synchronized (this) {
            if (!this.f5278g) {
                if (!this.f5275d) {
                    return;
                }
                if (f5272b.isLoggable(Level.FINE)) {
                    f5272b.fine(C1999c.m2342a(">> CONNECTION %s", C2041d.f5150a.mo8040e()));
                }
                this.f5274c.mo8088c(C2041d.f5150a.mo8037h());
                this.f5274c.flush();
                return;
            }
            throw new IOException("closed");
        }
    }

    /* renamed from: a */
    void m2079a(int i, byte b, C0005c c0005c, int i2) {
        m2078a(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.f5274c.mo2089a_(c0005c, i2);
        }
    }

    /* renamed from: a */
    public void m2078a(int i, int i2, byte b, byte b2) {
        if (f5272b.isLoggable(Level.FINE)) {
            f5272b.fine(C2041d.m2181a(false, i, i2, b, b2));
        }
        int i3 = this.f5277f;
        if (i2 <= i3) {
            if ((Integer.MIN_VALUE & i) != 0) {
                throw C2041d.m2182a("reserved bit set: %s", Integer.valueOf(i));
            }
            m2073a(this.f5274c, i2);
            this.f5274c.mo8084i(b & 255);
            this.f5274c.mo8084i(b2 & 255);
            this.f5274c.mo8086g(i & Api.BaseClientBuilder.API_PRIORITY_OTHER);
            return;
        }
        throw C2041d.m2182a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public void m2077a(int i, int i2, List<C2037b> list) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            this.f5273a.m2187a(list);
            long m8137b = this.f5276e.m8137b();
            int min = (int) Math.min(this.f5277f - 4, m8137b);
            long j = min;
            int i3 = (m8137b > j ? 1 : (m8137b == j ? 0 : -1));
            m2078a(i, min + 4, (byte) 5, i3 == 0 ? (byte) 4 : (byte) 0);
            this.f5274c.mo8086g(i2 & Api.BaseClientBuilder.API_PRIORITY_OTHER);
            this.f5274c.mo2089a_(this.f5276e, j);
            if (i3 > 0) {
                m2066b(i, m8137b - j);
            }
        }
    }

    /* renamed from: a */
    public void m2076a(int i, long j) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw C2041d.m2182a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            m2078a(i, 4, (byte) 8, (byte) 0);
            this.f5274c.mo8086g((int) j);
            this.f5274c.flush();
        }
    }

    /* renamed from: a */
    public void m2075a(int i, EnumC2036a enumC2036a) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            if (enumC2036a.f5120l == -1) {
                throw new IllegalArgumentException();
            }
            m2078a(i, 4, (byte) 3, (byte) 0);
            this.f5274c.mo8086g(enumC2036a.f5120l);
            this.f5274c.flush();
        }
    }

    /* renamed from: a */
    public void m2074a(int i, EnumC2036a enumC2036a, byte[] bArr) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            if (enumC2036a.f5120l == -1) {
                throw C2041d.m2182a("errorCode.httpCode == -1", new Object[0]);
            }
            m2078a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f5274c.mo8086g(i);
            this.f5274c.mo8086g(enumC2036a.f5120l);
            if (bArr.length > 0) {
                this.f5274c.mo8088c(bArr);
            }
            this.f5274c.flush();
        }
    }

    /* renamed from: a */
    public void m2072a(C2071l c2071l) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            this.f5277f = c2071l.m2044d(this.f5277f);
            if (c2071l.m2047c() != -1) {
                this.f5273a.m2190a(c2071l.m2047c());
            }
            m2078a(0, 0, (byte) 4, (byte) 1);
            this.f5274c.flush();
        }
    }

    /* renamed from: a */
    public void m2071a(boolean z, int i, int i2) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            m2078a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f5274c.mo8086g(i);
            this.f5274c.mo8086g(i2);
            this.f5274c.flush();
        }
    }

    /* renamed from: a */
    public void m2070a(boolean z, int i, int i2, List<C2037b> list) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            m2068a(z, i, list);
        }
    }

    /* renamed from: a */
    public void m2069a(boolean z, int i, C0005c c0005c, int i2) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            byte b = 0;
            if (z) {
                b = (byte) 1;
            }
            m2079a(i, b, c0005c, i2);
        }
    }

    /* renamed from: a */
    void m2068a(boolean z, int i, List<C2037b> list) {
        if (!this.f5278g) {
            this.f5273a.m2187a(list);
            long m8137b = this.f5276e.m8137b();
            int min = (int) Math.min(this.f5277f, m8137b);
            long j = min;
            int i2 = (m8137b > j ? 1 : (m8137b == j ? 0 : -1));
            byte b = i2 == 0 ? (byte) 4 : (byte) 0;
            byte b2 = b;
            if (z) {
                b2 = (byte) (b | 1);
            }
            m2078a(i, min, (byte) 1, b2);
            this.f5274c.mo2089a_(this.f5276e, j);
            if (i2 <= 0) {
                return;
            }
            m2066b(i, m8137b - j);
            return;
        }
        throw new IOException("closed");
    }

    /* renamed from: b */
    public void m2067b() {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            this.f5274c.flush();
        }
    }

    /* renamed from: b */
    public void m2065b(C2071l c2071l) {
        synchronized (this) {
            if (this.f5278g) {
                throw new IOException("closed");
            }
            int i = 0;
            m2078a(0, c2071l.m2049b() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (c2071l.m2052a(i)) {
                    this.f5274c.mo8085h(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.f5274c.mo8086g(c2071l.m2048b(i));
                }
                i++;
            }
            this.f5274c.flush();
        }
    }

    /* renamed from: c */
    public int m2064c() {
        return this.f5277f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f5278g = true;
            this.f5274c.close();
        }
    }
}
