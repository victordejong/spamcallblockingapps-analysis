package com.bytedance.sdk.p127a.p128a;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.a.r */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/r.class */
public interface AbstractC3989r extends Closeable, Flushable {
    /* renamed from: a */
    C3991t mo36723a();

    /* renamed from: a_ */
    void mo36721a_(C3969c c3969c, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;
}
