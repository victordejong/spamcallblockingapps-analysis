package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpl.class */
public final class zzdpl implements zzgpr<zzaxw> {
    private final zzgqe<zzcjf> zza;
    private final zzgqe<String> zzb;

    public zzdpl(zzgqe<zzcjf> zzgqeVar, zzgqe<String> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcjf zza = ((zzcrb) this.zza).zza();
        zzt.zzp();
        return new zzaxw(UUID.randomUUID().toString(), zza, "native", new JSONObject(), false, true);
    }
}
