package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwk.class */
public final class zzdwk {
    private Long zza;
    private final String zzb;
    private String zzc;
    private Integer zzd;
    private String zze;
    private Integer zzf;

    public static /* synthetic */ String zzf(zzdwk zzdwkVar) {
        String str = (String) zzbet.zzc().zzc(zzbjl.zzgM);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", zzdwkVar.zza);
            jSONObject.put("eventCategory", zzdwkVar.zzb);
            jSONObject.putOpt("event", zzdwkVar.zzc);
            jSONObject.putOpt("errorCode", zzdwkVar.zzd);
            jSONObject.putOpt("rewardType", zzdwkVar.zze);
            jSONObject.putOpt("rewardAmount", zzdwkVar.zzf);
        } catch (JSONException e) {
            zzcgt.zzi("Could not convert parameters to JSON.");
        }
        String jSONObject2 = jSONObject.toString();
        return C22128a.m8606k(new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(jSONObject2).length()), str, "(\"h5adsEvent\",", jSONObject2, ");");
    }
}
