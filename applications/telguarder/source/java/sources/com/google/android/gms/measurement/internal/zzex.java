package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzex.class */
public final class zzex extends zzgf {
    static final Pair<String, Long> zza = new Pair<>("", 0L);
    private boolean zzA;
    private long zzB;
    public zzev zzb;
    public boolean zzp;
    private SharedPreferences zzy;
    private String zzz;
    public final zzeu zzc = new zzeu(this, "last_upload", 0);
    public final zzeu zzd = new zzeu(this, "last_upload_attempt", 0);
    public final zzeu zze = new zzeu(this, "backoff", 0);
    public final zzeu zzf = new zzeu(this, "last_delete_stale", 0);
    public final zzeu zzk = new zzeu(this, "session_timeout", 1800000);
    public final zzes zzl = new zzes(this, "start_new_session", true);
    public final zzeu zzo = new zzeu(this, "last_pause_time", 0);
    public final zzew zzm = new zzew(this, "non_personalized_ads", null);
    public final zzes zzn = new zzes(this, "allow_remote_dynamite", false);
    public final zzeu zzg = new zzeu(this, "midnight_offset", 0);
    public final zzeu zzh = new zzeu(this, "first_open_time", 0);
    public final zzeu zzi = new zzeu(this, "app_install_time", 0);
    public final zzew zzj = new zzew(this, "app_instance_id", null);
    public final zzes zzq = new zzes(this, "app_backgrounded", false);
    public final zzes zzr = new zzes(this, "deep_link_retrieval_complete", false);
    public final zzeu zzs = new zzeu(this, "deep_link_retrieval_attempts", 0);
    public final zzew zzt = new zzew(this, "firebase_feature_rollouts", null);
    public final zzew zzu = new zzew(this, "deferred_attribution_cache", null);
    public final zzeu zzv = new zzeu(this, "deferred_attribution_cache_timestamp", 0);
    public final zzet zzw = new zzet(this, "default_event_parameters", null);

    public zzex(zzfl zzflVar) {
        super(zzflVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgf
    protected final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzgf
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    protected final void zzay() {
        SharedPreferences sharedPreferences = this.zzx.zzaw().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzy = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.zzp = z;
        if (!z) {
            SharedPreferences.Editor edit = this.zzy.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.zzx.zzc();
        this.zzb = new zzev(this, "health_monitor", Math.max(0L, zzdw.zzb.zzb(null).longValue()), null);
    }

    public final Pair<String, Boolean> zzb(String str) {
        zzg();
        long elapsedRealtime = this.zzx.zzax().elapsedRealtime();
        String str2 = this.zzz;
        if (str2 == null || elapsedRealtime >= this.zzB) {
            this.zzB = elapsedRealtime + this.zzx.zzc().zzj(str, zzdw.zza);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzx.zzaw());
                if (advertisingIdInfo != null) {
                    this.zzz = advertisingIdInfo.getId();
                    this.zzA = advertisingIdInfo.isLimitAdTrackingEnabled();
                }
                if (this.zzz == null) {
                    this.zzz = "";
                }
            } catch (Exception e) {
                this.zzx.zzat().zzj().zzb("Unable to get advertising id", e);
                this.zzz = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzz, Boolean.valueOf(this.zzA));
        }
        return new Pair<>(str2, Boolean.valueOf(this.zzA));
    }

    public final SharedPreferences zzd() {
        zzg();
        zzv();
        Preconditions.checkNotNull(this.zzy);
        return this.zzy;
    }

    public final void zze(Boolean bool) {
        zzg();
        SharedPreferences.Editor edit = zzd().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    public final Boolean zzf() {
        zzg();
        if (zzd().contains("measurement_enabled")) {
            return Boolean.valueOf(zzd().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final boolean zzh(int i) {
        return zzaf.zzm(i, zzd().getInt("consent_source", 100));
    }

    public final zzaf zzi() {
        zzg();
        return zzaf.zzc(zzd().getString("consent_settings", "G1"));
    }

    public final void zzj(boolean z) {
        zzg();
        this.zzx.zzat().zzk().zzb("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzd().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    public final boolean zzk() {
        SharedPreferences sharedPreferences = this.zzy;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    public final boolean zzl(long j) {
        return j - this.zzk.zza() > this.zzo.zza();
    }
}
