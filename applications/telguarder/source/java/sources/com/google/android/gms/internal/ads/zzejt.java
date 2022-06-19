package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejt.class */
final class zzejt implements Comparator<zzejr> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzejr zzejrVar, zzejr zzejrVar2) {
        int zzb;
        int zzb2;
        zzejr zzejrVar3 = zzejrVar;
        zzejr zzejrVar4 = zzejrVar2;
        zzejw zzejwVar = (zzejw) zzejrVar3.iterator();
        zzejw zzejwVar2 = (zzejw) zzejrVar4.iterator();
        while (zzejwVar.hasNext() && zzejwVar2.hasNext()) {
            zzb = zzejr.zzb(zzejwVar.nextByte());
            zzb2 = zzejr.zzb(zzejwVar2.nextByte());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzejrVar3.size(), zzejrVar4.size());
    }
}
