package com.google.android.gms.internal.mlkit_translate;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzja.class */
public final class zzja implements Comparator<zziy> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zziy zziyVar, zziy zziyVar2) {
        int zzb;
        int zzb2;
        zziy zziyVar3 = zziyVar;
        zziy zziyVar4 = zziyVar2;
        zzjh zzjhVar = (zzjh) zziyVar3.iterator();
        zzjh zzjhVar2 = (zzjh) zziyVar4.iterator();
        while (zzjhVar.hasNext() && zzjhVar2.hasNext()) {
            zzb = zziy.zzb(zzjhVar.zza());
            zzb2 = zziy.zzb(zzjhVar2.zza());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zziyVar3.zza(), zziyVar4.zza());
    }
}
