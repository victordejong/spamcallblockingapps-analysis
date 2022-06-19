package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpq.class */
public final class zzdpq {
    private final Executor zza;
    private final zzdpl zzb;

    public zzdpq(Executor executor, zzdpl zzdplVar) {
        this.zza = executor;
        this.zzb = zzdplVar;
    }

    public final zzfsm<List<zzdpp>> zza(JSONObject jSONObject, String str) {
        zzfsm zzfsmVar;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return zzfsd.zza(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                zzfsmVar = zzfsd.zza(null);
            } else {
                String optString = optJSONObject.optString(AnalyticsConstants.NAME);
                if (optString == null) {
                    zzfsmVar = zzfsd.zza(null);
                } else {
                    String optString2 = optJSONObject.optString("type");
                    zzfsmVar = "string".equals(optString2) ? zzfsd.zza(new zzdpp(optString, optJSONObject.optString("string_value"))) : "image".equals(optString2) ? zzfsd.zzj(this.zzb.zza(optJSONObject, "image_value"), new zzfln(optString) { // from class: com.google.android.gms.internal.ads.zzdpo
                        private final String zza;

                        {
                            this.zza = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.zzfln
                        public final Object apply(Object obj) {
                            return new zzdpp(this.zza, (zzblr) obj);
                        }
                    }, this.zza) : zzfsd.zza(null);
                }
            }
            arrayList.add(zzfsmVar);
        }
        return zzfsd.zzj(zzfsd.zzk(arrayList), zzdpn.zza, this.zza);
    }
}
