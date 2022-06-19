package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfb.class */
public final class zzfb extends zzgo {
    @VisibleForTesting
    public static final Pair<String, Long> zza = new Pair<>("", 0L);
    public zzez zzb;
    public boolean zzk;
    private SharedPreferences zzt;
    private String zzu;
    private boolean zzv;
    private long zzw;
    public final zzey zzf = new zzey(this, "session_timeout", 1800000);
    public final zzew zzg = new zzew(this, "start_new_session", true);
    public final zzey zzj = new zzey(this, "last_pause_time", 0);
    public final zzfa zzh = new zzfa(this, "non_personalized_ads", null);
    public final zzew zzi = new zzew(this, "allow_remote_dynamite", false);
    public final zzey zzc = new zzey(this, "first_open_time", 0);
    public final zzey zzd = new zzey(this, "app_install_time", 0);
    public final zzfa zze = new zzfa(this, "app_instance_id", null);
    public final zzew zzl = new zzew(this, "app_backgrounded", false);
    public final zzew zzm = new zzew(this, "deep_link_retrieval_complete", false);
    public final zzey zzn = new zzey(this, "deep_link_retrieval_attempts", 0);
    public final zzfa zzo = new zzfa(this, "firebase_feature_rollouts", null);
    public final zzfa zzp = new zzfa(this, "deferred_attribution_cache", null);
    public final zzey zzq = new zzey(this, "deferred_attribution_cache_timestamp", 0);
    public final zzex zzr = new zzex(this, "default_event_parameters", null);

    public zzfb(zzfu zzfuVar) {
        super(zzfuVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    public final void zzaz() {
        SharedPreferences sharedPreferences = this.zzs.zzax().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzt = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.zzk = z;
        if (!z) {
            SharedPreferences.Editor edit = this.zzt.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.zzs.zzc();
        this.zzb = new zzez(this, "health_monitor", Math.max(0L, zzea.zzb.zzb(null).longValue()), null);
    }

    public final Pair<String, Boolean> zzb(String str) {
        zzg();
        long elapsedRealtime = this.zzs.zzay().elapsedRealtime();
        String str2 = this.zzu;
        if (str2 == null || elapsedRealtime >= this.zzw) {
            this.zzw = this.zzs.zzc().zzj(str, zzea.zza) + elapsedRealtime;
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzax());
                this.zzu = "";
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    this.zzu = id;
                }
                this.zzv = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                this.zzs.zzau().zzj().zzb("Unable to get advertising id", e);
                this.zzu = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzu, Boolean.valueOf(this.zzv));
        }
        return new Pair<>(str2, Boolean.valueOf(this.zzv));
    }

    @VisibleForTesting
    public final SharedPreferences zzd() {
        zzg();
        zzv();
        Preconditions.checkNotNull(this.zzt);
        return this.zzt;
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
        this.zzs.zzau().zzk().zzb("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzd().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    public final boolean zzk() {
        SharedPreferences sharedPreferences = this.zzt;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    public final boolean zzl(long j) {
        return j - this.zzf.zza() > this.zzj.zza();
    }
}
