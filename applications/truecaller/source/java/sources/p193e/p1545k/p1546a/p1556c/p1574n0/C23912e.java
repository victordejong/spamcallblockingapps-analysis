package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: e.k.a.c.n0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/e.class */
public class C23912e extends InputStream {

    /* renamed from: a */
    public final ByteBuffer f66154a;

    public C23912e(ByteBuffer byteBuffer) {
        this.f66154a = byteBuffer;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f66154a.remaining();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f66154a.hasRemaining() ? this.f66154a.get() & 255 : -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f66154a.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this.f66154a.remaining());
        this.f66154a.get(bArr, i, min);
        return min;
    }
}
