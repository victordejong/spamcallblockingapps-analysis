package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfoe.class */
public final class zzfoe extends Exception {
    private final int zza;

    public zzfoe(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzfoe(int i, Throwable th) {
        super(th);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }
}
