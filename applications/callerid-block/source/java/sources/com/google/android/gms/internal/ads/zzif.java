package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzif.class */
public final class zzif extends Exception {
    private zzif(int i, String str, Throwable th, int i2) {
        super(null, th);
    }

    public static zzif zza(Exception exc, int i) {
        return new zzif(1, null, exc, i);
    }

    public static zzif zzb(IOException iOException) {
        return new zzif(0, null, iOException, -1);
    }

    static zzif zzc(RuntimeException runtimeException) {
        return new zzif(2, null, runtimeException, -1);
    }
}
