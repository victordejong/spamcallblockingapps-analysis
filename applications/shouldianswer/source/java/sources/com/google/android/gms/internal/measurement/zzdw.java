package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdw.class */
final class zzdw implements Comparator<zzdu> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdu zzduVar, zzdu zzduVar2) {
        int zzb;
        int zzb2;
        zzdu zzduVar3 = zzduVar;
        zzdu zzduVar4 = zzduVar2;
        zzed zzedVar = (zzed) zzduVar3.iterator();
        zzed zzedVar2 = (zzed) zzduVar4.iterator();
        while (zzedVar.hasNext() && zzedVar2.hasNext()) {
            zzb = zzdu.zzb(zzedVar.zza());
            zzb2 = zzdu.zzb(zzedVar2.zza());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzduVar3.zza(), zzduVar4.zza());
    }
}
