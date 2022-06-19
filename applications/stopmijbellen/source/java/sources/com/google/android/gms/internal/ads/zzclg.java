package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclg.class */
public final class zzclg {
    public final boolean zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final String zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final boolean zzj;
    public final int zzk;
    public final boolean zzl;
    public final boolean zzm;
    public final boolean zzn;

    public zzclg(String str) {
        String string;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.zza = zza(jSONObject, "aggressive_media_codec_release", zzblj.zzD);
        this.zzb = zzb(jSONObject, "byte_buffer_precache_limit", zzblj.zzj);
        this.zzc = zzb(jSONObject, "exo_cache_buffer_size", zzblj.zzr);
        this.zzd = zzb(jSONObject, "exo_connect_timeout_millis", zzblj.zzf);
        zzblb<String> zzblbVar = zzblj.zze;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString("exo_player_version");
            } catch (JSONException e2) {
            }
            this.zze = string;
            this.zzf = zzb(jSONObject, "exo_read_timeout_millis", zzblj.zzg);
            this.zzg = zzb(jSONObject, "load_check_interval_bytes", zzblj.zzh);
            this.zzh = zzb(jSONObject, "player_precache_limit", zzblj.zzi);
            this.zzi = zzb(jSONObject, "socket_receive_buffer_size", zzblj.zzk);
            this.zzj = zza(jSONObject, "use_cache_data_source", zzblj.zzcO);
            this.zzk = zzb(jSONObject, "min_retry_count", zzblj.zzl);
            this.zzl = zza(jSONObject, "treat_load_exception_as_non_fatal", zzblj.zzo);
            this.zzm = zza(jSONObject, "using_official_simple_exo_player", zzblj.zzbs);
            this.zzn = zza(jSONObject, "enable_multiple_video_playback", zzblj.zzbt);
        }
        string = (String) zzbgq.zzc().zzb(zzblbVar);
        this.zze = string;
        this.zzf = zzb(jSONObject, "exo_read_timeout_millis", zzblj.zzg);
        this.zzg = zzb(jSONObject, "load_check_interval_bytes", zzblj.zzh);
        this.zzh = zzb(jSONObject, "player_precache_limit", zzblj.zzi);
        this.zzi = zzb(jSONObject, "socket_receive_buffer_size", zzblj.zzk);
        this.zzj = zza(jSONObject, "use_cache_data_source", zzblj.zzcO);
        this.zzk = zzb(jSONObject, "min_retry_count", zzblj.zzl);
        this.zzl = zza(jSONObject, "treat_load_exception_as_non_fatal", zzblj.zzo);
        this.zzm = zza(jSONObject, "using_official_simple_exo_player", zzblj.zzbs);
        this.zzn = zza(jSONObject, "enable_multiple_video_playback", zzblj.zzbt);
    }

    private static final boolean zza(JSONObject jSONObject, String str, zzblb<Boolean> zzblbVar) {
        boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue();
        boolean z = booleanValue;
        if (jSONObject != null) {
            try {
                z = jSONObject.getBoolean(str);
            } catch (JSONException e) {
                z = booleanValue;
            }
        }
        return z;
    }

    private static final int zzb(JSONObject jSONObject, String str, zzblb<Integer> zzblbVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) zzbgq.zzc().zzb(zzblbVar)).intValue();
    }
}
