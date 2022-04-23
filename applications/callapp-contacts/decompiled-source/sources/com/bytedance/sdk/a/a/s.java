package com.bytedance.sdk.a.a;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/s.class */
public interface s extends Closeable {
    long a(c cVar, long j) throws IOException;

    t a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
