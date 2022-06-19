package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctu.class */
public final class zzctu implements zzgla<zzavz> {
    private final zzgln<zzezz> zza;
    private final zzgln<zzcgz> zzb;
    private final zzgln<JSONObject> zzc;
    private final zzgln<String> zzd;

    public zzctu(zzgln<zzezz> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<JSONObject> zzglnVar3, zzgln<String> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        ((zzcxw) this.zza).zza();
        zzcgz zza = ((zzcox) this.zzb).zza();
        JSONObject zzb = this.zzc.zzb();
        String zzb2 = this.zzd.zzb();
        boolean equals = "native".equals(zzb2);
        zzt.zzc();
        return new zzavz(UUID.randomUUID().toString(), zza, zzb2, zzb, false, equals);
    }
}
