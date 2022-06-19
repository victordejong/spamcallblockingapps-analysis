package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzff.class */
public final class zzff extends zzgu {
    static final Pair<String, Long> zza = new Pair<>("", 0L);
    private boolean zzaa;
    private long zzab;
    public zzfj zzb;
    public boolean zzs;
    private SharedPreferences zzy;
    private String zzz;
    public final zzfk zzc = new zzfk(this, "last_upload", 0);
    public final zzfk zzd = new zzfk(this, "last_upload_attempt", 0);
    public final zzfk zze = new zzfk(this, "backoff", 0);
    public final zzfk zzf = new zzfk(this, "last_delete_stale", 0);
    public final zzfk zzk = new zzfk(this, "time_before_start", 10000);
    public final zzfk zzl = new zzfk(this, "session_timeout", 1800000);
    public final zzfh zzm = new zzfh(this, "start_new_session", true);
    public final zzfk zzq = new zzfk(this, "last_pause_time", 0);
    public final zzfk zzr = new zzfk(this, "time_active", 0);
    public final zzfm zzn = new zzfm(this, "non_personalized_ads", null);
    public final zzfh zzo = new zzfh(this, "use_dynamite_api", false);
    public final zzfh zzp = new zzfh(this, "allow_remote_dynamite", false);
    public final zzfk zzg = new zzfk(this, "midnight_offset", 0);
    public final zzfk zzh = new zzfk(this, "first_open_time", 0);
    public final zzfk zzi = new zzfk(this, "app_install_time", 0);
    public final zzfm zzj = new zzfm(this, "app_instance_id", null);
    public zzfh zzt = new zzfh(this, "app_backgrounded", false);
    public zzfh zzu = new zzfh(this, "deep_link_retrieval_complete", false);
    public zzfk zzv = new zzfk(this, "deep_link_retrieval_attempts", 0);
    public final zzfm zzw = new zzfm(this, "firebase_feature_rollouts", null);

    public zzff(zzga zzgaVar) {
        super(zzgaVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgu
    /* renamed from: f_ */
    protected final void mo3771f_() {
        this.zzy = zzn().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzs = this.zzy.getBoolean("has_been_opened", false);
        if (!this.zzs) {
            SharedPreferences.Editor edit = this.zzy.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.zzb = new zzfj(this, "health_monitor", Math.max(0L, zzap.zzc.zza(null).longValue()));
    }

    public final Pair<String, Boolean> zza(String str) {
        zzd();
        long elapsedRealtime = zzm().elapsedRealtime();
        String str2 = this.zzz;
        if (str2 == null || elapsedRealtime >= this.zzab) {
            this.zzab = elapsedRealtime + zzt().zza(str, zzap.zzb);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zzn());
                if (advertisingIdInfo != null) {
                    this.zzz = advertisingIdInfo.getId();
                    this.zzaa = advertisingIdInfo.isLimitAdTrackingEnabled();
                }
                if (this.zzz == null) {
                    this.zzz = "";
                }
            } catch (Exception e) {
                zzr().zzw().zza("Unable to get advertising id", e);
                this.zzz = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzz, Boolean.valueOf(this.zzaa));
        }
        return new Pair<>(str2, Boolean.valueOf(this.zzaa));
    }

    public final void zza(boolean z) {
        zzd();
        zzr().zzx().zza("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzg().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    public final boolean zza(long j) {
        return j - this.zzl.zza() > this.zzq.zza();
    }

    public final String zzb(String str) {
        zzd();
        String str2 = (String) zza(str).first;
        MessageDigest zzi = zzkm.zzi();
        if (zzi == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzi.digest(str2.getBytes())));
    }

    public final void zzb(boolean z) {
        zzd();
        zzr().zzx().zza("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzg().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    public final void zzc(String str) {
        zzd();
        SharedPreferences.Editor edit = zzg().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    public final void zzc(boolean z) {
        zzd();
        zzr().zzx().zza("Updating deferred analytics collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = zzg().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    public final void zzd(String str) {
        zzd();
        SharedPreferences.Editor edit = zzg().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    @Override // com.google.android.gms.measurement.internal.zzgu
    protected final boolean zze() {
        return true;
    }

    public final SharedPreferences zzg() {
        zzd();
        zzaa();
        return this.zzy;
    }

    public final String zzh() {
        zzd();
        return zzg().getString("gmp_app_id", null);
    }

    public final String zzi() {
        zzd();
        return zzg().getString("admob_app_id", null);
    }

    public final Boolean zzj() {
        zzd();
        if (!zzg().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(zzg().getBoolean("use_service", false));
    }

    public final void zzk() {
        zzd();
        zzr().zzx().zza("Clearing collection preferences.");
        Boolean zzv = zzv();
        SharedPreferences.Editor edit = zzg().edit();
        edit.clear();
        edit.apply();
        if (zzv != null) {
            zzb(zzv.booleanValue());
        }
    }

    public final Boolean zzv() {
        zzd();
        if (zzg().contains("measurement_enabled")) {
            return Boolean.valueOf(zzg().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final String zzw() {
        zzd();
        String string = zzg().getString("previous_os_version", null);
        zzl().zzaa();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = zzg().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    public final boolean zzx() {
        return this.zzy.contains("deferred_analytics_collection");
    }
}
