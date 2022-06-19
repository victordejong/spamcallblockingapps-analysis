package p011aa;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: aa.s */
/* loaded from: classes2-dex2jar.jar:aa/s.class */
public class C0068s extends InputStream {

    /* renamed from: a */
    public final /* synthetic */ C0069t f147a;

    public C0068s(C0069t c0069t) {
        this.f147a = c0069t;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        C0069t c0069t = this.f147a;
        if (!c0069t.f150c) {
            return (int) Math.min(c0069t.f148a.f120b, 2147483647L);
        }
        throw new IOException("closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f147a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        C0069t c0069t = this.f147a;
        if (!c0069t.f150c) {
            C0053f c0053f = c0069t.f148a;
            if (c0053f.f120b != 0 || c0069t.f149b.mo609f(c0053f, 8192L) != -1) {
                return this.f147a.f148a.readByte() & 255;
            }
            return -1;
        }
        throw new IOException("closed");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f147a.f150c) {
            C0047a0.m8868b(bArr.length, i, i2);
            C0069t c0069t = this.f147a;
            C0053f c0053f = c0069t.f148a;
            if (c0053f.f120b != 0 || c0069t.f149b.mo609f(c0053f, 8192L) != -1) {
                return this.f147a.f148a.m8842p(bArr, i, i2);
            }
            return -1;
        }
        throw new IOException("closed");
    }

    public String toString() {
        return this.f147a + ".inputStream()";
    }
}
