package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.WorkerThread;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzsl;
import com.google.android.gms.internal.measurement.zzsv;
import com.privacystar.core.util.DateUtil;
import java.util.ArrayList;
import java.util.List;
import org.spongycastle.apache.bzip2.BZip2Constants;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaf.class */
public final class zzaf {
    private static volatile zzbt zzadj;
    static zzk zzaiq;
    static List<zza<Integer>> zzair = new ArrayList();
    static List<zza<Long>> zzais = new ArrayList();
    static List<zza<Boolean>> zzait = new ArrayList();
    static List<zza<String>> zzaiu = new ArrayList();
    static List<zza<Double>> zzaiv = new ArrayList();
    private static final zzsv zzaiw;
    @VisibleForTesting
    private static Boolean zzaix;
    private static zza<Boolean> zzaiy;
    private static zza<Boolean> zzaiz;
    private static zza<Boolean> zzaja;
    public static zza<Boolean> zzajb;
    public static zza<Boolean> zzajc;
    public static zza<String> zzajd;
    public static zza<Long> zzaje;
    public static zza<Long> zzajf;
    public static zza<Long> zzajg;
    public static zza<String> zzajh;
    public static zza<String> zzaji;
    public static zza<Integer> zzajj;
    public static zza<Integer> zzajk;
    public static zza<Integer> zzajl;
    public static zza<Integer> zzajm;
    public static zza<Integer> zzajn;
    public static zza<Integer> zzajo;
    public static zza<Integer> zzajp;
    public static zza<Integer> zzajq;
    public static zza<Integer> zzajr;
    public static zza<Integer> zzajs;
    public static zza<String> zzajt;
    public static zza<Long> zzaju;
    public static zza<Long> zzajv;
    public static zza<Long> zzajw;
    public static zza<Long> zzajx;
    public static zza<Long> zzajy;
    public static zza<Long> zzajz;
    public static zza<Long> zzaka;
    public static zza<Long> zzakb;
    public static zza<Long> zzakc;
    public static zza<Long> zzakd;
    public static zza<Long> zzake;
    public static zza<Integer> zzakf;
    public static zza<Long> zzakg;
    public static zza<Integer> zzakh;
    public static zza<Integer> zzaki;
    public static zza<Long> zzakj;
    public static zza<Boolean> zzakk;
    public static zza<String> zzakl;
    public static zza<Long> zzakm;
    public static zza<Integer> zzakn;
    public static zza<Double> zzako;
    public static zza<Boolean> zzakp;
    public static zza<Boolean> zzakq;
    public static zza<Boolean> zzakr;
    public static zza<Boolean> zzaks;
    public static zza<Boolean> zzakt;
    public static zza<Boolean> zzaku;
    public static zza<Boolean> zzakv;
    public static zza<Boolean> zzakw;
    public static zza<Boolean> zzakx;
    public static zza<Boolean> zzaky;
    public static zza<Boolean> zzakz;
    public static zza<Boolean> zzala;
    public static zza<Boolean> zzalb;
    public static zza<Boolean> zzalc;
    public static zza<Boolean> zzald;
    public static zza<Boolean> zzale;
    public static zza<Boolean> zzalf;
    private static zza<Boolean> zzalg;
    public static zza<Boolean> zzalh;
    private static zza<Boolean> zzali;
    public static zza<Boolean> zzalj;
    public static zza<Boolean> zzalk;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaf$zza.class */
    public static final class zza<V> {
        private final V zzaan;
        private zzsl<V> zzall;
        private final V zzalm;
        private volatile V zzaln;
        private final String zzoj;

        private zza(String str, V v, V v2) {
            this.zzoj = str;
            this.zzaan = v;
            this.zzalm = v2;
        }

        static zza<Double> zza(String str, double d, double d2) {
            zza<Double> zzaVar = new zza<>(str, Double.valueOf(-3.0d), Double.valueOf(-3.0d));
            zzaf.zzaiv.add(zzaVar);
            return zzaVar;
        }

        static zza<Long> zzb(String str, long j, long j2) {
            zza<Long> zzaVar = new zza<>(str, Long.valueOf(j), Long.valueOf(j2));
            zzaf.zzais.add(zzaVar);
            return zzaVar;
        }

