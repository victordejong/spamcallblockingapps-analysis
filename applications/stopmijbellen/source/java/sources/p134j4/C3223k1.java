package p134j4;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;
/* renamed from: j4.k1 */
/* loaded from: classes-dex2jar.jar:j4/k1.class */
public final class C3223k1 extends InputStream {

    /* renamed from: a */
    public final Enumeration f10865a;

    /* renamed from: b */
    public InputStream f10866b;

    public C3223k1(Enumeration enumeration) throws IOException {
        this.f10865a = enumeration;
        m2535d();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f10866b;
        if (inputStream != null) {
            inputStream.close();
            this.f10866b = null;
        }
    }

    /* renamed from: d */
    public final void m2535d() throws IOException {
        InputStream inputStream = this.f10866b;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f10866b = this.f10865a.hasMoreElements() ? new FileInputStream((File) this.f10865a.nextElement()) : null;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f10866b;
            if (inputStream != null) {
                int read = inputStream.read();
                if (read != -1) {
                    return read;
                }
                m2535d();
            } else {
                return -1;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f10866b == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        do {
            int read = this.f10866b.read(bArr, i, i2);
            if (read > 0) {
                return read;
            }
            m2535d();
        } while (this.f10866b != null);
        return -1;
    }
}
