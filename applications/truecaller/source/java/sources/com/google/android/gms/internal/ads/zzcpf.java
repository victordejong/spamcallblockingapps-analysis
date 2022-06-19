package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpf.class */
public final class zzcpf implements zzgla<zzcbu> {
    private final zzgln<Context> zza;

    public zzcpf(zzgln<Context> zzglnVar) {
        this.zza = zzglnVar;
    }

    /* renamed from: zza */
    public final zzcbu zzb() {
        Context zza = ((zzcoo) this.zza).zza();
        zzbug zza2 = zzt.zzp().zza(zza, zzcgz.zza());
        zzbua<JSONObject> zzbuaVar = zzbud.zza;
        zza2.zza("google.afma.request.getAdDictionary", zzbuaVar, zzbuaVar);
        return new zzcbt(zza, zzt.zzp().zza(zza, zzcgz.zza()).zza("google.afma.sdkConstants.getSdkConstants", zzbuaVar, zzbuaVar));
    }
}
