package p610i;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* renamed from: i.p */
/* loaded from: classes2-dex2jar.jar:i/p.class */
public interface AbstractC10280p extends Closeable, Flushable {
    /* renamed from: a */
    void mo706a(C10260c cVar, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    /* renamed from: f0 */
    C10282r mo705f0();

    void flush() throws IOException;
}
