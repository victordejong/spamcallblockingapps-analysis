package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.b.a.e.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/j.class */
final class j implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f8006b = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    final d.b f8007a;

    /* renamed from: c  reason: collision with root package name */
    private final com.bytedance.sdk.a.a.d f8008c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f8009d;
    private final c e;
    private int f = 16384;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(com.bytedance.sdk.a.a.d dVar, boolean z) {
        this.f8008c = dVar;
        this.f8009d = z;
        c cVar = new c();
        this.e = cVar;
        this.f8007a = new d.b(cVar);
    }

    private static void a(com.bytedance.sdk.a.a.d dVar, int i) throws IOException {
        dVar.i((i >>> 16) & 255);
        dVar.i((i >>> 8) & 255);
        dVar.i(i & 255);
    }

    private void b(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min(this.f, j);
            long j2 = min;
            j -= j2;
            a(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.f8008c.a_(this.e, j2);
        }
    }

    public final void a() throws IOException {
        synchronized (this) {
            if (this.g) {
                throw new IOException("closed");
            } else if (this.f8009d) {
                Logger logger = f8006b;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.bytedance.sdk.a.b.a.c.a(">> CONNECTION %s", e.f7938a.e()));
                }
                this.f8008c.c(e.f7938a.h());
                this.f8008c.flush();
            }
        }
    }

    final void a(int i, byte b2, c cVar, int i2) throws IOException {
        a(i, i2, (byte) 0, b2);
        if (i2 > 0) {
            this.f8008c.a_(cVar, i2);
        }
    }

    public final void a(int i, int i2, byte b2, byte b3) throws IOException {
        Logger logger = f8006b;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.a(false, i, i2, b2, b3));
        }
        int i3 = this.f;
        if (i2 > i3) {
            throw e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
        } else if ((Integer.MIN_VALUE & i) == 0) {
            a(this.f8008c, i2);
            this.f8008c.i(b2 & 255);
            this.f8008c.i(b3 & 255);
            this.f8008c.g(i & Integer.MAX_VALUE);
        } else {
            throw e.a("reserved bit set: %s", Integer.valueOf(i));
        }
    }

    public final void a(int i, int i2, List<c> list) throws IOException {
        synchronized (this) {
            if (!this.g) {
                this.f8007a.a(list);
                long b2 = this.e.b();
                int min = (int) Math.min(this.f - 4, b2);
                long j = min;
                int i3 = (b2 > j ? 1 : (b2 == j ? 0 : -1));
                a(i, min + 4, (byte) 5, i3 == 0 ? (byte) 4 : (byte) 0);
                this.f8008c.g(i2 & Integer.MAX_VALUE);
                this.f8008c.a_(this.e, j);
                if (i3 > 0) {
                    b(i, b2 - j);
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void a(int i, long j) throws IOException {
        synchronized (this) {
            if (this.g) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                throw e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            } else {
                a(i, 4, (byte) 8, (byte) 0);
                this.f8008c.g((int) j);
                this.f8008c.flush();
            }
        }
    }

    public final void a(int i, b bVar) throws IOException {
        synchronized (this) {
            if (this.g) {
                throw new IOException("closed");
            } else if (bVar.g != -1) {
                a(i, 4, (byte) 3, (byte) 0);
                this.f8008c.g(bVar.g);
                this.f8008c.flush();
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    public final void a(int i, b bVar, byte[] bArr) throws IOException {
        synchronized (this) {
            if (this.g) {
                throw new IOException("closed");
            } else if (bVar.g != -1) {
                a(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.f8008c.g(i);
                this.f8008c.g(bVar.g);
                if (bArr.length > 0) {
                    this.f8008c.c(bArr);
                }
                this.f8008c.flush();
            } else {
                throw e.a("errorCode.httpCode == -1", new Object[0]);
            }
        }
    }

    public final void a(n nVar) throws IOException {
        synchronized (this) {
            if (!this.g) {
                this.f = nVar.d(this.f);
                if (nVar.c() != -1) {
                    this.f8007a.a(nVar.c());
                }
                a(0, 0, (byte) 4, (byte) 1);
                this.f8008c.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void a(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (!this.g) {
                a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
                this.f8008c.g(i);
                this.f8008c.g(i2);
                this.f8008c.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void a(boolean z, int i, int i2, List<c> list) throws IOException {
        synchronized (this) {
            if (!this.g) {
                a(z, i, list);
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void a(boolean z, int i, c cVar, int i2) throws IOException {
        synchronized (this) {
            if (!this.g) {
                a(i, z ? (byte) 1 : (byte) 0, cVar, i2);
            } else {
                throw new IOException("closed");
            }
        }
    }

    final void a(boolean z, int i, List<c> list) throws IOException {
        if (!this.g) {
            this.f8007a.a(list);
            long b2 = this.e.b();
            int min = (int) Math.min(this.f, b2);
            long j = min;
            int i2 = (b2 > j ? 1 : (b2 == j ? 0 : -1));
            byte b3 = i2 == 0 ? (byte) 4 : (byte) 0;
            byte b4 = b3;
            if (z) {
                b4 = (byte) (b3 | 1);
            }
            a(i, min, (byte) 1, b4);
            this.f8008c.a_(this.e, j);
            if (i2 > 0) {
                b(i, b2 - j);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public final void b() throws IOException {
        synchronized (this) {
            if (!this.g) {
                this.f8008c.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void b(n nVar) throws IOException {
        synchronized (this) {
            if (!this.g) {
                int i = 0;
                a(0, nVar.b() * 6, (byte) 4, (byte) 0);
                while (i < 10) {
                    if (nVar.a(i)) {
                        this.f8008c.h(i == 4 ? 3 : i == 7 ? 4 : i);
                        this.f8008c.g(nVar.b(i));
                    }
                    i++;
                }
                this.f8008c.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final int c() {
        return this.f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.g = true;
            this.f8008c.close();
        }
    }
}
