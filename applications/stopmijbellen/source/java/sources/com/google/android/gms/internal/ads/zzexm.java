package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexm.class */
public final class zzexm {
    private final zzcdq zza;
    private final int zzb;

    public zzexm(zzcdq zzcdqVar, int i) {
        this.zza = zzcdqVar;
        this.zzb = i;
    }

    public final int zza() {
        return this.zzb;
    }

    public final PackageInfo zzb() {
        return this.zza.zzf;
    }

    public final String zzc() {
        return this.zza.zzd;
    }

    public final String zzd() {
        return this.zza.zza.getString("ms");
    }

    public final String zze() {
        return this.zza.zzh;
    }

    public final List<String> zzf() {
        return this.zza.zze;
    }

    public final boolean zzg() {
        return this.zza.zza.getBoolean("is_gbid");
    }
}
