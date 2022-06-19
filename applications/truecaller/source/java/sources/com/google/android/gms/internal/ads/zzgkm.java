package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkm.class */
public interface zzgkm extends Closeable {
    int zza(ByteBuffer byteBuffer) throws IOException;

    long zzb() throws IOException;

    long zzc() throws IOException;

    void zzd(long j) throws IOException;

    ByteBuffer zze(long j, long j2) throws IOException;
}
