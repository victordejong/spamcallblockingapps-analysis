package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmj.class */
public final class zzdmj {
    private zzbme zza;

    public zzdmj(zzdly zzdlyVar) {
        this.zza = zzdlyVar;
    }

    public final zzbme zza() {
        zzbme zzbmeVar;
        synchronized (this) {
            zzbmeVar = this.zza;
        }
        return zzbmeVar;
    }

    public final void zzb(zzbme zzbmeVar) {
        synchronized (this) {
            this.zza = zzbmeVar;
        }
    }
}
