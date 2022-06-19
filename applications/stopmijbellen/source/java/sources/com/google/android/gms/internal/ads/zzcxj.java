package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxj.class */
public final class zzcxj implements zzgpr<zzaxw> {
    private final zzgqe<zzfdn> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<JSONObject> zzc;
    private final zzgqe<String> zzd;

    public zzcxj(zzgqe<zzfdn> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<JSONObject> zzgqeVar3, zzgqe<String> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        ((zzdbl) this.zza).zza();
        zzcjf zza = ((zzcrb) this.zzb).zza();
        JSONObject zzb = this.zzc.zzb();
        String zzb2 = this.zzd.zzb();
        boolean equals = "native".equals(zzb2);
        zzt.zzp();
        return new zzaxw(UUID.randomUUID().toString(), zza, zzb2, zzb, false, equals);
    }
}
