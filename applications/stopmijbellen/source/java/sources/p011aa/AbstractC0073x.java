package p011aa;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* renamed from: aa.x */
/* loaded from: classes2-dex2jar.jar:aa/x.class */
public interface AbstractC0073x extends Closeable, Flushable {
    /* renamed from: E */
    void mo613E(C0053f c0053f, long j) throws IOException;

    /* renamed from: b */
    C0075z mo612b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;
}
