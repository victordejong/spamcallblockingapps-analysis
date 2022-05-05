package p645m;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* renamed from: m.r */
/* loaded from: classes3-dex2jar.jar:m/r.class */
public interface AbstractC15192r extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    C15194t timeout();

    void write(C15170c cVar, long j) throws IOException;
}
