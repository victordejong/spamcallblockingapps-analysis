package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtg.class */
public final class zzdtg {
    private final Executor zza;
    private final zzdtb zzb;

    public zzdtg(Executor executor, zzdtb zzdtbVar) {
        this.zza = executor;
        this.zzb = zzdtbVar;
    }

    public final zzfxa<List<zzdtf>> zza(JSONObject jSONObject, String str) {
        zzfxa zzfxaVar;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return zzfwq.zzi(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                zzfxaVar = zzfwq.zzi(null);
            } else {
                final String optString = optJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.NAME);
                if (optString == null) {
                    zzfxaVar = zzfwq.zzi(null);
                } else {
                    String optString2 = optJSONObject.optString("type");
                    zzfxaVar = "string".equals(optString2) ? zzfwq.zzi(new zzdtf(optString, optJSONObject.optString("string_value"))) : "image".equals(optString2) ? zzfwq.zzm(this.zzb.zze(optJSONObject, "image_value"), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzdtd
                        @Override // com.google.android.gms.internal.ads.zzfpv
                        public final Object apply(Object obj) {
                            return new zzdtf(optString, (zzbnu) obj);
                        }
                    }, this.zza) : zzfwq.zzi(null);
                }
            }
            arrayList.add(zzfxaVar);
        }
        return zzfwq.zzm(zzfwq.zze(arrayList), zzdte.zza, this.zza);
    }
}
