package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.p131a.AbstractC4004e;
import com.bytedance.sdk.p127a.p129b.p130a.p131a.C4001d;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/c.class */
public final class C4106c implements Closeable, Flushable {

    /* renamed from: a */
    final AbstractC4004e f14915a;

    /* renamed from: b */
    final C4001d f14916b;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f14916b.close();
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        this.f14916b.flush();
    }
}
