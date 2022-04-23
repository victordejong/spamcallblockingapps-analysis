package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: c.d.b.d.g.a.x5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x5.class */
public final class C4203x5 extends FilterInputStream {

    /* renamed from: a */
    public final long f15991a;

    /* renamed from: b */
    public long f15992b;

    public C4203x5(InputStream inputStream, long j) {
        super(inputStream);
        this.f15991a = j;
    }

    /* renamed from: a */
    public final long m26170a() {
        return this.f15991a - this.f15992b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f15992b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f15992b += read;
        }
        return read;
    }
}
