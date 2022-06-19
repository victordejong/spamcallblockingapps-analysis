package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeiv.class */
public final class zzeiv implements zzeee<zzbxn, zzefy> {
    private final zzejz zza;

    public zzeiv(zzejz zzejzVar) {
        this.zza = zzejzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeee
    public final zzeef<zzbxn, zzefy> zza(String str, JSONObject jSONObject) throws zzfaw {
        zzbxn zzb = this.zza.zzb(str);
        if (zzb == null) {
            return null;
        }
        return new zzeef<>(zzb, new zzefy(), str);
    }
}
