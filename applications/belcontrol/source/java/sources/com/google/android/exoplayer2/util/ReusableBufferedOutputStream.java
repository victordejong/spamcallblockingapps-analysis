package com.google.android.exoplayer2.util;

import java.io.BufferedOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/ReusableBufferedOutputStream.class */
public final class ReusableBufferedOutputStream extends BufferedOutputStream {
    private boolean closed;

    public ReusableBufferedOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public ReusableBufferedOutputStream(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Throwable th;
        Throwable th2;
        this.closed = true;
        try {
            flush();
            th = null;
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            ((BufferedOutputStream) this).out.close();
            th2 = th;
        } catch (Throwable th4) {
            th2 = th;
            if (th == null) {
                th2 = th4;
            }
        }
        if (th2 != null) {
            Util.sneakyThrow(th2);
        }
    }

    public void reset(OutputStream outputStream) {
        Assertions.checkState(this.closed);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.closed = false;
    }
}
