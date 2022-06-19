package com.google.android.gms.internal.firebase_remote_config;

import android.content.SharedPreferences;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigInfo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzev.class */
public final class zzev {
    static final Date zzli = new Date(-1);
    static final Date zzlj = new Date(-1);
    private final SharedPreferences zzlk;
    private final Object zzll = new Object();
    private final Object zzlm = new Object();

    public zzev(SharedPreferences sharedPreferences) {
        this.zzlk = sharedPreferences;
    }

    public final void clear() {
        synchronized (this.zzll) {
            this.zzlk.edit().clear().commit();
        }
    }

    public final long getFetchTimeoutInSeconds() {
        return this.zzlk.getLong("fetch_timeout_in_seconds", 5L);
    }

    public final FirebaseRemoteConfigInfo getInfo() {
        zzez zzdf;
        synchronized (this.zzll) {
            long j = this.zzlk.getLong("last_fetch_time_in_millis", -1L);
            int i = this.zzlk.getInt("last_fetch_status", 0);
            zzdf = new zzfb().zzn(i).zzc(j).zzc(new FirebaseRemoteConfigSettings.Builder().setDeveloperModeEnabled(this.zzlk.getBoolean("is_developer_mode_enabled", false)).setFetchTimeoutInSeconds(this.zzlk.getLong("fetch_timeout_in_seconds", 5L)).setMinimumFetchIntervalInSeconds(this.zzlk.getLong("minimum_fetch_interval_in_seconds", zzes.zzla)).build()).zzdf();
        }
        return zzdf;
    }

    public final long getMinimumFetchIntervalInSeconds() {
        return this.zzlk.getLong("minimum_fetch_interval_in_seconds", zzes.zzla);
    }

    public final boolean isDeveloperModeEnabled() {
        return this.zzlk.getBoolean("is_developer_mode_enabled", false);
    }

    public final void setConfigSettings(FirebaseRemoteConfigSettings firebaseRemoteConfigSettings) {
        synchronized (this.zzll) {
            this.zzlk.edit().putBoolean("is_developer_mode_enabled", firebaseRemoteConfigSettings.isDeveloperModeEnabled()).putLong("fetch_timeout_in_seconds", firebaseRemoteConfigSettings.getFetchTimeoutInSeconds()).putLong("minimum_fetch_interval_in_seconds", firebaseRemoteConfigSettings.getMinimumFetchIntervalInSeconds()).commit();
        }
    }

    public final void zza(int i, Date date) {
        synchronized (this.zzlm) {
            this.zzlk.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public final void zzb(FirebaseRemoteConfigSettings firebaseRemoteConfigSettings) {
        synchronized (this.zzll) {
            this.zzlk.edit().putBoolean("is_developer_mode_enabled", firebaseRemoteConfigSettings.isDeveloperModeEnabled()).putLong("fetch_timeout_in_seconds", firebaseRemoteConfigSettings.getFetchTimeoutInSeconds()).putLong("minimum_fetch_interval_in_seconds", firebaseRemoteConfigSettings.getMinimumFetchIntervalInSeconds()).apply();
        }
    }

    public final void zzbd(String str) {
        synchronized (this.zzll) {
            this.zzlk.edit().putString("last_fetch_etag", str).apply();
        }
    }

    public final Date zzcy() {
        return new Date(this.zzlk.getLong("last_fetch_time_in_millis", -1L));
    }

    public final String zzcz() {
        return this.zzlk.getString("last_fetch_etag", null);
    }

    public final zzey zzda() {
        zzey zzeyVar;
        synchronized (this.zzlm) {
            zzeyVar = new zzey(this.zzlk.getInt("num_failed_fetches", 0), new Date(this.zzlk.getLong("backoff_end_time_in_millis", -1L)));
        }
        return zzeyVar;
    }

    public final void zzf(Date date) {
        synchronized (this.zzll) {
            this.zzlk.edit().putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    public final void zzm(int i) {
        synchronized (this.zzll) {
            this.zzlk.edit().putInt("last_fetch_status", i).apply();
        }
    }
}
