package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdis.class */
public final class zzdis {
    private final List<String> zza;
    private final zzffu zzb;
    private boolean zzc;

    public zzdis(zzezz zzezzVar, zzffu zzffuVar) {
        this.zza = zzezzVar.zzp;
        this.zzb = zzffuVar;
    }

    public final void zza() {
        if (!this.zzc) {
            this.zzb.zza(this.zza);
            this.zzc = true;
        }
    }
}
