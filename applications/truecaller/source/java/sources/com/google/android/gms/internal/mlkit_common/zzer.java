package com.google.android.gms.internal.mlkit_common;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzer.class */
public final class zzer implements Comparator<zzep> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzep zzepVar, zzep zzepVar2) {
        int zzb;
        int zzb2;
        zzep zzepVar3 = zzepVar;
        zzep zzepVar4 = zzepVar2;
        zzeu zzeuVar = (zzeu) zzepVar3.iterator();
        zzeu zzeuVar2 = (zzeu) zzepVar4.iterator();
        while (zzeuVar.hasNext() && zzeuVar2.hasNext()) {
            zzb = zzep.zzb(zzeuVar.zza());
            zzb2 = zzep.zzb(zzeuVar2.zza());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzepVar3.zza(), zzepVar4.zza());
    }
}
