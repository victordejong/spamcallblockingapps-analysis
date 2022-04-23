package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeok.class */
public interface zzeok extends Closeable {
    /* renamed from: a */
    ByteBuffer mo12208a(long j, long j2) throws IOException;

    /* renamed from: b */
    void mo12207b(long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long position() throws IOException;

    int read(ByteBuffer byteBuffer) throws IOException;

    long size() throws IOException;
}
