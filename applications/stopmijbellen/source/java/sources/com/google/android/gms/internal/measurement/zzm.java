package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzm.class */
public final class zzm extends zzai {
    public final /* synthetic */ zzo zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzn zznVar, String str, zzo zzoVar) {
        super("getValue");
        this.zza = zzoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List<zzap> list) {
        zzh.zza("getValue", 2, list);
        zzap zza = zzgVar.zza(list.get(0));
        zzat zza2 = zzgVar.zza(list.get(1));
        String zza3 = this.zza.zza(zza.zzc());
        if (zza3 != null) {
            zza2 = new zzat(zza3);
        }
        return zza2;
    }
}
