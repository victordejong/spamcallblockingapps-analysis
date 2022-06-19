package org.bouncycastle.crypto.tls;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsOutputStream.class */
public class TlsOutputStream extends OutputStream {
    private byte[] buf = new byte[1];
    private TlsProtocolHandler handler;

    public TlsOutputStream(TlsProtocolHandler tlsProtocolHandler) {
        this.handler = tlsProtocolHandler;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.handler.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.handler.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.buf;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.handler.writeData(bArr, i, i2);
    }
}
