package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqj.class */
public final class zzdqj implements zzgpr<zzdqg> {
    private final zzgqe<zzfdn> zza;
    private final zzgqe<JSONObject> zzb;

    public zzdqj(zzgqe<zzfdn> zzgqeVar, zzgqe<JSONObject> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdqg(((zzdbl) this.zza).zza(), ((zzdpg) this.zzb).zza());
    }
}
