package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelz.class */
final class zzelz extends zzely {
    /* JADX INFO: Access modifiers changed from: private */
    public zzelz() {
        super();
    }

    private static <E> zzell<E> zzc(Object obj, long j) {
        return (zzell) zzeoh.zzp(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final <L> List<L> zza(Object obj, long j) {
        zzell zzc = zzc(obj, j);
        zzell zzellVar = zzc;
        if (!zzc.zzbge()) {
            int size = zzc.size();
            zzellVar = zzc.zzfy(size == 0 ? 10 : size << 1);
            zzeoh.zza(obj, j, zzellVar);
        }
        return zzellVar;
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzell zzc = zzc(obj, j);
        zzell<E> zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzell<E> zzellVar = zzc;
        if (size > 0) {
            zzellVar = zzc;
            if (size2 > 0) {
                zzellVar = zzc;
                if (!zzc.zzbge()) {
                    zzellVar = zzc.zzfy(size2 + size);
                }
                zzellVar.addAll(zzc2);
            }
        }
        zzell<E> zzellVar2 = zzc2;
        if (size > 0) {
            zzellVar2 = zzellVar;
        }
        zzeoh.zza(obj, j, zzellVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final void zzb(Object obj, long j) {
        zzc(obj, j).zzbgf();
    }
}
