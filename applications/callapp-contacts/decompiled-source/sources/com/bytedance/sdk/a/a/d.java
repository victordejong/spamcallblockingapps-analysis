package com.bytedance.sdk.a.a;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/d.class */
public interface d extends r, WritableByteChannel {
    d b(String str) throws IOException;

    c c();

    d c(byte[] bArr) throws IOException;

    d c(byte[] bArr, int i, int i2) throws IOException;

    @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
    void flush() throws IOException;

    d g(int i) throws IOException;

    d h(int i) throws IOException;

    d i(int i) throws IOException;

    d k(long j) throws IOException;

    d l(long j) throws IOException;

    d u() throws IOException;
}
