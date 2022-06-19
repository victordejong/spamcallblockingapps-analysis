package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsa.class */
public final class zzcsa {
    private final Map<String, zzcsd> zza;
    private final Map<String, zzcsc> zzb;

    public zzcsa(Map<String, zzcsd> map, Map<String, zzcsc> map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final void zza(zzfal zzfalVar) throws Exception {
        for (zzfaj zzfajVar : zzfalVar.zzb.zzc) {
            if (this.zza.containsKey(zzfajVar.zza)) {
                this.zza.get(zzfajVar.zza).zza(zzfajVar.zzb);
            } else if (this.zzb.containsKey(zzfajVar.zza)) {
                zzcsc zzcscVar = this.zzb.get(zzfajVar.zza);
                JSONObject jSONObject = zzfajVar.zzb;
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String optString = jSONObject.optString(next);
                    if (optString != null) {
                        hashMap.put(next, optString);
                    }
                }
                zzcscVar.zza(hashMap);
            }
        }
    }
}
