package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbar.class */
final class zzbar extends PushbackInputStream {
    public final /* synthetic */ zzbas zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbar(zzbas zzbasVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zza = zzbasVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            zzbau.zze(this.zza.zzc);
            super.close();
        }
    }
}
