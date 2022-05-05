package org.spongycastle.util.p039io;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: org.spongycastle.util.io.TeeOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/io/TeeOutputStream.class */
public class TeeOutputStream extends OutputStream {
    private OutputStream output1;
    private OutputStream output2;

    public TeeOutputStream(OutputStream outputStream, OutputStream outputStream2) {
        this.output1 = outputStream;
        this.output2 = outputStream2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.output1.close();
        this.output2.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.output1.flush();
        this.output2.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.output1.write(i);
        this.output2.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.output1.write(bArr);
        this.output2.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.output1.write(bArr, i, i2);
        this.output2.write(bArr, i, i2);
    }
}
