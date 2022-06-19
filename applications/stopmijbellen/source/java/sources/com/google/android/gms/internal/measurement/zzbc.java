package com.google.android.gms.internal.measurement;

import java.util.List;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbc.class */
public final class zzbc extends zzaw {
    public zzbc() {
        this.zza.add(zzbl.AND);
        this.zza.add(zzbl.NOT);
        this.zza.add(zzbl.OR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal == 1) {
            zzap zza = zzgVar.zza((zzap) C0028d.m8916d(zzbl.AND, 2, list, 0));
            return !zza.zze().booleanValue() ? zza : zzgVar.zza(list.get(1));
        } else if (ordinal == 47) {
            return new zzaf(Boolean.valueOf(!zzgVar.zza((zzap) C0028d.m8916d(zzbl.NOT, 1, list, 0)).zze().booleanValue()));
        } else {
            if (ordinal != 50) {
                return super.zzb(str);
            }
            zzap zza2 = zzgVar.zza((zzap) C0028d.m8916d(zzbl.OR, 2, list, 0));
            return zza2.zze().booleanValue() ? zza2 : zzgVar.zza(list.get(1));
        }
    }
}
