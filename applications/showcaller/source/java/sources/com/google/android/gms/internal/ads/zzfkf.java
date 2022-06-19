package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfkf.class */
public final class zzfkf extends Exception {
    private final int zza;

    public zzfkf(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzfkf(int i, Throwable th) {
        super(th);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }
}
