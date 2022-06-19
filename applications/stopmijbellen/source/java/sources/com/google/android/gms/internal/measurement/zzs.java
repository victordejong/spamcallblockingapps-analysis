package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzs.class */
public final class zzs extends zzai {
    public final boolean zza;
    public final boolean zzb;
    public final /* synthetic */ zzt zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzt zztVar, boolean z, boolean z2) {
        super("log");
        this.zzc = zztVar;
        this.zza = z;
        this.zzb = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List<zzap> list) {
        zzr zzrVar;
        zzr zzrVar2;
        zzr zzrVar3;
        zzh.zzb("log", 1, list);
        if (list.size() == 1) {
            zzrVar3 = this.zzc.zza;
            zzrVar3.zza(3, zzgVar.zza(list.get(0)).zzc(), Collections.emptyList(), this.zza, this.zzb);
            return zzap.zzf;
        }
        int zzg = zzh.zzg(zzgVar.zza(list.get(0)).zzd().doubleValue());
        int i = zzg != 2 ? zzg != 3 ? zzg != 5 ? zzg != 6 ? 3 : 2 : 5 : 1 : 4;
        String zzc = zzgVar.zza(list.get(1)).zzc();
        if (list.size() == 2) {
            zzrVar2 = this.zzc.zza;
            zzrVar2.zza(i, zzc, Collections.emptyList(), this.zza, this.zzb);
            return zzap.zzf;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 2; i2 < Math.min(list.size(), 5); i2++) {
            arrayList.add(zzgVar.zza(list.get(i2)).zzc());
        }
        zzrVar = this.zzc.zza;
        zzrVar.zza(i, zzc, arrayList, this.zza, this.zzb);
        return zzap.zzf;
    }
}
