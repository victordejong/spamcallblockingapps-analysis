package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* renamed from: e.k.a.c.n0.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/f.class */
public class C23913f extends OutputStream {

    /* renamed from: a */
    public final ByteBuffer f66155a;

    public C23913f(ByteBuffer byteBuffer) {
        this.f66155a = byteBuffer;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f66155a.put((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f66155a.put(bArr, i, i2);
    }
}
