package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcub.class */
public final class zzcub implements zzgla<JSONObject> {
    private final zzgln<zzezz> zza;

    public zzcub(zzgln<zzezz> zzglnVar) {
        this.zza = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(((zzcxw) this.zza).zza().zzz);
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }
}
