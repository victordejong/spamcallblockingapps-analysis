package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhf.class */
public interface dhf extends Closeable {
    /* renamed from: a */
    int mo9460a(ByteBuffer byteBuffer);

    /* renamed from: a */
    long mo9463a();

    /* renamed from: a */
    ByteBuffer mo9461a(long j, long j2);

    /* renamed from: a */
    void mo9462a(long j);

    /* renamed from: b */
    long mo9459b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}
