package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeee.class */
public final class zzeee implements zzgpr<zzeed> {
    private final zzgqe<Map<String, zzgqe<zzeef>>> zza;
    private final zzgqe<zzfxb> zzb;
    private final zzgqe<zzdhk> zzc;

    public zzeee(zzgqe<Map<String, zzgqe<zzeef>>> zzgqeVar, zzgqe<zzfxb> zzgqeVar2, zzgqe<zzdhk> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    /* renamed from: zza */
    public final zzeed zzb() {
        Map zzd = ((zzgpy) this.zza).zzd();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeed(zzd, zzfxbVar, ((zzdhl) this.zzc).zzb());
    }
}
