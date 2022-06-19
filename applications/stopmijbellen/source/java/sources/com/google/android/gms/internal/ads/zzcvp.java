package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvp.class */
public final class zzcvp {
    private final Map<String, zzcvs> zza;
    private final Map<String, zzcvr> zzb;

    public zzcvp(Map<String, zzcvs> map, Map<String, zzcvr> map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final void zza(zzfdz zzfdzVar) throws Exception {
        for (zzfdx zzfdxVar : zzfdzVar.zzb.zzc) {
            if (this.zza.containsKey(zzfdxVar.zza)) {
                this.zza.get(zzfdxVar.zza).zza(zzfdxVar.zzb);
            } else if (this.zzb.containsKey(zzfdxVar.zza)) {
                zzcvr zzcvrVar = this.zzb.get(zzfdxVar.zza);
                JSONObject jSONObject = zzfdxVar.zzb;
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String optString = jSONObject.optString(next);
                    if (optString != null) {
                        hashMap.put(next, optString);
                    }
                }
                zzcvrVar.zza(hashMap);
            }
        }
    }
}
