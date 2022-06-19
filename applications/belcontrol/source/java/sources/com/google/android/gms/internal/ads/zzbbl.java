package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbl.class */
public final class zzbbl {
    public final boolean zzelf;
    public final int zzelg;
    public final int zzelh;
    public final int zzeli;
    private final String zzelj;
    public final int zzelk;
    public final int zzell;
    public final int zzelm;
    public final int zzeln;
    public final boolean zzelo;
    public final int zzelp;

    public zzbbl(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.zzelf = zza(jSONObject, "aggressive_media_codec_release", zzabp.zzcnk);
        this.zzelg = zzb(jSONObject, "byte_buffer_precache_limit", zzabp.zzcms);
        this.zzelh = zzb(jSONObject, "exo_cache_buffer_size", zzabp.zzcmz);
        this.zzeli = zzb(jSONObject, "exo_connect_timeout_millis", zzabp.zzcmo);
        this.zzelj = zzc(jSONObject, "exo_player_version", zzabp.zzcmn);
        this.zzelk = zzb(jSONObject, "exo_read_timeout_millis", zzabp.zzcmp);
        this.zzell = zzb(jSONObject, "load_check_interval_bytes", zzabp.zzcmq);
        this.zzelm = zzb(jSONObject, "player_precache_limit", zzabp.zzcmr);
        this.zzeln = zzb(jSONObject, "socket_receive_buffer_size", zzabp.zzcmt);
        this.zzelo = zza(jSONObject, "use_cache_data_source", zzabp.zzcug);
        this.zzelp = zzb(jSONObject, "min_retry_count", zzabp.zzcmv);
    }

    private static boolean zza(JSONObject jSONObject, String str, zzaba<Boolean> zzabaVar) {
        return zza(jSONObject, str, ((Boolean) zzwr.zzqr().zzd(zzabaVar)).booleanValue());
    }

    private static boolean zza(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException e) {
            }
        }
        return z;
    }

    private static int zzb(JSONObject jSONObject, String str, zzaba<Integer> zzabaVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) zzwr.zzqr().zzd(zzabaVar)).intValue();
    }

    private static String zzc(JSONObject jSONObject, String str, zzaba<String> zzabaVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException e) {
            }
        }
        return (String) zzwr.zzqr().zzd(zzabaVar);
    }
}
