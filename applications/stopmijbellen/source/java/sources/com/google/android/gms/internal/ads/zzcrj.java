package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrj.class */
public final class zzcrj implements zzgpr<zzceb> {
    private final zzgqe<Context> zza;

    public zzcrj(zzgqe<Context> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    /* renamed from: zza */
    public final zzceb zzb() {
        Context zza = ((zzcqr) this.zza).zza();
        zzbwh zzb = zzt.zzf().zzb(zza, zzcjf.zza());
        zzbwb<JSONObject> zzbwbVar = zzbwe.zza;
        zzb.zza("google.afma.request.getAdDictionary", zzbwbVar, zzbwbVar);
        return new zzcea(zza, zzt.zzf().zzb(zza, zzcjf.zza()).zza("google.afma.sdkConstants.getSdkConstants", zzbwbVar, zzbwbVar));
    }
}
