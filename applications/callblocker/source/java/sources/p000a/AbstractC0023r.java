package p000a;

import java.io.Closeable;
import java.io.Flushable;
/* renamed from: a.r */
/* loaded from: classes-dex2jar.jar:a/r.class */
public interface AbstractC0023r extends Closeable, Flushable {
    /* renamed from: a */
    C0025t mo408a();

    /* renamed from: a_ */
    void mo406a_(C0005c c0005c, long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();
}
