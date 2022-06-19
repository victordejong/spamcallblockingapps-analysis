package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzag;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GmsSignatureVerifier.class */
public class GmsSignatureVerifier {
    private static final zzz zza;
    private static final zzz zzb;

    static {
        zzx zzxVar = new zzx();
        zzxVar.zzd("com.google.android.gms");
        zzxVar.zza(204200000L);
        zzk zzkVar = zzm.zzd;
        zzxVar.zzc(zzag.zzn(zzkVar.zzf(), zzm.zzb.zzf()));
        zzk zzkVar2 = zzm.zzc;
        zzxVar.zzb(zzag.zzn(zzkVar2.zzf(), zzm.zza.zzf()));
        zza = zzxVar.zze();
        zzx zzxVar2 = new zzx();
        zzxVar2.zzd("com.android.vending");
        zzxVar2.zza(82240000L);
        zzxVar2.zzc(zzag.zzm(zzkVar.zzf()));
        zzxVar2.zzb(zzag.zzm(zzkVar2.zzf()));
        zzb = zzxVar2.zze();
    }
}
