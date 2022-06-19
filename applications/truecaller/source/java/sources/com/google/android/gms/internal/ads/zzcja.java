package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcja.class */
public final class zzcja {
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

    public zzcja(String str) {
        String string;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.zza = zza(jSONObject, "aggressive_media_codec_release", zzbjl.zzD);
        this.zzb = zzb(jSONObject, "byte_buffer_precache_limit", zzbjl.zzj);
        this.zzc = zzb(jSONObject, "exo_cache_buffer_size", zzbjl.zzr);
        this.zzd = zzb(jSONObject, "exo_connect_timeout_millis", zzbjl.zzf);
        zzbjd<String> zzbjdVar = zzbjl.zze;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString("exo_player_version");
            } catch (JSONException e2) {
            }
            this.zze = string;
            this.zzf = zzb(jSONObject, "exo_read_timeout_millis", zzbjl.zzg);
            this.zzg = zzb(jSONObject, "load_check_interval_bytes", zzbjl.zzh);
            this.zzh = zzb(jSONObject, "player_precache_limit", zzbjl.zzi);
            this.zzi = zzb(jSONObject, "socket_receive_buffer_size", zzbjl.zzk);
            this.zzj = zza(jSONObject, "use_cache_data_source", zzbjl.zzcH);
            this.zzk = zzb(jSONObject, "min_retry_count", zzbjl.zzl);
            this.zzl = zza(jSONObject, "treat_load_exception_as_non_fatal", zzbjl.zzo);
            this.zzm = zza(jSONObject, "using_official_simple_exo_player", zzbjl.zzbm);
            this.zzn = zza(jSONObject, "enable_multiple_video_playback", zzbjl.zzbn);
        }
        string = (String) zzbet.zzc().zzc(zzbjdVar);
        this.zze = string;
        this.zzf = zzb(jSONObject, "exo_read_timeout_millis", zzbjl.zzg);
        this.zzg = zzb(jSONObject, "load_check_interval_bytes", zzbjl.zzh);
        this.zzh = zzb(jSONObject, "player_precache_limit", zzbjl.zzi);
        this.zzi = zzb(jSONObject, "socket_receive_buffer_size", zzbjl.zzk);
        this.zzj = zza(jSONObject, "use_cache_data_source", zzbjl.zzcH);
        this.zzk = zzb(jSONObject, "min_retry_count", zzbjl.zzl);
        this.zzl = zza(jSONObject, "treat_load_exception_as_non_fatal", zzbjl.zzo);
        this.zzm = zza(jSONObject, "using_official_simple_exo_player", zzbjl.zzbm);
        this.zzn = zza(jSONObject, "enable_multiple_video_playback", zzbjl.zzbn);
    }

    private static final boolean zza(JSONObject jSONObject, String str, zzbjd<Boolean> zzbjdVar) {
        boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue();
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

    private static final int zzb(JSONObject jSONObject, String str, zzbjd<Integer> zzbjdVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) zzbet.zzc().zzc(zzbjdVar)).intValue();
    }
}
