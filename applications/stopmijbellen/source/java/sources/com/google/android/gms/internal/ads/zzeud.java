package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeud.class */
public final class zzeud implements zzgpr<zzeub> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Bundle> zzb;

    public zzeud(zzgqe<zzfxb> zzgqeVar, zzgqe<Bundle> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeub(zzfxbVar, ((zzdef) this.zzb).zza());
    }
}
