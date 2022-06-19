package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsf.class */
public final class zzbsf implements zzbsg {
    public final /* synthetic */ zzcjr zza;

    public zzbsf(zzbsh zzbshVar, zzcjr zzcjrVar) {
        this.zza = zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsg
    public final void zza(String str) {
        this.zza.zze(new zzbvw(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbsg
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzd(jSONObject);
    }
}
