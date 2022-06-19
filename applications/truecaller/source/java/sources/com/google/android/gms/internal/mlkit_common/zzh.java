package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzh.class */
public final class zzh {
    public static final zzh zza = zza().zzb().zzc();
    private static final zzh zzb = zza().zza().zzc();
    private final boolean zzc;
    private final boolean zzd;
    private final zzad<zzo> zze;

    private zzh(boolean z, boolean z2, zzad<zzo> zzadVar) {
        this.zzc = z;
        this.zzd = false;
        this.zze = zzadVar;
    }

    public /* synthetic */ zzh(boolean z, boolean z2, zzad zzadVar, zze zzeVar) {
        this(z, false, zzadVar);
    }

    public static /* synthetic */ int zza(zzh zzhVar, Context context, zzr zzrVar) {
        zzad<zzo> zzadVar = zzhVar.zze;
        int size = zzadVar.size();
        int i = 0;
        while (i < size) {
            i++;
            int i2 = zze.zza[zzadVar.get(i).zza(context, zzrVar, zzhVar.zzc) - 1];
            if (i2 == 1) {
                return zzq.zza;
            }
            if (i2 == 2) {
                return zzq.zzb;
            }
        }
        return zzq.zzc;
    }

    private static zzg zza() {
        return new zzg(null);
    }
}
