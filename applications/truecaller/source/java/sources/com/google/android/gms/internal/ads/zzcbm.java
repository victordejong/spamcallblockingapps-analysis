package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbm.class */
public final class zzcbm {
    private final List<String> zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final boolean zze;
    private final boolean zzf;
    private final String zzg;
    private final String zzh;
    private final String zzi;
    private final int zzj;
    private final JSONObject zzk;
    private final String zzl;
    private final String zzm;

    public zzcbm(JSONObject jSONObject) {
        this.zzi = jSONObject.optString("url");
        this.zzb = jSONObject.optString("base_uri");
        this.zzc = jSONObject.optString("post_parameters");
        this.zze = zzj(jSONObject.optString("drt_include"));
        this.zzf = zzj(jSONObject.optString("cookies_include", "true"));
        this.zzg = jSONObject.optString("request_id");
        this.zzd = jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        this.zza = optString == null ? null : Arrays.asList(optString.split(","));
        this.zzj = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.zzh = jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.zzk = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.zzl = jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.zzm = jSONObject.optString("pool_key");
    }

    private static boolean zzj(String str) {
        boolean z = true;
        if (str != null) {
            if (!str.equals("1")) {
                if (str.equals("true")) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public final int zza() {
        return this.zzj;
    }

    public final List<String> zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzc;
    }

    public final String zze() {
        return this.zzi;
    }

    public final boolean zzf() {
        return this.zze;
    }

    public final boolean zzg() {
        return this.zzf;
    }

    public final JSONObject zzh() {
        return this.zzk;
    }

    public final String zzi() {
        return this.zzm;
    }
}
