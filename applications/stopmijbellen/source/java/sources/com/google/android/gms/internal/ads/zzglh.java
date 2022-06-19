package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglh.class */
final class zzglh extends zzglj {
    private zzglh() {
        super(null);
    }

    public /* synthetic */ zzglh(zzglg zzglgVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzglj
    public final <L> List<L> zza(Object obj, long j) {
        zzgku zzgkuVar = (zzgku) zzgnp.zzh(obj, j);
        zzgku zzgkuVar2 = zzgkuVar;
        if (!zzgkuVar.zzc()) {
            int size = zzgkuVar.size();
            zzgkuVar2 = zzgkuVar.zzd(size == 0 ? 10 : size + size);
            zzgnp.zzv(obj, j, zzgkuVar2);
        }
        return zzgkuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzglj
    public final void zzb(Object obj, long j) {
        ((zzgku) zzgnp.zzh(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzglj
    public final <E> void zzc(Object obj, Object obj2, long j) {
        zzgku zzgkuVar = (zzgku) zzgnp.zzh(obj, j);
        zzgku<E> zzgkuVar2 = (zzgku) zzgnp.zzh(obj2, j);
        int size = zzgkuVar.size();
        int size2 = zzgkuVar2.size();
        zzgku<E> zzgkuVar3 = zzgkuVar;
        if (size > 0) {
            zzgkuVar3 = zzgkuVar;
            if (size2 > 0) {
                zzgkuVar3 = zzgkuVar;
                if (!zzgkuVar.zzc()) {
                    zzgkuVar3 = zzgkuVar.zzd(size2 + size);
                }
                zzgkuVar3.addAll(zzgkuVar2);
            }
        }
        if (size <= 0) {
            zzgkuVar3 = zzgkuVar2;
        }
        zzgnp.zzv(obj, j, zzgkuVar3);
    }
}
