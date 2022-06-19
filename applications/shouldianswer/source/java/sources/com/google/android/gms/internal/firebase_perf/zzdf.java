package com.google.android.gms.internal.firebase_perf;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdf.class */
final class zzdf implements Comparator<zzdd> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdd zzddVar, zzdd zzddVar2) {
        int zza;
        int zza2;
        zzdd zzddVar3 = zzddVar;
        zzdd zzddVar4 = zzddVar2;
        zzdm zzdmVar = (zzdm) zzddVar3.iterator();
        zzdm zzdmVar2 = (zzdm) zzddVar4.iterator();
        while (zzdmVar.hasNext() && zzdmVar2.hasNext()) {
            zza = zzdd.zza(zzdmVar.nextByte());
            zza2 = zzdd.zza(zzdmVar2.nextByte());
            int compare = Integer.compare(zza, zza2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzddVar3.size(), zzddVar4.size());
    }
}
