package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzha;
import com.google.android.gms.internal.measurement.zzhk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.AbstractC25073k;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzdu.class */
public final class zzdu {

    /* renamed from: A */
    public static final zzdt f6284A;

    /* renamed from: K */
    public static final zzdt f6294K;

    /* renamed from: O */
    public static final zzdt f6298O;

    /* renamed from: S */
    public static final zzdt f6302S;

    /* renamed from: T */
    public static final zzdt f6303T;

    /* renamed from: U */
    public static final zzdt f6304U;

    /* renamed from: V */
    public static final zzdt f6305V;

    /* renamed from: W */
    public static final zzdt f6306W;

    /* renamed from: X */
    public static final zzdt f6307X;

    /* renamed from: Y */
    public static final zzdt f6308Y;

    /* renamed from: Z */
    public static final zzdt f6309Z;

    /* renamed from: a0 */
    public static final zzdt f6311a0;

    /* renamed from: b0 */
    public static final zzdt f6313b0;

    /* renamed from: c */
    public static final zzdt f6314c;

    /* renamed from: c0 */
    public static final zzdt f6315c0;

    /* renamed from: d */
    public static final zzdt f6316d;

    /* renamed from: d0 */
    public static final zzdt f6317d0;

    /* renamed from: e0 */
    public static final zzdt f6319e0;

    /* renamed from: f0 */
    public static final zzdt f6321f0;

    /* renamed from: g0 */
    public static final zzdt f6323g0;

    /* renamed from: h0 */
    public static final zzdt f6325h0;

    /* renamed from: j0 */
    public static final zzdt f6329j0;

    /* renamed from: k0 */
    public static final zzdt f6331k0;

    /* renamed from: l0 */
    public static final zzdt f6333l0;

    /* renamed from: m0 */
    public static final zzdt f6335m0;

    /* renamed from: n0 */
    public static final zzdt f6337n0;

    /* renamed from: o0 */
    public static final zzdt f6339o0;

    /* renamed from: p0 */
    public static final zzdt f6341p0;

    /* renamed from: q0 */
    public static final zzdt f6343q0;

    /* renamed from: r0 */
    public static final zzdt f6345r0;

    /* renamed from: s */
    public static final zzdt f6346s;

    /* renamed from: s0 */
    public static final zzdt f6347s0;

    /* renamed from: t */
    public static final zzdt f6348t;

    /* renamed from: t0 */
    public static final zzdt f6349t0;

    /* renamed from: u0 */
    public static final zzdt f6351u0;

    /* renamed from: v0 */
    public static final zzdt f6353v0;

    /* renamed from: x */
    public static final zzdt f6355x;

    /* renamed from: y */
    public static final zzdt f6356y;

    /* renamed from: a */
    public static final List f6310a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    public static final zzdt f6312b = m38614a("measurement.ad_id_cache_time", 10000L, 10000L, zzaw.a);

    /* renamed from: e */
    public static final zzdt f6318e = m38614a("measurement.config.url_scheme", "https", "https", zzbl.a);

    /* renamed from: f */
    public static final zzdt f6320f = m38614a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", zzbx.a);

    /* renamed from: g */
    public static final zzdt f6322g = m38614a("measurement.upload.max_bundles", 100, 100, zzcj.a);

    /* renamed from: h */
    public static final zzdt f6324h = m38614a("measurement.upload.max_batch_size", 65536, 65536, zzcv.a);

    /* renamed from: i */
    public static final zzdt f6326i = m38614a("measurement.upload.max_bundle_size", 65536, 65536, zzdh.a);

    /* renamed from: j */
    public static final zzdt f6328j = m38614a("measurement.upload.max_events_per_bundle", 1000, 1000, zzdl.a);

    /* renamed from: k */
    public static final zzdt f6330k = m38614a("measurement.upload.max_events_per_day", 100000, 100000, zzdm.a);

    /* renamed from: l */
    public static final zzdt f6332l = m38614a("measurement.upload.max_error_events_per_day", 1000, 1000, zzbs.a);

    /* renamed from: m */
    public static final zzdt f6334m = m38614a("measurement.upload.max_public_events_per_day", 50000, 50000, zzcd.a);

