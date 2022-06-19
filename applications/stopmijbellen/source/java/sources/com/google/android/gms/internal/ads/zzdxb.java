package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxb.class */
public final class zzdxb {
    private final Map<String, Map<String, JSONObject>> zza = new ConcurrentHashMap();
    private JSONObject zzb;
    private final Executor zzc;
    private boolean zzd;
    private JSONObject zze;

    public zzdxb(Executor executor) {
        this.zzc = executor;
    }

    /* renamed from: zzg */
    public final void zzf() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.zzd = true;
            zzcif zzg = zzt.zzo().zzh().zzg();
            if (zzg == null) {
                return;
            }
            JSONObject zzf = zzg.zzf();
            if (zzf == null) {
                return;
            }
            this.zzb = ((Boolean) zzbgq.zzc().zzb(zzblj.zzcC)).booleanValue() ? zzf.optJSONObject("common_settings") : null;
            this.zze = zzf.optJSONObject("ad_unit_patterns");
            JSONArray optJSONArray = zzf.optJSONArray("ad_unit_id_settings");
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

    @CheckForNull
    public final JSONObject zza() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzcC)).booleanValue()) {
            return null;
        }
        return this.zzb;
    }

    @CheckForNull
    public final JSONObject zzb(String str, String str2) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzcB)).booleanValue() || str == null || str2 == null) {
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
        String zza = zzdxd.zza(this.zze, str, str2);
        if (zza != null) {
            return map.get(zza);
        }
        return null;
    }

    public final void zzc() {
        zzt.zzo().zzh().zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwz
            @Override // java.lang.Runnable
            public final void run() {
                zzdxb.this.zze();
            }
        });
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxa
            @Override // java.lang.Runnable
            public final void run() {
                zzdxb.this.zzf();
            }
        });
    }

    public final /* synthetic */ void zze() {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwy
            @Override // java.lang.Runnable
            public final void run() {
                zzdxb.this.zzd();
            }
        });
    }
}
