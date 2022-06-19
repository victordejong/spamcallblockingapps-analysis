package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgiw.class */
final class zzgiw implements Comparator<zzgjf> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzgjf zzgjfVar, zzgjf zzgjfVar2) {
        int i;
        zzgjf zzgjfVar3 = zzgjfVar;
        zzgjf zzgjfVar4 = zzgjfVar2;
        zzgiz it2 = zzgjfVar3.iterator();
        zzgiz it3 = zzgjfVar4.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            i = zzgiv.zza(it2.zza() & 255, it3.zza() & 255);
            if (i != 0) {
                break;
            }
        }
        i = zzgiv.zza(zzgjfVar3.zzd(), zzgjfVar4.zzd());
        return i;
    }
}
