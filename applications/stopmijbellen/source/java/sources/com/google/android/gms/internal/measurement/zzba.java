package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzba.class */
public final class zzba implements Comparator<zzap> {
    public final /* synthetic */ zzai zza;
    public final /* synthetic */ zzg zzb;

    public zzba(zzai zzaiVar, zzg zzgVar) {
        this.zza = zzaiVar;
        this.zzb = zzgVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzap zzapVar, zzap zzapVar2) {
        zzap zzapVar3 = zzapVar;
        zzap zzapVar4 = zzapVar2;
        zzai zzaiVar = this.zza;
        zzg zzgVar = this.zzb;
        int i = 1;
        if (!(zzapVar3 instanceof zzau)) {
            i = zzapVar4 instanceof zzau ? -1 : zzaiVar == null ? zzapVar3.zzc().compareTo(zzapVar4.zzc()) : (int) zzh.zzi(zzaiVar.zza(zzgVar, Arrays.asList(zzapVar3, zzapVar4)).zzd().doubleValue());
        } else if (zzapVar4 instanceof zzau) {
            return 0;
        }
        return i;
    }
}
