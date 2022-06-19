package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecy.class */
public final class zzecy implements zzgpr<String> {
    public static zzecy zza() {
        zzecy zzecyVar;
        zzecyVar = zzecx.zza;
        return zzecyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzgpz.zzb(uuid);
        return uuid;
    }
}
