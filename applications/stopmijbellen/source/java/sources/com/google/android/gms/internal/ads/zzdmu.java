package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmu.class */
public final class zzdmu implements zzgpr<zzdmt> {
    private final zzgqe<Set<zzdlw<VideoController.VideoLifecycleCallbacks>>> zza;

    public zzdmu(zzgqe<Set<zzdlw<VideoController.VideoLifecycleCallbacks>>> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdmt(((zzgqc) this.zza).zzb());
    }
}
