package p000a;

import java.io.Closeable;
import java.io.Flushable;
/* renamed from: a.r */
/* loaded from: classes-dex2jar.jar:a/r.class */
public interface AbstractC0025r extends Closeable, Flushable {
    /* renamed from: a */
    C0027t mo2091a();

    /* renamed from: a_ */
    void mo2089a_(C0005c c0005c, long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();
}
