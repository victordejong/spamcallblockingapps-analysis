package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdym.class */
public class zzdym extends Exception {
    private final int zza;

    public zzdym(int i) {
        this.zza = i;
    }

    public zzdym(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzdym(int i, String str, Throwable th) {
        super(str, th);
        this.zza = 1;
    }

    public final int zza() {
        return this.zza;
    }
}
