package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayu.class */
public final class zzayu extends PushbackInputStream {
    public final /* synthetic */ zzayv zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzayu(zzayv zzayvVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zza = zzayvVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            zzayx.zzf(this.zza.zzc);
            super.close();
        }
    }
}
