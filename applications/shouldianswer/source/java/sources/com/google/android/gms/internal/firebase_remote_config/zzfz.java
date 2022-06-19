package com.google.android.gms.internal.firebase_remote_config;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfz.class */
final class zzfz implements Comparator<zzfx> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzfx zzfxVar, zzfx zzfxVar2) {
        int zza;
        int zza2;
        zzfx zzfxVar3 = zzfxVar;
        zzfx zzfxVar4 = zzfxVar2;
        zzgg zzggVar = (zzgg) zzfxVar3.iterator();
        zzgg zzggVar2 = (zzgg) zzfxVar4.iterator();
        while (zzggVar.hasNext() && zzggVar2.hasNext()) {
            zza = zzfx.zza(zzggVar.nextByte());
            zza2 = zzfx.zza(zzggVar2.nextByte());
            int compare = Integer.compare(zza, zza2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzfxVar3.size(), zzfxVar4.size());
    }
}
