package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: org.apache.commons.io.input.CountingInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/CountingInputStream.class */
public class CountingInputStream extends ProxyInputStream {
    private long count;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream
    protected void afterRead(int i) {
        synchronized (this) {
            if (i != -1) {
                this.count += i;
            }
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

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip;
        synchronized (this) {
            skip = super.skip(j);
            this.count += skip;
        }
        return skip;
    }
}
