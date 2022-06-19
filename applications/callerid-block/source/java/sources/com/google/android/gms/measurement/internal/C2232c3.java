package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.C2129i3;
import com.google.android.gms.internal.measurement.y2;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.c3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c3.class */
public final class C2232c3 {

    /* renamed from: A0 */
    public static final C2219a3<Boolean> f10009A0;

    /* renamed from: B0 */
    public static final C2219a3<Boolean> f10011B0;

    /* renamed from: C0 */
    public static final C2219a3<Boolean> f10013C0;

    /* renamed from: D0 */
    public static final C2219a3<Boolean> f10015D0;

    /* renamed from: K */
    public static final C2219a3<Boolean> f10022K;

    /* renamed from: O */
    public static final C2219a3<Double> f10026O;

    /* renamed from: S */
    public static final C2219a3<Boolean> f10030S;

    /* renamed from: T */
    public static final C2219a3<Boolean> f10031T;

    /* renamed from: U */
    public static final C2219a3<Boolean> f10032U;

    /* renamed from: V */
    public static final C2219a3<Boolean> f10033V;

    /* renamed from: W */
    public static final C2219a3<Boolean> f10034W;

    /* renamed from: X */
    public static final C2219a3<Boolean> f10035X;

    /* renamed from: Y */
    public static final C2219a3<Boolean> f10036Y;

    /* renamed from: Z */
    public static final C2219a3<Boolean> f10037Z;

    /* renamed from: a0 */
    public static final C2219a3<Boolean> f10039a0;

    /* renamed from: b */
    public static final C2219a3<Long> f10040b;

    /* renamed from: b0 */
    public static final C2219a3<Boolean> f10041b0;

    /* renamed from: c0 */
    public static final C2219a3<Boolean> f10043c0;

    /* renamed from: d0 */
    public static final C2219a3<Boolean> f10045d0;

    /* renamed from: e0 */
    public static final C2219a3<Boolean> f10047e0;

    /* renamed from: f0 */
    public static final C2219a3<Boolean> f10049f0;

    /* renamed from: g0 */
    public static final C2219a3<Boolean> f10051g0;

    /* renamed from: h0 */
    public static final C2219a3<Boolean> f10053h0;

    /* renamed from: i0 */
    public static final C2219a3<Boolean> f10055i0;

    /* renamed from: j0 */
    public static final C2219a3<Boolean> f10057j0;

    /* renamed from: k0 */
    public static final C2219a3<Boolean> f10059k0;

    /* renamed from: l0 */
    public static final C2219a3<Boolean> f10061l0;

    /* renamed from: m0 */
    public static final C2219a3<Boolean> f10063m0;

    /* renamed from: n0 */
    public static final C2219a3<Boolean> f10065n0;

    /* renamed from: o0 */
    public static final C2219a3<Boolean> f10067o0;

    /* renamed from: p0 */
    public static final C2219a3<Boolean> f10069p0;

    /* renamed from: q0 */
    public static final C2219a3<Boolean> f10071q0;

    /* renamed from: r0 */
    public static final C2219a3<Boolean> f10073r0;

    /* renamed from: s0 */
    public static final C2219a3<Boolean> f10075s0;

    /* renamed from: t0 */
    public static final C2219a3<Boolean> f10077t0;

    /* renamed from: u */
    public static final C2219a3<Long> f10078u;

    /* renamed from: u0 */
    public static final C2219a3<Boolean> f10079u0;

    /* renamed from: v0 */
    public static final C2219a3<Boolean> f10081v0;

    /* renamed from: w0 */
    public static final C2219a3<Boolean> f10083w0;

    /* renamed from: y0 */
    public static final C2219a3<Boolean> f10087y0;

    /* renamed from: z0 */
    public static final C2219a3<Boolean> f10089z0;

    /* renamed from: a */
    private static final List<C2219a3<?>> f10038a = Collections.synchronizedList(new ArrayList());

