package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggu.class */
public final class zzggu extends zzggw {
    private zzggu() {
        super(null);
    }

    public /* synthetic */ zzggu(zzggv zzggvVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzggw
    public final <L> List<L> zza(Object obj, long j) {
        zzggj zzggjVar = (zzggj) zzgiy.zzn(obj, j);
        zzggj zzggjVar2 = zzggjVar;
        if (!zzggjVar.zza()) {
            int size = zzggjVar.size();
            zzggjVar2 = zzggjVar.zze(size == 0 ? 10 : size + size);
            zzgiy.zzo(obj, j, zzggjVar2);
        }
        return zzggjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzggw
    public final void zzb(Object obj, long j) {
        ((zzggj) zzgiy.zzn(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzggw
    public final <E> void zzc(Object obj, Object obj2, long j) {
        zzggj zzggjVar = (zzggj) zzgiy.zzn(obj, j);
        zzggj<E> zzggjVar2 = (zzggj) zzgiy.zzn(obj2, j);
        int size = zzggjVar.size();
        int size2 = zzggjVar2.size();
        zzggj<E> zzggjVar3 = zzggjVar;
        if (size > 0) {
            zzggjVar3 = zzggjVar;
            if (size2 > 0) {
                zzggjVar3 = zzggjVar;
                if (!zzggjVar.zza()) {
                    zzggjVar3 = zzggjVar.zze(size2 + size);
                }
                zzggjVar3.addAll(zzggjVar2);
            }
        }
        if (size <= 0) {
            zzggjVar3 = zzggjVar2;
        }
        zzgiy.zzo(obj, j, zzggjVar3);
    }
}
