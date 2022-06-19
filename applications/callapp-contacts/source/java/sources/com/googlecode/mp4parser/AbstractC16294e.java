package com.googlecode.mp4parser;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.e */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/e.class */
public interface AbstractC16294e extends Closeable {
    /* renamed from: a */
    int mo7486a(ByteBuffer byteBuffer) throws IOException;

    /* renamed from: a */
    long mo7489a() throws IOException;

    /* renamed from: a */
    ByteBuffer mo7487a(long j, long j2) throws IOException;

    /* renamed from: a */
    void mo7488a(long j) throws IOException;

    /* renamed from: b */
    long mo7485b() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
