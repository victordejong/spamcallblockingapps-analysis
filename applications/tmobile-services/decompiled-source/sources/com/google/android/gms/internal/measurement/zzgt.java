package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgt.class */
final class zzgt implements Comparator<zzgr> {
    zzgt() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzgr zzgrVar, zzgr zzgrVar2) {
        int s;
        int s2;
        zzgr zzgrVar3 = zzgrVar;
        zzgr zzgrVar4 = zzgrVar2;
        zzgw zzgwVar = (zzgw) zzgrVar3.iterator();
        zzgw zzgwVar2 = (zzgw) zzgrVar4.iterator();
        while (zzgwVar.hasNext() && zzgwVar2.hasNext()) {
            s = zzgr.m12631s(zzgwVar.zza());
            s2 = zzgr.m12631s(zzgwVar2.zza());
            int compare = Integer.compare(s, s2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzgrVar3.mo12617d(), zzgrVar4.mo12617d());
    }
}
