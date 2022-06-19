package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drt.class */
public interface drt extends Closeable {
    /* renamed from: a */
    int mo15794a(ByteBuffer byteBuffer) throws IOException;

    /* renamed from: a */
    long mo15797a() throws IOException;

    /* renamed from: a */
    ByteBuffer mo15795a(long j, long j2) throws IOException;

    /* renamed from: a */
    void mo15796a(long j) throws IOException;

    /* renamed from: b */
    long mo15793b() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
