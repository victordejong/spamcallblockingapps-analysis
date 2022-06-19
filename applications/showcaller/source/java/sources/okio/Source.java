package okio;

import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:okio/Source.class */
public interface Source extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    long read(Buffer buffer, long j);

    Timeout timeout();
}
