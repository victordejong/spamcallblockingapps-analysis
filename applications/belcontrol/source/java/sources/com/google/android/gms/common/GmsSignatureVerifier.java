package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzu;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GmsSignatureVerifier.class */
public class GmsSignatureVerifier {
    private static final zzz zza;
    private static final zzz zzb;

    static {
        zzy zzyVar = new zzy();
        zzyVar.zza("com.google.android.gms");
        zzyVar.zzb(204200000L);
        zzk zzkVar = zzm.zzd;
        zzyVar.zzc(zzu.zzk(zzkVar.zzc(), zzm.zzb.zzc()));
        zzk zzkVar2 = zzm.zzc;
        zzyVar.zzd(zzu.zzk(zzkVar2.zzc(), zzm.zza.zzc()));
        zza = zzyVar.zze();
        zzy zzyVar2 = new zzy();
        zzyVar2.zza("com.android.vending");
        zzyVar2.zzb(82240000L);
        zzyVar2.zzc(zzu.zzj(zzkVar.zzc()));
        zzyVar2.zzd(zzu.zzj(zzkVar2.zzc()));
        zzb = zzyVar2.zze();
    }
}
