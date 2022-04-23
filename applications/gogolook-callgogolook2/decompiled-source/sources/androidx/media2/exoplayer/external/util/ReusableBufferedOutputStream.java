package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ReusableBufferedOutputStream.class */
public final class ReusableBufferedOutputStream extends BufferedOutputStream {
    public boolean closed;

    public ReusableBufferedOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public ReusableBufferedOutputStream(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
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
            th2 = th4;
            th2 = th;
            if (th == null) {
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
