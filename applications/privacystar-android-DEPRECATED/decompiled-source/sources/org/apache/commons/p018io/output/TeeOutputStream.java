package org.apache.commons.p018io.output;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: org.apache.commons.io.output.TeeOutputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/TeeOutputStream.class */
public class TeeOutputStream extends ProxyOutputStream {
    protected OutputStream branch;

    public TeeOutputStream(OutputStream outputStream, OutputStream outputStream2) {
        super(outputStream);
        this.branch = outputStream2;
    }

    @Override // org.apache.commons.p018io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            this.branch.close();
        }
    }

    @Override // org.apache.commons.p018io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        super.flush();
        this.branch.flush();
    }

    @Override // org.apache.commons.p018io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        synchronized (this) {
            super.write(i);
            this.branch.write(i);
        }
    }

    @Override // org.apache.commons.p018io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        synchronized (this) {
            super.write(bArr);
            this.branch.write(bArr);
        }
    }

    @Override // org.apache.commons.p018io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            super.write(bArr, i, i2);
            this.branch.write(bArr, i, i2);
        }
    }
}
