package com.bytedance.sdk.a.a;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/r.class */
public interface r extends Closeable, Flushable {
    t a();

    void a_(c cVar, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;
}
