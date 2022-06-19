package com.google.android.gms.internal.firebase_remote_config;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzib.class */
final class zzib extends zzia {
    /* JADX INFO: Access modifiers changed from: private */
    public zzib() {
        super();
    }

    private static <E> zzhn<E> zzc(Object obj, long j) {
        return (zzhn) zzkd.zzp(obj, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzia
    public final <L> List<L> zza(Object obj, long j) {
        zzhn zzc = zzc(obj, j);
        zzhn zzhnVar = zzc;
        if (!zzc.zzer()) {
            int size = zzc.size();
            zzhnVar = zzc.zzu(size == 0 ? 10 : size << 1);
            zzkd.zza(obj, j, zzhnVar);
        }
        return zzhnVar;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzia
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzhn zzc = zzc(obj, j);
        zzhn<E> zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzhn<E> zzhnVar = zzc;
        if (size > 0) {
            zzhnVar = zzc;
            if (size2 > 0) {
                zzhnVar = zzc;
                if (!zzc.zzer()) {
                    zzhnVar = zzc.zzu(size2 + size);
                }
                zzhnVar.addAll(zzc2);
            }
        }
        zzhn<E> zzhnVar2 = zzc2;
        if (size > 0) {
            zzhnVar2 = zzhnVar;
        }
        zzkd.zza(obj, j, zzhnVar2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzia
    public final void zzb(Object obj, long j) {
        zzc(obj, j).zzes();
    }
}
