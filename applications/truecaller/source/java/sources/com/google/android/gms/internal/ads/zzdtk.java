package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtk.class */
public final class zzdtk {
    private final Map<String, Map<String, JSONObject>> zza = new ConcurrentHashMap();
    private JSONObject zzb;
    private final Executor zzc;
    private boolean zzd;
    private JSONObject zze;

    public zzdtk(Executor executor) {
        this.zzc = executor;
    }

    /* renamed from: zzg */
    public final void zzf() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.zzd = true;
            zzcfz zzn = zzt.zzg().zzp().zzn();
            if (zzn == null) {
                return;
            }
            JSONObject zzg = zzn.zzg();
            if (zzg == null) {
                return;
            }
            this.zzb = ((Boolean) zzbet.zzc().zzc(zzbjl.zzcv)).booleanValue() ? zzg.optJSONObject("common_settings") : null;
            this.zze = zzg.optJSONObject("ad_unit_patterns");
            JSONArray optJSONArray = zzg.optJSONArray("ad_unit_id_settings");
            if (optJSONArray == null) {
                return;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("ad_unit_id");
                    String optString2 = optJSONObject.optString("format");
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                    if (optString != null && optJSONObject2 != null && optString2 != null) {
                        if (this.zza.containsKey(optString2)) {
                            map = this.zza.get(optString2);
                        } else {
                            map = new ConcurrentHashMap<>();
                            this.zza.put(optString2, map);
                        }
                        map.put(optString, optJSONObject2);
                    }
                }
            }
        }
    }

    public final void zza() {
        zzt.zzg().zzp().zzp(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdth
            private final zzdtk zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze();
            }
        });
        this.zzc.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdti
            private final zzdtk zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd();
            }
        });
    }

    public final JSONObject zzb(String str, String str2) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzcu)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.zzd) {
            zzf();
        }
        Map<String, JSONObject> map = this.zza.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String zza = zzdtm.zza(this.zze, str, str2);
        if (zza != null) {
            return map.get(zza);
        }
        return null;
    }

    public final JSONObject zzc() {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzcv)).booleanValue()) {
            return null;
        }
        return this.zzb;
    }

    public final /* synthetic */ void zze() {
        this.zzc.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdtj
            private final zzdtk zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf();
            }
        });
    }
}
