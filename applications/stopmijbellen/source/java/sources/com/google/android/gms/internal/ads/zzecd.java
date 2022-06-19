package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecd.class */
public class zzecd extends Exception {
    private final int zza;

    public zzecd(int i) {
        this.zza = i;
    }

    public zzecd(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzecd(int i, String str, Throwable th) {
        super(str, th);
        this.zza = 1;
    }

    public final int zza() {
        return this.zza;
    }
}
