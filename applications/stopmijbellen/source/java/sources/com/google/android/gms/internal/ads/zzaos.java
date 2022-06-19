package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaos.class */
public final class zzaos extends Exception {
    private zzaos(int i, String str, Throwable th, int i2) {
        super(null, th);
    }

    public static zzaos zza(Exception exc, int i) {
        return new zzaos(1, null, exc, i);
    }

    public static zzaos zzb(IOException iOException) {
        return new zzaos(0, null, iOException, -1);
    }

    public static zzaos zzc(RuntimeException runtimeException) {
        return new zzaos(2, null, runtimeException, -1);
    }
}
