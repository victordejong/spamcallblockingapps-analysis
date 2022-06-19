package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzba.class */
public final class zzba implements Comparator {
    public final /* synthetic */ zzai zza;
    public final /* synthetic */ zzg zzb;

    public zzba(zzai zzaiVar, zzg zzgVar) {
        this.zza = zzaiVar;
        this.zzb = zzgVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzap zzapVar = (zzap) obj;
        zzap zzapVar2 = (zzap) obj2;
        zzai zzaiVar = this.zza;
        zzg zzgVar = this.zzb;
        int i = 1;
        if (!(zzapVar instanceof zzau)) {
            i = zzapVar2 instanceof zzau ? -1 : zzaiVar == null ? zzapVar.zzi().compareTo(zzapVar2.zzi()) : (int) zzh.zza(zzaiVar.zza(zzgVar, Arrays.asList(zzapVar, zzapVar2)).zzh().doubleValue());
        } else if (zzapVar2 instanceof zzau) {
            return 0;
        }
        return i;
    }
}
