package com.googlecode.mp4parser;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/e.class */
public interface e extends Closeable {
    int a(ByteBuffer byteBuffer) throws IOException;

    long a() throws IOException;

    ByteBuffer a(long j, long j2) throws IOException;

    void a(long j) throws IOException;

    long b() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