    /* renamed from: n */
    public static final zzdt f6336n = m38614a("measurement.upload.max_conversions_per_day", 10000, 10000, zzco.a);

    /* renamed from: o */
    public static final zzdt f6338o = m38614a("measurement.upload.max_realtime_events_per_day", 10, 10, zzcz.a);

    /* renamed from: p */
    public static final zzdt f6340p = m38614a("measurement.store.max_stored_events_per_app", 100000, 100000, zzdk.a);

    /* renamed from: q */
    public static final zzdt f6342q = m38614a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", zzdn.a);

    /* renamed from: r */
    public static final zzdt f6344r = m38614a("measurement.upload.backoff_period", 43200000L, 43200000L, zzdo.a);

    /* renamed from: u */
    public static final zzdt f6350u = m38614a("measurement.upload.realtime_upload_interval", 10000L, 10000L, zzay.a);

    /* renamed from: v */
    public static final zzdt f6352v = m38614a("measurement.upload.debug_upload_interval", 1000L, 1000L, zzba.a);

    /* renamed from: w */
    public static final zzdt f6354w = m38614a("measurement.upload.minimum_delay", 500L, 500L, zzbb.a);

    /* renamed from: z */
    public static final zzdt f6357z = m38614a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, zzbe.a);

    /* renamed from: B */
    public static final zzdt f6285B = m38614a("measurement.upload.retry_time", 1800000L, 1800000L, zzbg.a);

    /* renamed from: C */
    public static final zzdt f6286C = m38614a("measurement.upload.retry_count", 6, 6, zzbi.a);

    /* renamed from: D */
    public static final zzdt f6287D = m38614a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, zzbj.a);

    /* renamed from: E */
    public static final zzdt f6288E = m38614a("measurement.lifetimevalue.max_currency_tracked", 4, 4, zzbk.a);

    /* renamed from: F */
    public static final zzdt f6289F = m38614a("measurement.audience.filter_result_max_count", 200, 200, zzbm.a);

    /* renamed from: G */
    public static final zzdt f6290G = m38614a("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: H */
    public static final zzdt f6291H = m38614a("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: I */
    public static final zzdt f6292I = m38614a("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: J */
    public static final zzdt f6293J = m38614a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, zzbn.a);

    /* renamed from: L */
    public static final zzdt f6295L = m38614a("measurement.test.string_flag", "---", "---", zzbp.a);

    /* renamed from: M */
    public static final zzdt f6296M = m38614a("measurement.test.long_flag", -1L, -1L, zzbq.a);

    /* renamed from: N */
    public static final zzdt f6297N = m38614a("measurement.test.int_flag", -2, -2, zzbr.a);

    /* renamed from: P */
    public static final zzdt f6299P = m38614a("measurement.experiment.max_ids", 50, 50, zzbu.a);

    /* renamed from: Q */
    public static final zzdt f6300Q = m38614a("measurement.max_bundles_per_iteration", 100, 100, zzbv.a);

    /* renamed from: R */
    public static final zzdt f6301R = m38614a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, zzbw.a);

    /* renamed from: i0 */
    public static final zzdt f6327i0 = m38614a("measurement.service.storage_consent_support_version", 203600, 203600, zzcr.a);

    static {
        Collections.synchronizedSet(new HashSet());
        Long valueOf = Long.valueOf((long) DtbConstants.SIS_CHECKIN_INTERVAL);
        f6314c = m38614a("measurement.monitoring.sample_period_millis", valueOf, valueOf, zzbh.a);
        Long valueOf2 = Long.valueOf((long) DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
        f6316d = m38614a("measurement.config.cache_time", valueOf, valueOf2, zzaz.a);
        f6346s = m38614a("measurement.upload.window_interval", valueOf2, valueOf2, zzdp.a);
        f6348t = m38614a("measurement.upload.interval", valueOf2, valueOf2, zzax.a);
        Long valueOf3 = Long.valueOf((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        f6355x = m38614a("measurement.alarm_manager.minimum_interval", valueOf3, valueOf3, zzbc.a);
        f6356y = m38614a("measurement.upload.stale_data_deletion_interval", valueOf, valueOf, zzbd.a);
        Long valueOf4 = Long.valueOf((long) DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
        f6284A = m38614a("measurement.upload.initial_upload_delay_time", valueOf4, valueOf4, zzbf.a);
        Boolean bool = Boolean.FALSE;
        f6294K = m38614a("measurement.test.boolean_flag", bool, bool, zzbo.a);
        Double valueOf5 = Double.valueOf(-3.0d);
        f6298O = m38614a("measurement.test.double_flag", valueOf5, valueOf5, zzbt.a);
        Boolean bool2 = Boolean.TRUE;
        f6302S = m38614a("measurement.validation.internal_limits_internal_event_params", bool2, bool2, zzby.a);
        f6303T = m38614a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, zzbz.a);
        f6304U = m38614a("measurement.quality.checksum", bool, bool, null);
        f6305V = m38614a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, zzca.a);
        f6306W = m38614a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, zzcb.a);
        f6307X = m38614a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, zzcc.a);
        f6308Y = m38614a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, zzce.a);
        f6309Z = m38614a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, zzcf.a);
        f6311a0 = m38614a("measurement.lifecycle.app_in_background_parameter", bool, bool, zzcg.a);
        f6313b0 = m38614a("measurement.integration.disable_firebase_instance_id", bool, bool, zzch.a);
        f6315c0 = m38614a("measurement.collection.service.update_with_analytics_fix", bool, bool, zzci.a);
        f6317d0 = m38614a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, zzck.a);
        f6319e0 = m38614a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, zzcl.a);
        f6321f0 = m38614a("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, zzcm.a);
        f6323g0 = m38614a("measurement.upload.file_truncate_fix", bool, bool, zzcn.a);
        m38614a("measurement.collection.synthetic_data_mitigation", bool, bool, zzcp.a);
        f6325h0 = m38614a("measurement.androidId.delete_feature", bool2, bool2, zzcq.a);
        m38614a("measurement.client.click_identifier_control.dev", bool, bool, zzcs.a);
        m38614a("measurement.service.click_identifier_control", bool, bool, zzct.a);
        f6329j0 = m38614a("measurement.client.consent.gmpappid_worker_thread_fix", bool2, bool2, zzcu.a);
        f6331k0 = m38614a("measurement.module.pixie.fix_array", bool2, bool2, zzcw.a);
        f6333l0 = m38614a("measurement.adid_zero.service", bool2, bool2, zzcx.a);
        f6335m0 = m38614a("measurement.adid_zero.remove_lair_if_adidzero_false", bool2, bool2, zzcy.a);
        f6337n0 = m38614a("measurement.adid_zero.remove_lair_if_userid_cleared", bool2, bool2, zzda.a);
        f6339o0 = m38614a("measurement.adid_zero.remove_lair_on_id_value_change_only", bool2, bool2, zzdb.a);
        f6341p0 = m38614a("measurement.adid_zero.adid_uid", bool, bool, zzdc.a);
        f6343q0 = m38614a("measurement.adid_zero.app_instance_id_fix", bool2, bool2, zzdd.a);
        f6345r0 = m38614a("measurement.service.refactor.package_side_screen", bool2, bool2, zzde.a);
        f6347s0 = m38614a("measurement.enhanced_campaign.service", bool, bool, zzdf.a);
        f6349t0 = m38614a("measurement.enhanced_campaign.client", bool, bool, zzdg.a);
        f6351u0 = m38614a("measurement.service.store_null_safelist", bool, bool, zzdi.a);
        f6353v0 = m38614a("measurement.service.store_safelist", bool, bool, zzdj.a);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static zzdt m38614a(String str, Object obj, Object obj2, AbstractC25073k abstractC25073k) {
        zzdt zzdtVar = new zzdt(str, obj, obj2, abstractC25073k, null);
        f6310a.add(zzdtVar);
        return zzdtVar;
    }

    /* renamed from: b */
    public static Map m38613b(Context context) {
        zzha zza = zzha.zza(context.getContentResolver(), zzhk.zza("com.google.android.gms.measurement"));
        return zza == null ? Collections.emptyMap() : zza.zzc();
    }
}