        static zza<Boolean> zzb(String str, boolean z, boolean z2) {
            zza<Boolean> zzaVar = new zza<>(str, Boolean.valueOf(z), Boolean.valueOf(z2));
            zzaf.zzait.add(zzaVar);
            return zzaVar;
        }

        static zza<Integer> zzc(String str, int i, int i2) {
            zza<Integer> zzaVar = new zza<>(str, Integer.valueOf(i), Integer.valueOf(i2));
            zzaf.zzair.add(zzaVar);
            return zzaVar;
        }

        static zza<String> zzd(String str, String str2, String str3) {
            zza<String> zzaVar = new zza<>(str, str2, str3);
            zzaf.zzaiu.add(zzaVar);
            return zzaVar;
        }

        @WorkerThread
        private static void zzix() {
            synchronized (zza.class) {
                try {
                    if (!zzk.isMainThread()) {
                        zzk zzkVar = zzaf.zzaiq;
                        try {
                            for (zza<Boolean> zzaVar : zzaf.zzait) {
                                ((zza) zzaVar).zzaln = (V) ((zza) zzaVar).zzall.get();
                            }
                            for (zza<String> zzaVar2 : zzaf.zzaiu) {
                                ((zza) zzaVar2).zzaln = (V) ((zza) zzaVar2).zzall.get();
                            }
                            for (zza<Long> zzaVar3 : zzaf.zzais) {
                                ((zza) zzaVar3).zzaln = (V) ((zza) zzaVar3).zzall.get();
                            }
                            for (zza<Integer> zzaVar4 : zzaf.zzair) {
                                ((zza) zzaVar4).zzaln = (V) ((zza) zzaVar4).zzall.get();
                            }
                            for (zza<Double> zzaVar5 : zzaf.zzaiv) {
                                ((zza) zzaVar5).zzaln = (V) ((zza) zzaVar5).zzall.get();
                            }
                        } catch (SecurityException e) {
                            zzaf.zza(e);
                        }
                    } else {
                        throw new IllegalStateException("Tried to refresh flag cache on main thread or on package side.");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void zzq() {
            synchronized (zza.class) {
                try {
                    for (zza<Boolean> zzaVar : zzaf.zzait) {
                        zzsv zzsvVar = zzaf.zzaiw;
                        String str = ((zza) zzaVar).zzoj;
                        zzk zzkVar = zzaf.zzaiq;
                        ((zza) zzaVar).zzall = (zzsl<V>) zzsvVar.zzf(str, ((zza) zzaVar).zzaan.booleanValue());
                    }
                    for (zza<String> zzaVar2 : zzaf.zzaiu) {
                        zzsv zzsvVar2 = zzaf.zzaiw;
                        String str2 = ((zza) zzaVar2).zzoj;
                        zzk zzkVar2 = zzaf.zzaiq;
                        ((zza) zzaVar2).zzall = (zzsl<V>) zzsvVar2.zzx(str2, ((zza) zzaVar2).zzaan);
                    }
                    for (zza<Long> zzaVar3 : zzaf.zzais) {
                        zzsv zzsvVar3 = zzaf.zzaiw;
                        String str3 = ((zza) zzaVar3).zzoj;
                        zzk zzkVar3 = zzaf.zzaiq;
                        ((zza) zzaVar3).zzall = (zzsl<V>) zzsvVar3.zze(str3, ((zza) zzaVar3).zzaan.longValue());
                    }
                    for (zza<Integer> zzaVar4 : zzaf.zzair) {
                        zzsv zzsvVar4 = zzaf.zzaiw;
                        String str4 = ((zza) zzaVar4).zzoj;
                        zzk zzkVar4 = zzaf.zzaiq;
                        ((zza) zzaVar4).zzall = (zzsl<V>) zzsvVar4.zzd(str4, ((zza) zzaVar4).zzaan.intValue());
                    }
                    for (zza<Double> zzaVar5 : zzaf.zzaiv) {
                        zzsv zzsvVar5 = zzaf.zzaiw;
                        String str5 = ((zza) zzaVar5).zzoj;
                        zzk zzkVar5 = zzaf.zzaiq;
                        ((zza) zzaVar5).zzall = (zzsl<V>) zzsvVar5.zzb(str5, ((zza) zzaVar5).zzaan.doubleValue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final V get() {
            if (zzaf.zzaiq == null) {
                return this.zzaan;
            }
            zzk zzkVar = zzaf.zzaiq;
            if (zzk.isMainThread()) {
                return this.zzaln == null ? this.zzaan : this.zzaln;
            }
            zzix();
            try {
                return this.zzall.get();
            } catch (SecurityException e) {
                zzaf.zza(e);
                return this.zzall.getDefaultValue();
            }
        }

        public final V get(V v) {
            if (v != null) {
                return v;
            }
            if (zzaf.zzaiq == null) {
                return this.zzaan;
            }
            zzk zzkVar = zzaf.zzaiq;
            if (zzk.isMainThread()) {
                return this.zzaln == null ? this.zzaan : this.zzaln;
            }
            zzix();
            try {
                return this.zzall.get();
            } catch (SecurityException e) {
                zzaf.zza(e);
                return this.zzall.getDefaultValue();
            }
        }

        public final String getKey() {
            return this.zzoj;
        }
    }

    static {
        String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
        zzaiw = new zzsv(Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/")));
        zzaiy = zza.zzb("measurement.log_third_party_store_events_enabled", false, false);
        zzaiz = zza.zzb("measurement.log_installs_enabled", false, false);
        zzaja = zza.zzb("measurement.log_upgrades_enabled", false, false);
        zzajb = zza.zzb("measurement.log_androidId_enabled", false, false);
        zzajc = zza.zzb("measurement.upload_dsid_enabled", false, false);
        zzajd = zza.zzd("measurement.log_tag", "FA", "FA-SVC");
        zzaje = zza.zzb("measurement.ad_id_cache_time", 10000L, 10000L);
        zzajf = zza.zzb("measurement.monitoring.sample_period_millis", (long) DateUtil.DAY_IN_MILLIS, (long) DateUtil.DAY_IN_MILLIS);
        zzajg = zza.zzb("measurement.config.cache_time", (long) DateUtil.DAY_IN_MILLIS, (long) DateUtil.HOUR_IN_MILLIS);
        zzajh = zza.zzd("measurement.config.url_scheme", "https", "https");
        zzaji = zza.zzd("measurement.config.url_authority", "app-measurement.com", "app-measurement.com");
        zzajj = zza.zzc("measurement.upload.max_bundles", 100, 100);
        zzajk = zza.zzc("measurement.upload.max_batch_size", 65536, 65536);
        zzajl = zza.zzc("measurement.upload.max_bundle_size", 65536, 65536);
        zzajm = zza.zzc("measurement.upload.max_events_per_bundle", 1000, 1000);
        zzajn = zza.zzc("measurement.upload.max_events_per_day", BZip2Constants.baseBlockSize, BZip2Constants.baseBlockSize);
        zzajo = zza.zzc("measurement.upload.max_error_events_per_day", 1000, 1000);
        zzajp = zza.zzc("measurement.upload.max_public_events_per_day", 50000, 50000);
        zzajq = zza.zzc("measurement.upload.max_conversions_per_day", 500, 500);
        zzajr = zza.zzc("measurement.upload.max_realtime_events_per_day", 10, 10);
        zzajs = zza.zzc("measurement.store.max_stored_events_per_app", BZip2Constants.baseBlockSize, BZip2Constants.baseBlockSize);
        zzajt = zza.zzd("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a");
        zzaju = zza.zzb("measurement.upload.backoff_period", 43200000L, 43200000L);
        zzajv = zza.zzb("measurement.upload.window_interval", (long) DateUtil.HOUR_IN_MILLIS, (long) DateUtil.HOUR_IN_MILLIS);
        zzajw = zza.zzb("measurement.upload.interval", (long) DateUtil.HOUR_IN_MILLIS, (long) DateUtil.HOUR_IN_MILLIS);
        zzajx = zza.zzb("measurement.upload.realtime_upload_interval", 10000L, 10000L);
        zzajy = zza.zzb("measurement.upload.debug_upload_interval", 1000L, 1000L);
        zzajz = zza.zzb("measurement.upload.minimum_delay", 500L, 500L);
        zzaka = zza.zzb("measurement.alarm_manager.minimum_interval", (long) DateUtil.MINUTE_IN_MILLIS, (long) DateUtil.MINUTE_IN_MILLIS);
        zzakb = zza.zzb("measurement.upload.stale_data_deletion_interval", (long) DateUtil.DAY_IN_MILLIS, (long) DateUtil.DAY_IN_MILLIS);
        zzakc = zza.zzb("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L);
        zzakd = zza.zzb("measurement.upload.initial_upload_delay_time", 15000L, 15000L);
        zzake = zza.zzb("measurement.upload.retry_time", 1800000L, 1800000L);
        zzakf = zza.zzc("measurement.upload.retry_count", 6, 6);
        zzakg = zza.zzb("measurement.upload.max_queue_time", 2419200000L, 2419200000L);
        zzakh = zza.zzc("measurement.lifetimevalue.max_currency_tracked", 4, 4);
        zzaki = zza.zzc("measurement.audience.filter_result_max_count", 200, 200);
        zzakj = zza.zzb("measurement.service_client.idle_disconnect_millis", (long) HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS, (long) HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS);
        zzakk = zza.zzb("measurement.test.boolean_flag", false, false);
        zzakl = zza.zzd("measurement.test.string_flag", "---", "---");
        zzakm = zza.zzb("measurement.test.long_flag", -1L, -1L);
        zzakn = zza.zzc("measurement.test.int_flag", -2, -2);
        zzako = zza.zza("measurement.test.double_flag", -3.0d, -3.0d);
        zzakp = zza.zzb("measurement.lifetimevalue.user_engagement_tracking_enabled", false, false);
        zzakq = zza.zzb("measurement.audience.complex_param_evaluation", false, false);
        zzakr = zza.zzb("measurement.validation.internal_limits_internal_event_params", false, false);
        zzaks = zza.zzb("measurement.quality.unsuccessful_update_retry_counter", false, false);
        zzakt = zza.zzb("measurement.iid.disable_on_collection_disabled", true, true);
        zzaku = zza.zzb("measurement.app_launch.call_only_when_enabled", true, true);
        zzakv = zza.zzb("measurement.run_on_worker_inline", true, false);
        zzakw = zza.zzb("measurement.audience.dynamic_filters", false, false);
        zzakx = zza.zzb("measurement.reset_analytics.persist_time", false, false);
        zzaky = zza.zzb("measurement.validation.value_and_currency_params", false, false);
        zzakz = zza.zzb("measurement.sampling.time_zone_offset_enabled", false, false);
        zzala = zza.zzb("measurement.referrer.enable_logging_install_referrer_cmp_from_apk", false, false);
        zzalb = zza.zzb("measurement.disconnect_from_remote_service", false, false);
        zzalc = zza.zzb("measurement.clear_local_database", false, false);
        zzald = zza.zzb("measurement.fetch_config_with_admob_app_id", false, false);
        zzale = zza.zzb("measurement.sessions.session_id_enabled", false, false);
        zzalf = zza.zzb("measurement.sessions.immediate_start_enabled", false, false);
        zzalg = zza.zzb("measurement.sessions.background_sessions_enabled", false, false);
        zzalh = zza.zzb("measurement.collection.firebase_global_collection_flag_enabled", true, true);
        zzali = zza.zzb("measurement.collection.efficient_engagement_reporting_enabled", false, false);
        zzalj = zza.zzb("measurement.personalized_ads_feature_enabled", false, false);
        zzalk = zza.zzb("measurement.remove_app_instance_id_cache_enabled", true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbt zzbtVar) {
        zzadj = zzbtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzk zzkVar) {
        zzaiq = zzkVar;
        zza.zzq();
    }

    @VisibleForTesting
    static void zza(Exception exc) {
        if (zzadj != null) {
            Context context = zzadj.getContext();
            if (zzaix == null) {
                zzaix = Boolean.valueOf(GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) == 0);
            }
            if (zzaix.booleanValue()) {
                zzadj.zzgo().zzjd().zzg("Got Exception on PhenotypeFlag.get on Play device", exc);
            }
        }
    }
}
