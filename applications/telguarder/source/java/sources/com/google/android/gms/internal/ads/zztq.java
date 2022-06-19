package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztq.class */
final class zztq extends PushbackInputStream {
    private final /* synthetic */ zztp zzbwc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zztq(zztp zztpVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zzbwc = zztpVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.zzbwc.zzbvu.disconnect();
            super.close();
        }
    }
}
