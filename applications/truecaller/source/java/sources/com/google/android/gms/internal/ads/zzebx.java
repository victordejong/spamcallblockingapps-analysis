package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebx.class */
public final class zzebx implements zzfdw<zzebw, zzebs> {
    private final String zza;

    public zzebx(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfdw
    public final /* bridge */ /* synthetic */ zzebs zza(zzebw zzebwVar) throws Exception {
        JSONObject jSONObject;
        zzcbm zzcbmVar;
        zzcbm zzcbmVar2;
        zzcbm zzcbmVar3;
        zzcbm zzcbmVar4;
        zzcbm zzcbmVar5;
        zzcbm zzcbmVar6;
        zzcbm zzcbmVar7;
        JSONObject jSONObject2;
        zzebw zzebwVar2 = zzebwVar;
        jSONObject = zzebwVar2.zza;
        int optInt = jSONObject.optInt("http_timeout_millis", 60000);
        zzcbmVar = zzebwVar2.zzb;
        if (zzcbmVar.zza() != -2) {
            if (zzcbmVar.zza() != 1) {
                throw new zzdym(1);
            }
            if (zzcbmVar.zzb() != null) {
                zzcgt.zzf(TextUtils.join(", ", zzcbmVar.zzb()));
            }
            throw new zzdym(2, "Error building request URL.");
        }
        HashMap hashMap = new HashMap();
        zzcbmVar2 = zzebwVar2.zzb;
        if (zzcbmVar2.zzg() && !TextUtils.isEmpty(this.zza)) {
            hashMap.put("Cookie", this.zza);
        }
        zzcbmVar3 = zzebwVar2.zzb;
        if (zzcbmVar3.zzf()) {
            jSONObject2 = zzebwVar2.zza;
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
        zzcbmVar4 = zzebwVar2.zzb;
        if (zzcbmVar4 != null) {
            str = "";
            zzcbmVar6 = zzebwVar2.zzb;
            if (!TextUtils.isEmpty(zzcbmVar6.zzd())) {
                zzcbmVar7 = zzebwVar2.zzb;
                str = zzcbmVar7.zzd();
            }
        }
        zzcbmVar5 = zzebwVar2.zzb;
        return new zzebs(zzcbmVar5.zze(), optInt, hashMap, str);
    }
}
