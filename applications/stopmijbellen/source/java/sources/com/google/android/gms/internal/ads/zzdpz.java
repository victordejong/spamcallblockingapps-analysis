package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpz.class */
public final class zzdpz {
    private zzbof zza;

    public zzdpz(zzdpo zzdpoVar) {
        this.zza = zzdpoVar;
    }

    public final zzbof zza() {
        zzbof zzbofVar;
        synchronized (this) {
            zzbofVar = this.zza;
        }
        return zzbofVar;
    }

    public final void zzb(zzbof zzbofVar) {
        synchronized (this) {
            this.zza = zzbofVar;
        }
    }
}