    /* renamed from: c */
    public static final C2219a3<Long> f10042c = m4013b("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, e0.a);

    /* renamed from: d */
    public static final C2219a3<Long> f10044d = m4013b("measurement.config.cache_time", 86400000L, 3600000L, p0.a);

    /* renamed from: e */
    public static final C2219a3<String> f10046e = m4013b("measurement.config.url_scheme", "https", "https", b1.a);

    /* renamed from: f */
    public static final C2219a3<String> f10048f = m4013b("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", m1.a);

    /* renamed from: g */
    public static final C2219a3<Integer> f10050g = m4013b("measurement.upload.max_bundles", 100, 100, x1.a);

    /* renamed from: h */
    public static final C2219a3<Integer> f10052h = m4013b("measurement.upload.max_batch_size", 65536, 65536, j2.a);

    /* renamed from: i */
    public static final C2219a3<Integer> f10054i = m4013b("measurement.upload.max_bundle_size", 65536, 65536, u2.a);

    /* renamed from: j */
    public static final C2219a3<Integer> f10056j = m4013b("measurement.upload.max_events_per_bundle", 1000, 1000, v2.a);

    /* renamed from: k */
    public static final C2219a3<Integer> f10058k = m4013b("measurement.upload.max_events_per_day", 100000, 100000, w2.a);

    /* renamed from: l */
    public static final C2219a3<Integer> f10060l = m4013b("measurement.upload.max_error_events_per_day", 1000, 1000, t.a);

    /* renamed from: m */
    public static final C2219a3<Integer> f10062m = m4013b("measurement.upload.max_public_events_per_day", 50000, 50000, u.a);

    /* renamed from: n */
    public static final C2219a3<Integer> f10064n = m4013b("measurement.upload.max_conversions_per_day", 10000, 10000, v.a);

    /* renamed from: o */
    public static final C2219a3<Integer> f10066o = m4013b("measurement.upload.max_realtime_events_per_day", 10, 10, w.a);

    /* renamed from: p */
    public static final C2219a3<Integer> f10068p = m4013b("measurement.store.max_stored_events_per_app", 100000, 100000, x.a);

    /* renamed from: q */
    public static final C2219a3<String> f10070q = m4013b("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", z.a);

    /* renamed from: r */
    public static final C2219a3<Long> f10072r = m4013b("measurement.upload.backoff_period", 43200000L, 43200000L, a0.a);

    /* renamed from: s */
    public static final C2219a3<Long> f10074s = m4013b("measurement.upload.window_interval", 3600000L, 3600000L, b0.a);

    /* renamed from: t */
    public static final C2219a3<Long> f10076t = m4013b("measurement.upload.interval", 3600000L, 3600000L, c0.a);

    /* renamed from: v */
    public static final C2219a3<Long> f10080v = m4013b("measurement.upload.debug_upload_interval", 1000L, 1000L, f0.a);

    /* renamed from: w */
    public static final C2219a3<Long> f10082w = m4013b("measurement.upload.minimum_delay", 500L, 500L, g0.a);

    /* renamed from: x */
    public static final C2219a3<Long> f10084x = m4013b("measurement.alarm_manager.minimum_interval", 60000L, 60000L, h0.a);

    /* renamed from: y */
    public static final C2219a3<Long> f10086y = m4013b("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, i0.a);

    /* renamed from: z */
    public static final C2219a3<Long> f10088z = m4013b("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, j0.a);

    /* renamed from: A */
    public static final C2219a3<Long> f10008A = m4013b("measurement.upload.initial_upload_delay_time", 15000L, 15000L, k0.a);

    /* renamed from: B */
    public static final C2219a3<Long> f10010B = m4013b("measurement.upload.retry_time", 1800000L, 1800000L, l0.a);

    /* renamed from: C */
    public static final C2219a3<Integer> f10012C = m4013b("measurement.upload.retry_count", 6, 6, m0.a);

    /* renamed from: D */
    public static final C2219a3<Long> f10014D = m4013b("measurement.upload.max_queue_time", 2419200000L, 2419200000L, n0.a);

    /* renamed from: E */
    public static final C2219a3<Integer> f10016E = m4013b("measurement.lifetimevalue.max_currency_tracked", 4, 4, o0.a);

    /* renamed from: F */
    public static final C2219a3<Integer> f10017F = m4013b("measurement.audience.filter_result_max_count", 200, 200, q0.a);

    /* renamed from: G */
    public static final C2219a3<Integer> f10018G = m4013b("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: H */
    public static final C2219a3<Integer> f10019H = m4013b("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: I */
    public static final C2219a3<Integer> f10020I = m4013b("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: J */
    public static final C2219a3<Long> f10021J = m4013b("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, r0.a);

    /* renamed from: L */
    public static final C2219a3<String> f10023L = m4013b("measurement.test.string_flag", "---", "---", t0.a);

    /* renamed from: M */
    public static final C2219a3<Long> f10024M = m4013b("measurement.test.long_flag", -1L, -1L, u0.a);

    /* renamed from: N */
    public static final C2219a3<Integer> f10025N = m4013b("measurement.test.int_flag", -2, -2, v0.a);

    /* renamed from: P */
    public static final C2219a3<Integer> f10027P = m4013b("measurement.experiment.max_ids", 50, 50, x0.a);

    /* renamed from: Q */
    public static final C2219a3<Integer> f10028Q = m4013b("measurement.max_bundles_per_iteration", 100, 100, y0.a);

    /* renamed from: R */
    public static final C2219a3<Long> f10029R = m4013b("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, a1.a);

    /* renamed from: x0 */
    public static final C2219a3<Integer> f10085x0 = m4013b("measurement.service.storage_consent_support_version", 203600, 203600, l2.a);

    static {
        Collections.synchronizedSet(new HashSet());
        Long valueOf = Long.valueOf((long) OkHttpUtils.DEFAULT_MILLISECONDS);
        f10040b = m4013b("measurement.ad_id_cache_time", valueOf, valueOf, s.a);
        f10078u = m4013b("measurement.upload.realtime_upload_interval", valueOf, valueOf, d0.a);
        Boolean bool = Boolean.FALSE;
        f10022K = m4013b("measurement.test.boolean_flag", bool, bool, s0.a);
        Double valueOf2 = Double.valueOf(-3.0d);
        f10026O = m4013b("measurement.test.double_flag", valueOf2, valueOf2, w0.a);
        f10030S = m4013b("measurement.validation.internal_limits_internal_event_params", bool, bool, c1.a);
        Boolean bool2 = Boolean.TRUE;
        f10031T = m4013b("measurement.collection.firebase_global_collection_flag_enabled", bool2, bool2, d1.a);
        f10032U = m4013b("measurement.collection.redundant_engagement_removal_enabled", bool, bool, e1.a);
        f10033V = m4013b("measurement.collection.log_event_and_bundle_v2", bool2, bool2, f1.a);
        f10034W = m4013b("measurement.quality.checksum", bool, bool, null);
        f10035X = m4013b("measurement.sdk.collection.validate_param_names_alphabetical", bool2, bool2, g1.a);
        f10036Y = m4013b("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, h1.a);
        f10037Z = m4013b("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, i1.a);
        f10039a0 = m4013b("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, j1.a);
        f10041b0 = m4013b("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, k1.a);
        f10043c0 = m4013b("measurement.sdk.collection.last_deep_link_referrer2", bool2, bool2, l1.a);
        f10045d0 = m4013b("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, n1.a);
        f10047e0 = m4013b("measurement.sdk.collection.last_gclid_from_referrer2", bool, bool, o1.a);
        f10049f0 = m4013b("measurement.sdk.collection.enable_extend_user_property_size", bool2, bool2, p1.a);
        f10051g0 = m4013b("measurement.upload.file_lock_state_check", bool2, bool2, q1.a);
        f10053h0 = m4013b("measurement.ga.ga_app_id", bool, bool, r1.a);
        f10055i0 = m4013b("measurement.lifecycle.app_in_background_parameter", bool, bool, s1.a);
        f10057j0 = m4013b("measurement.integration.disable_firebase_instance_id", bool, bool, t1.a);
        f10059k0 = m4013b("measurement.lifecycle.app_backgrounded_engagement", bool, bool, u1.a);
        f10061l0 = m4013b("measurement.collection.service.update_with_analytics_fix", bool, bool, v1.a);
        f10063m0 = m4013b("measurement.service.use_appinfo_modified", bool2, bool2, w1.a);
        f10065n0 = m4013b("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, y1.a);
        f10067o0 = m4013b("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, z1.a);
        f10069p0 = m4013b("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, b2.a);
        f10071q0 = m4013b("measurement.upload.file_truncate_fix", bool, bool, c2.a);
        f10073r0 = m4013b("measurement.sdk.screen.disabling_automatic_reporting", bool2, bool2, d2.a);
        f10075s0 = m4013b("measurement.sdk.screen.manual_screen_view_logging", bool2, bool2, e2.a);
        m4013b("measurement.collection.synthetic_data_mitigation", bool, bool, f2.a);
        f10077t0 = m4013b("measurement.androidId.delete_feature", bool2, bool2, g2.a);
        f10079u0 = m4013b("measurement.client.consent_state_v1", bool2, bool2, h2.a);
        f10081v0 = m4013b("measurement.client.3p_consent_state_v1", bool2, bool2, i2.a);
        f10083w0 = m4013b("measurement.service.consent_state_v1_W36", bool2, bool2, k2.a);
        f10087y0 = m4013b("measurement.upload.directly_maybe_log_error_events", bool2, bool2, m2.a);
        f10089z0 = m4013b("measurement.frontend.directly_maybe_log_error_events", bool, bool, n2.a);
        f10009A0 = m4013b("measurement.client.properties.non_null_origin", bool2, bool2, o2.a);
        m4013b("measurement.client.click_identifier_control.dev", bool, bool, p2.a);
        m4013b("measurement.service.click_identifier_control", bool, bool, q2.a);
        f10011B0 = m4013b("measurement.client.reject_blank_user_id", bool2, bool2, r2.a);
        f10013C0 = m4013b("measurement.config.persist_last_modified", bool, bool, s2.a);
        f10015D0 = m4013b("measurement.client.consent.suppress_1p_in_ga4f_install", bool2, bool2, t2.a);
    }

    /* renamed from: a */
    public static Map<String, String> m4014a(Context context) {
        y2 a = y2.a(context.getContentResolver(), C2129i3.m4322a("com.google.android.gms.measurement"));
        return a == null ? Collections.emptyMap() : a.b();
    }

    /* renamed from: b */
    static <V> C2219a3<V> m4013b(String str, V v, V v2, AbstractC2371y2<V> abstractC2371y2) {
        C2219a3<V> c2219a3 = new C2219a3<>(str, v, v2, abstractC2371y2, null);
        f10038a.add(c2219a3);
        return c2219a3;
    }
}
