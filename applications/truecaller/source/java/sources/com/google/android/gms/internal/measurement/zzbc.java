package com.google.android.gms.internal.measurement;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbc.class */
public final class zzbc extends zzaw {
    public zzbc() {
        this.zza.add(zzbl.AND);
        this.zza.add(zzbl.NOT);
        this.zza.add(zzbl.OR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal == 1) {
            zzap zzb = zzgVar.zzb((zzap) C22128a.m8730B1(zzbl.AND, 2, list, 0));
            return !zzb.zzg().booleanValue() ? zzb : zzgVar.zzb((zzap) list.get(1));
        } else if (ordinal == 47) {
            return new zzaf(Boolean.valueOf(!zzgVar.zzb((zzap) C22128a.m8730B1(zzbl.NOT, 1, list, 0)).zzg().booleanValue()));
        } else {
            if (ordinal != 50) {
                return super.zzb(str);
            }
            zzap zzb2 = zzgVar.zzb((zzap) C22128a.m8730B1(zzbl.OR, 2, list, 0));
            return zzb2.zzg().booleanValue() ? zzb2 : zzgVar.zzb((zzap) list.get(1));
        }
    }
}
