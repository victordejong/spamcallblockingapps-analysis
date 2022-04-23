package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.a.d;
import com.bytedance.sdk.a.b.a.a.e;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/c.class */
public final class c implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    final e f8080a;

    /* renamed from: b  reason: collision with root package name */
    final d f8081b;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f8081b.close();
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        this.f8081b.flush();
    }
}
