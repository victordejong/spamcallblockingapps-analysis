package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzg.class */
public final class zzg {
    public static final zzg zza = new zzg(0, 0, 1, 1, null);
    public static final zzj<zzg> zzb = zze.zza;
    public final int zzc = 1;
    private AudioAttributes zzd;

    public /* synthetic */ zzg(int i, int i2, int i3, int i4, zzf zzfVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzg.class != obj.getClass()) {
            return false;
        }
        zzg zzgVar = (zzg) obj;
        return true;
    }

    public final int hashCode() {
        return 15699889;
    }

    public final AudioAttributes zza() {
        if (this.zzd == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
            if (zzfn.zza >= 29) {
                usage.setAllowedCapturePolicy(1);
            }
            this.zzd = usage.build();
        }
        return this.zzd;
    }
}
