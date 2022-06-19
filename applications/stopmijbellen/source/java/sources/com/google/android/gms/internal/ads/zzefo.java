package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefo.class */
public final class zzefo implements zzfhh<zzefn, zzefj> {
    private final String zza;

    public zzefo(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfhh
    public final /* bridge */ /* synthetic */ zzefj zza(zzefn zzefnVar) throws Exception {
        JSONObject jSONObject;
        zzcdt zzcdtVar;
        zzcdt zzcdtVar2;
        zzcdt zzcdtVar3;
        zzcdt zzcdtVar4;
        zzcdt zzcdtVar5;
        zzcdt zzcdtVar6;
        zzcdt zzcdtVar7;
        JSONObject jSONObject2;
        zzefn zzefnVar2 = zzefnVar;
        jSONObject = zzefnVar2.zza;
        int optInt = jSONObject.optInt("http_timeout_millis", 60000);
        zzcdtVar = zzefnVar2.zzb;
        if (zzcdtVar.zza() != -2) {
            if (zzcdtVar.zza() != 1) {
                throw new zzecd(1);
            }
            if (zzcdtVar.zzf() != null) {
                zzciz.zzg(TextUtils.join(", ", zzcdtVar.zzf()));
            }
            throw new zzecd(2, "Error building request URL.");
        }
        HashMap hashMap = new HashMap();
        zzcdtVar2 = zzefnVar2.zzb;
        if (zzcdtVar2.zzh() && !TextUtils.isEmpty(this.zza)) {
            hashMap.put("Cookie", this.zza);
        }
        zzcdtVar3 = zzefnVar2.zzb;
        if (zzcdtVar3.zzi()) {
            jSONObject2 = zzefnVar2.zza;
            JSONObject optJSONObject = jSONObject2.optJSONObject("pii");
            if (optJSONObject != null) {
                if (!TextUtils.isEmpty(optJSONObject.optString("doritos", ""))) {
                    hashMap.put("x-afma-drt-cookie", optJSONObject.optString("doritos", ""));
                }
                if (!TextUtils.isEmpty(optJSONObject.optString("doritos_v2", ""))) {
                    hashMap.put("x-afma-drt-v2-cookie", optJSONObject.optString("doritos_v2", ""));
                }
            } else {
                zze.zza("DSID signal does not exist.");
            }
        }
        String str = "";
        zzcdtVar4 = zzefnVar2.zzb;
        if (zzcdtVar4 != null) {
            str = "";
            zzcdtVar6 = zzefnVar2.zzb;
            if (!TextUtils.isEmpty(zzcdtVar6.zzd())) {
                zzcdtVar7 = zzefnVar2.zzb;
                str = zzcdtVar7.zzd();
            }
        }
        zzcdtVar5 = zzefnVar2.zzb;
        return new zzefj(zzcdtVar5.zze(), optInt, hashMap, str.getBytes(zzfpt.zzc), "");
    }
}
