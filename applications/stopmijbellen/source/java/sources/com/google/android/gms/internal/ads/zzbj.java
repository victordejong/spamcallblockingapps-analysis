package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbj.class */
public class zzbj extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzbj(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzbj zza(String str, Throwable th) {
        return new zzbj(str, th, true, 1);
    }

    public static zzbj zzb(String str, Throwable th) {
        return new zzbj(str, th, true, 0);
    }

    public static zzbj zzc(String str) {
        return new zzbj(str, null, false, 1);
    }
}
