package p011aa;

import java.io.InputStream;
/* renamed from: aa.e */
/* loaded from: classes2-dex2jar.jar:aa/e.class */
public class C0052e extends InputStream {

    /* renamed from: a */
    public final /* synthetic */ C0053f f117a;

    public C0052e(C0053f c0053f) {
        this.f117a = c0053f;
    }

    @Override // java.io.InputStream
    public int available() {
        return (int) Math.min(this.f117a.f120b, 2147483647L);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.InputStream
    public int read() {
        C0053f c0053f = this.f117a;
        if (c0053f.f120b > 0) {
            return c0053f.readByte() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.f117a.m8842p(bArr, i, i2);
    }

    public String toString() {
        return this.f117a + ".inputStream()";
    }
}
