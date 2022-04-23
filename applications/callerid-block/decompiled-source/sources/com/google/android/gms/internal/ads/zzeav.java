package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeav.class */
public final class zzeav extends Exception {
    private final int zza;

    public zzeav(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzeav(int i, Throwable th) {
        super(th);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }
}
