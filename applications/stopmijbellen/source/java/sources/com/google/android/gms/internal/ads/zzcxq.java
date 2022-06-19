package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxq.class */
public final class zzcxq implements zzgpr<JSONObject> {
    private final zzgqe<zzfdn> zza;

    public zzcxq(zzgqe<zzfdn> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(((zzdbl) this.zza).zza().zzA);
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }
}
