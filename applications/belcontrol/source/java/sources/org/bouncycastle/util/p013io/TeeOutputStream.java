package org.bouncycastle.util.p013io;

import java.io.OutputStream;
/* renamed from: org.bouncycastle.util.io.TeeOutputStream */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/io/TeeOutputStream.class */
public class TeeOutputStream extends OutputStream {
    private OutputStream output1;
    private OutputStream output2;

    public TeeOutputStream(OutputStream outputStream, OutputStream outputStream2) {
        this.output1 = outputStream;
        this.output2 = outputStream2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.output1.close();
        this.output2.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.output1.flush();
        this.output2.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.output1.write(i);
        this.output2.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.output1.write(bArr);
        this.output2.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.output1.write(bArr, i, i2);
        this.output2.write(bArr, i, i2);
    }
}
