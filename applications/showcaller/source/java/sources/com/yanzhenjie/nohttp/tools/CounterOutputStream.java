package com.yanzhenjie.nohttp.tools;

import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/CounterOutputStream.class */
public class CounterOutputStream extends OutputStream {
    private final AtomicLong length = new AtomicLong(0);

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public long get() {
        return this.length.get();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.length.addAndGet(1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.length.addAndGet(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.length.addAndGet(i2);
    }

    public void writeLength(long j) {
        this.length.addAndGet(j);
    }
}
