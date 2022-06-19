package p078c.p084c.p085a.p086a.p088b.p092d;

import java.io.OutputStream;
import java.util.Objects;
/* renamed from: c.c.a.a.b.d.e */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/e.class */
final class C1859e extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        Objects.requireNonNull(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr);
    }
}
