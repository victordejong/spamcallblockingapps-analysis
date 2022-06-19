package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeac.class */
public final class zzeac {
    private Long zza;
    private final String zzb;
    private String zzc;
    private Integer zzd;
    private String zze;
    private Integer zzf;

    public static /* bridge */ /* synthetic */ String zza(zzeac zzeacVar) {
        String str = (String) zzbgq.zzc().zzb(zzblj.zzgX);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", zzeacVar.zza);
            jSONObject.put("eventCategory", zzeacVar.zzb);
            jSONObject.putOpt("event", zzeacVar.zzc);
            jSONObject.putOpt("errorCode", zzeacVar.zzd);
            jSONObject.putOpt("rewardType", zzeacVar.zze);
            jSONObject.putOpt("rewardAmount", zzeacVar.zzf);
        } catch (JSONException e) {
            zzciz.zzj("Could not convert parameters to JSON.");
        }
        String jSONObject2 = jSONObject.toString();
        return C1676a.m4788i(new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(jSONObject2).length()), str, "(\"h5adsEvent\",", jSONObject2, ");");
    }
}
