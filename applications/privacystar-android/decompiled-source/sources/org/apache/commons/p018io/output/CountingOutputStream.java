package org.apache.commons.p018io.output;

import java.io.OutputStream;
/* renamed from: org.apache.commons.io.output.CountingOutputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/CountingOutputStream.class */
public class CountingOutputStream extends ProxyOutputStream {
    private long count = 0;

    public CountingOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.apache.commons.p018io.output.ProxyOutputStream
    protected void beforeWrite(int i) {
        synchronized (this) {
            this.count += i;
        }
    }

    public long getByteCount() {
        long j;
        synchronized (this) {
            j = this.count;
        }
        return j;
    }

    public int getCount() {
        long byteCount = getByteCount();
        if (byteCount <= 2147483647L) {
            return (int) byteCount;
        }
        throw new ArithmeticException("The byte count " + byteCount + " is too large to be converted to an int");
    }

    public long resetByteCount() {
        long j;
        synchronized (this) {
            j = this.count;
            this.count = 0L;
        }
        return j;
    }

    public int resetCount() {
        long resetByteCount = resetByteCount();
        if (resetByteCount <= 2147483647L) {
            return (int) resetByteCount;
        }
        throw new ArithmeticException("The byte count " + resetByteCount + " is too large to be converted to an int");
    }
}
