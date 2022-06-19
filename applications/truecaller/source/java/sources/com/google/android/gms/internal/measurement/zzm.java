package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzm.class */
public final class zzm extends zzai {
    public final /* synthetic */ zzo zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzn zznVar, String str, zzo zzoVar) {
        super("getValue");
        this.zza = zzoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List list) {
        zzh.zzh("getValue", 2, list);
        zzap zzb = zzgVar.zzb((zzap) list.get(0));
        zzat zzb2 = zzgVar.zzb((zzap) list.get(1));
        String zza = this.zza.zza(zzb.zzi());
        if (zza != null) {
            zzb2 = new zzat(zza);
        }
        return zzb2;
    }
}
