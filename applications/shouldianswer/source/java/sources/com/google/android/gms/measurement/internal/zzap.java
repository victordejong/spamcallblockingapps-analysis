package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzbx;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzjd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzap.class */
public final class zzap {
    public static zzel<Double> zzal;
    private static List<zzel<?>> zzcr = Collections.synchronizedList(new ArrayList());
    private static Set<zzel<?>> zzcs = Collections.synchronizedSet(new HashSet());
    public static zzel<Boolean> zza = zza("measurement.upload_dsid_enabled", true, true, zzas.zza);
    public static zzel<Long> zzb = zza("measurement.ad_id_cache_time", 10000L, 10000L, zzar.zza);
    public static zzel<Long> zzc = zza("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, zzbe.zza);
    public static zzel<Long> zzd = zza("measurement.config.cache_time", 86400000L, 3600000L, zzbn.zza);
    public static zzel<String> zze = zza("measurement.config.url_scheme", "https", "https", zzca.zza);
    public static zzel<String> zzf = zza("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", zzcj.zza);
    public static zzel<Integer> zzg = zza("measurement.upload.max_bundles", 100, 100, zzcw.zza);
    public static zzel<Integer> zzh = zza("measurement.upload.max_batch_size", 65536, 65536, zzdf.zza);
    public static zzel<Integer> zzi = zza("measurement.upload.max_bundle_size", 65536, 65536, zzds.zza);
    public static zzel<Integer> zzj = zza("measurement.upload.max_events_per_bundle", 1000, 1000, zzeb.zza);
    public static zzel<Integer> zzk = zza("measurement.upload.max_events_per_day", 100000, 100000, zzau.zza);
    public static zzel<Integer> zzl = zza("measurement.upload.max_error_events_per_day", 1000, 1000, zzat.zza);
    public static zzel<Integer> zzm = zza("measurement.upload.max_public_events_per_day", 50000, 50000, zzaw.zza);
    public static zzel<Integer> zzn = zza("measurement.upload.max_conversions_per_day", 500, 500, zzav.zza);
    public static zzel<Integer> zzo = zza("measurement.upload.max_realtime_events_per_day", 10, 10, zzay.zza);
    public static zzel<Integer> zzp = zza("measurement.store.max_stored_events_per_app", 100000, 100000, zzax.zza);
    public static zzel<String> zzq = zza("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", zzba.zza);
    public static zzel<Long> zzr = zza("measurement.upload.backoff_period", 43200000L, 43200000L, zzaz.zza);
    public static zzel<Long> zzs = zza("measurement.upload.window_interval", 3600000L, 3600000L, zzbc.zza);
    public static zzel<Long> zzt = zza("measurement.upload.interval", 3600000L, 3600000L, zzbb.zza);
    public static zzel<Long> zzu = zza("measurement.upload.realtime_upload_interval", 10000L, 10000L, zzbd.zza);
    public static zzel<Long> zzv = zza("measurement.upload.debug_upload_interval", 1000L, 1000L, zzbg.zza);
    public static zzel<Long> zzw = zza("measurement.upload.minimum_delay", 500L, 500L, zzbf.zza);
    public static zzel<Long> zzx = zza("measurement.alarm_manager.minimum_interval", 60000L, 60000L, zzbi.zza);
    public static zzel<Long> zzy = zza("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, zzbh.zza);
    public static zzel<Long> zzz = zza("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, zzbk.zza);
    public static zzel<Long> zzaa = zza("measurement.upload.initial_upload_delay_time", 15000L, 15000L, zzbj.zza);
    public static zzel<Long> zzab = zza("measurement.upload.retry_time", 1800000L, 1800000L, zzbm.zza);
    public static zzel<Integer> zzac = zza("measurement.upload.retry_count", 6, 6, zzbl.zza);
    public static zzel<Long> zzad = zza("measurement.upload.max_queue_time", 2419200000L, 2419200000L, zzbo.zza);
    public static zzel<Integer> zzae = zza("measurement.lifetimevalue.max_currency_tracked", 4, 4, zzbq.zza);
    public static zzel<Integer> zzaf = zza("measurement.audience.filter_result_max_count", 200, 200, zzbp.zza);
    public static zzel<Long> zzag = zza("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, zzbs.zza);
    public static zzel<Boolean> zzah = zza("measurement.test.boolean_flag", false, false, zzbr.zza);
    public static zzel<String> zzai = zza("measurement.test.string_flag", "---", "---", zzbu.zza);
    public static zzel<Long> zzaj = zza("measurement.test.long_flag", -1L, -1L, zzbt.zza);
    public static zzel<Integer> zzak = zza("measurement.test.int_flag", -2, -2, zzbw.zza);
    public static zzel<Integer> zzam = zza("measurement.experiment.max_ids", 50, 50, zzby.zza);
    public static zzel<Boolean> zzan = zza("measurement.validation.internal_limits_internal_event_params", false, false, zzbx.zza);
    public static zzel<Boolean> zzao = zza("measurement.referrer.enable_logging_install_referrer_cmp_from_apk", false, false, zzbz.zza);
    public static zzel<Boolean> zzap = zza("measurement.client.sessions.session_id_enabled", true, true, zzcc.zza);
    public static zzel<Boolean> zzaq = zza("measurement.service.sessions.session_number_enabled", true, true, zzcb.zza);
    public static zzel<Boolean> zzar = zza("measurement.client.sessions.background_sessions_enabled", true, true, zzce.zza);
    public static zzel<Boolean> zzas = zza("measurement.client.sessions.remove_expired_session_properties_enabled", true, true, zzcd.zza);
    public static zzel<Boolean> zzat = zza("measurement.service.sessions.session_number_backfill_enabled", true, true, zzcg.zza);
    public static zzel<Boolean> zzau = zza("measurement.service.sessions.remove_disabled_session_number", true, true, zzcf.zza);
    public static zzel<Boolean> zzav = zza("measurement.client.sessions.start_session_before_view_screen", true, true, zzci.zza);
    public static zzel<Boolean> zzaw = zza("measurement.client.sessions.check_on_startup", true, true, zzch.zza);
    public static zzel<Boolean> zzax = zza("measurement.collection.firebase_global_collection_flag_enabled", true, true, zzck.zza);
    public static zzel<Boolean> zzay = zza("measurement.collection.efficient_engagement_reporting_enabled", false, false, zzcm.zza);
    public static zzel<Boolean> zzaz = zza("measurement.collection.redundant_engagement_removal_enabled", false, false, zzcl.zza);
    public static zzel<Boolean> zzba = zza("measurement.personalized_ads_signals_collection_enabled", true, true, zzco.zza);
    public static zzel<Boolean> zzbb = zza("measurement.personalized_ads_property_translation_enabled", true, true, zzcn.zza);
    public static zzel<Boolean> zzbc = zza("measurement.upload.disable_is_uploader", true, true, zzcq.zza);
    public static zzel<Boolean> zzbd = zza("measurement.experiment.enable_experiment_reporting", true, true, zzcp.zza);
    public static zzel<Boolean> zzbe = zza("measurement.collection.log_event_and_bundle_v2", true, true, zzcs.zza);
    public static zzel<Boolean> zzbf = zza("measurement.quality.checksum", false, false, null);
    public static zzel<Boolean> zzbg = zza("measurement.module.collection.conditionally_omit_admob_app_id", true, true, zzcr.zza);
    public static zzel<Boolean> zzbh = zza("measurement.sdk.dynamite.use_dynamite2", false, false, zzcu.zza);
    public static zzel<Boolean> zzbi = zza("measurement.sdk.dynamite.allow_remote_dynamite", false, false, zzct.zza);
    public static zzel<Boolean> zzbj = zza("measurement.sdk.collection.validate_param_names_alphabetical", false, false, zzcv.zza);
    public static zzel<Boolean> zzbk = zza("measurement.collection.event_safelist", true, true, zzcy.zza);
    public static zzel<Boolean> zzbl = zza("measurement.service.audience.scoped_filters_v27", false, false, zzcx.zza);
    public static zzel<Boolean> zzbm = zza("measurement.service.audience.session_scoped_event_aggregates", false, false, zzda.zza);
    public static zzel<Boolean> zzbn = zza("measurement.service.audience.session_scoped_user_engagement", false, false, zzcz.zza);
    public static zzel<Boolean> zzbo = zza("measurement.service.audience.scoped_engagement_removal_when_session_expired", true, true, zzdc.zza);
    public static zzel<Boolean> zzbp = zza("measurement.client.audience.scoped_engagement_removal_when_session_expired", true, true, zzdb.zza);
    public static zzel<Boolean> zzbq = zza("measurement.service.audience.remove_disabled_session_scoped_user_engagement", false, false, zzde.zza);
    public static zzel<Boolean> zzbr = zza("measurement.service.audience.use_bundle_timestamp_for_property_filters", false, false, zzdd.zza);
    public static zzel<Boolean> zzbs = zza("measurement.service.audience.fix_prepending_previous_sequence_timestamp", false, false, zzdg.zza);
    private static zzel<Boolean> zzct = zza("measurement.service.audience.invalidate_config_cache_after_app_unisntall", false, false, zzdi.zza);
    public static zzel<Boolean> zzbt = zza("measurement.service.audience.fix_skip_audience_with_failed_filters", true, true, zzdh.zza);
    public static zzel<Boolean> zzbu = zza("measurement.sdk.collection.retrieve_deeplink_from_bow_2", true, true, zzdk.zza);
    public static zzel<Boolean> zzbv = zza("measurement.app_launch.event_ordering_fix", false, false, zzdj.zza);
    public static zzel<Boolean> zzbw = zza("measurement.sdk.collection.last_deep_link_referrer", false, false, zzdm.zza);
    public static zzel<Boolean> zzbx = zza("measurement.sdk.collection.last_deep_link_referrer_campaign", false, false, zzdl.zza);
    public static zzel<Boolean> zzby = zza("measurement.sdk.collection.last_gclid_from_referrer", false, false, zzdo.zza);
    public static zzel<Boolean> zzbz = zza("measurement.sdk.collection.worker_thread_referrer", true, true, zzdn.zza);
    public static zzel<Boolean> zzca = zza("measurement.upload.file_lock_state_check", false, false, zzdq.zza);
    public static zzel<Boolean> zzcb = zza("measurement.sampling.calculate_bundle_timestamp_before_sampling", true, true, zzdp.zza);
    public static zzel<Boolean> zzcc = zza("measurement.ga.ga_app_id", false, false, zzdr.zza);
    public static zzel<Boolean> zzcd = zza("measurement.lifecycle.app_backgrounded_tracking", false, false, zzdu.zza);
    public static zzel<Boolean> zzce = zza("measurement.lifecycle.app_in_background_parameter", false, false, zzdt.zza);
    public static zzel<Boolean> zzcf = zza("measurement.integration.disable_firebase_instance_id", false, false, zzdw.zza);
    public static zzel<Boolean> zzcg = zza("measurement.lifecycle.app_backgrounded_engagement", false, false, zzdv.zza);
    public static zzel<Boolean> zzch = zza("measurement.service.fix_gmp_version", false, false, zzdy.zza);
    public static zzel<Boolean> zzci = zza("measurement.collection.service.update_with_analytics_fix", false, false, zzdx.zza);
    public static zzel<Boolean> zzcj = zza("measurement.service.disable_install_state_reporting", false, false, zzea.zza);
    public static zzel<Boolean> zzck = zza("measurement.service.use_appinfo_modified", false, false, zzdz.zza);
    private static zzel<Boolean> zzcu = zza("measurement.upload.dsid_reflection_failure_logging", true, true, zzec.zza);
    public static zzel<Boolean> zzcl = zza("measurement.client.firebase_feature_rollout.v1.enable", true, true, zzee.zza);
    public static zzel<Boolean> zzcm = zza("measurement.client.sessions.check_on_reset_and_enable", false, false, zzed.zza);
    public static zzel<Boolean> zzcn = zza("measurement.config.string.always_update_disk_on_set", false, false, zzeg.zza);
    public static zzel<Boolean> zzco = zza("measurement.scheduler.task_thread.cleanup_on_exit", false, false, zzef.zza);
    public static zzel<Boolean> zzcp = zza("measurement.upload.file_truncate_fix", false, false, zzei.zza);
    public static zzel<Boolean> zzcq = zza("measurement.lifecycle.app_background_timestamp_when_backgrounded", true, true, zzeh.zza);

    static {
        Double valueOf = Double.valueOf(-3.0d);
        zzal = zza("measurement.test.double_flag", valueOf, valueOf, zzbv.zza);
    }

    private static <V> zzel<V> zza(String str, V v, V v2, zzej<V> zzejVar) {
        zzel<V> zzelVar = new zzel<>(str, v, v2, zzejVar);
        zzcr.add(zzelVar);
        return zzelVar;
    }

    public static Map<String, String> zza(Context context) {
        zzbx zza2 = zzbx.zza(context.getContentResolver(), zzcm.zza("com.google.android.gms.measurement"));
        return zza2 == null ? Collections.emptyMap() : zza2.zza();
    }

    public static final /* synthetic */ Long zzco() {
        if (zzem.zza != null) {
            zzw zzwVar = zzem.zza;
        }
        return Long.valueOf(zzjd.zzc());
    }
}
