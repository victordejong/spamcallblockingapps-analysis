package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.C7334d3;
import com.google.android.gms.internal.measurement.C7474n3;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.c3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/c3.class */
public final class C7672c3 {

    /* renamed from: A0 */
    public static final C7648a3<Boolean> f35029A0;

    /* renamed from: B0 */
    public static final C7648a3<Boolean> f35031B0;

    /* renamed from: C0 */
    public static final C7648a3<Boolean> f35033C0;

    /* renamed from: D0 */
    public static final C7648a3<Boolean> f35035D0;

    /* renamed from: E0 */
    public static final C7648a3<Boolean> f35037E0;

    /* renamed from: F0 */
    public static final C7648a3<Boolean> f35039F0;

    /* renamed from: G0 */
    public static final C7648a3<Boolean> f35041G0;

    /* renamed from: H0 */
    public static final C7648a3<Boolean> f35043H0;

    /* renamed from: L */
    public static final C7648a3<Boolean> f35047L;

    /* renamed from: P */
    public static final C7648a3<Double> f35051P;

    /* renamed from: T */
    public static final C7648a3<Boolean> f35055T;

    /* renamed from: U */
    public static final C7648a3<Boolean> f35056U;

    /* renamed from: V */
    public static final C7648a3<Boolean> f35057V;

    /* renamed from: W */
    public static final C7648a3<Boolean> f35058W;

    /* renamed from: X */
    public static final C7648a3<Boolean> f35059X;

    /* renamed from: Y */
    public static final C7648a3<Boolean> f35060Y;

    /* renamed from: Z */
    public static final C7648a3<Boolean> f35061Z;

    /* renamed from: a0 */
    public static final C7648a3<Boolean> f35063a0;

    /* renamed from: b0 */
    public static final C7648a3<Boolean> f35065b0;

    /* renamed from: c */
    public static final C7648a3<Long> f35066c;

    /* renamed from: c0 */
    public static final C7648a3<Boolean> f35067c0;

    /* renamed from: d0 */
    public static final C7648a3<Boolean> f35069d0;

    /* renamed from: e0 */
    public static final C7648a3<Boolean> f35071e0;

    /* renamed from: f0 */
    public static final C7648a3<Boolean> f35073f0;

    /* renamed from: g0 */
    public static final C7648a3<Boolean> f35075g0;

    /* renamed from: h0 */
    public static final C7648a3<Boolean> f35077h0;

    /* renamed from: i0 */
    public static final C7648a3<Boolean> f35079i0;

    /* renamed from: j0 */
    public static final C7648a3<Boolean> f35081j0;

    /* renamed from: k0 */
    public static final C7648a3<Boolean> f35083k0;

    /* renamed from: l0 */
    public static final C7648a3<Boolean> f35085l0;

    /* renamed from: m0 */
    public static final C7648a3<Boolean> f35087m0;

    /* renamed from: n0 */
    public static final C7648a3<Boolean> f35089n0;

    /* renamed from: o0 */
    public static final C7648a3<Boolean> f35091o0;

    /* renamed from: p0 */
    public static final C7648a3<Boolean> f35093p0;

    /* renamed from: q0 */
    public static final C7648a3<Boolean> f35095q0;

    /* renamed from: r0 */
    public static final C7648a3<Boolean> f35097r0;

    /* renamed from: s0 */
    public static final C7648a3<Boolean> f35099s0;

    /* renamed from: t0 */
    public static final C7648a3<Boolean> f35101t0;

    /* renamed from: u0 */
    public static final C7648a3<Boolean> f35103u0;

    /* renamed from: v */
    public static final C7648a3<Long> f35104v;

    /* renamed from: v0 */
    public static final C7648a3<Boolean> f35105v0;

    /* renamed from: w0 */
    public static final C7648a3<Boolean> f35107w0;

    /* renamed from: x0 */
    public static final C7648a3<Boolean> f35109x0;

    /* renamed from: y0 */
    public static final C7648a3<Boolean> f35111y0;

    /* renamed from: a */
    private static final List<C7648a3<?>> f35062a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    private static final Set<C7648a3<?>> f35064b = Collections.synchronizedSet(new HashSet());

    /* renamed from: d */
    public static final C7648a3<Long> f35068d = m6575b("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, C7693e0.f35190a);

    /* renamed from: e */
    public static final C7648a3<Long> f35070e = m6575b("measurement.config.cache_time", 86400000L, 3600000L, C7821p0.f35566a);

    /* renamed from: f */
    public static final C7648a3<String> f35072f = m6575b("measurement.config.url_scheme", "https", "https", C7658b1.f35000a);

    /* renamed from: g */
    public static final C7648a3<String> f35074g = m6575b("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", C7789m1.f35452a);

    /* renamed from: h */
    public static final C7648a3<Integer> f35076h = m6575b("measurement.upload.max_bundles", 100, 100, C7910x1.f35785a);

    /* renamed from: i */
    public static final C7648a3<Integer> f35078i = m6575b("measurement.upload.max_batch_size", 65536, 65536, C7755j2.f35350a);

    /* renamed from: j */
    public static final C7648a3<Integer> f35080j = m6575b("measurement.upload.max_bundle_size", 65536, 65536, C7878u2.f35709a);

    /* renamed from: k */
    public static final C7648a3<Integer> f35082k = m6575b("measurement.upload.max_events_per_bundle", 1000, 1000, C7889v2.f35732a);

    /* renamed from: l */
    public static final C7648a3<Integer> f35084l = m6575b("measurement.upload.max_events_per_day", 100000, 100000, C7900w2.f35768a);

    /* renamed from: m */
    public static final C7648a3<Integer> f35086m = m6575b("measurement.upload.max_error_events_per_day", 1000, 1000, C7864t.f35686a);

    /* renamed from: n */
    public static final C7648a3<Integer> f35088n = m6575b("measurement.upload.max_public_events_per_day", 50000, 50000, C7875u.f35706a);

    /* renamed from: o */
    public static final C7648a3<Integer> f35090o = m6575b("measurement.upload.max_conversions_per_day", 10000, 10000, C7886v.f35729a);

    /* renamed from: p */
    public static final C7648a3<Integer> f35092p = m6575b("measurement.upload.max_realtime_events_per_day", 10, 10, C7897w.f35765a);

    /* renamed from: q */
    public static final C7648a3<Integer> f35094q = m6575b("measurement.store.max_stored_events_per_app", 100000, 100000, C7908x.f35783a);

    /* renamed from: r */
    public static final C7648a3<String> f35096r = m6575b("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", C7930z.f35834a);

    /* renamed from: s */
    public static final C7648a3<Long> f35098s = m6575b("measurement.upload.backoff_period", 43200000L, 43200000L, C7645a0.f34968a);

    /* renamed from: t */
    public static final C7648a3<Long> f35100t = m6575b("measurement.upload.window_interval", 3600000L, 3600000L, C7657b0.f34999a);

    /* renamed from: u */
    public static final C7648a3<Long> f35102u = m6575b("measurement.upload.interval", 3600000L, 3600000L, C7669c0.f35025a);

    /* renamed from: w */
    public static final C7648a3<Long> f35106w = m6575b("measurement.upload.debug_upload_interval", 1000L, 1000L, C7705f0.f35241a);

    /* renamed from: x */
    public static final C7648a3<Long> f35108x = m6575b("measurement.upload.minimum_delay", 500L, 500L, C7717g0.f35270a);

    /* renamed from: y */
    public static final C7648a3<Long> f35110y = m6575b("measurement.alarm_manager.minimum_interval", 60000L, 60000L, C7729h0.f35298a);

    /* renamed from: z */
    public static final C7648a3<Long> f35112z = m6575b("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, C7741i0.f35329a);

    /* renamed from: A */
    public static final C7648a3<Long> f35028A = m6575b("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, C7753j0.f35348a);

    /* renamed from: B */
    public static final C7648a3<Long> f35030B = m6575b("measurement.upload.initial_upload_delay_time", 15000L, 15000L, C7765k0.f35374a);

    /* renamed from: C */
    public static final C7648a3<Long> f35032C = m6575b("measurement.upload.retry_time", 1800000L, 1800000L, C7777l0.f35414a);

    /* renamed from: D */
    public static final C7648a3<Integer> f35034D = m6575b("measurement.upload.retry_count", 6, 6, C7788m0.f35451a);

    /* renamed from: E */
    public static final C7648a3<Long> f35036E = m6575b("measurement.upload.max_queue_time", 2419200000L, 2419200000L, C7799n0.f35478a);

    /* renamed from: F */
    public static final C7648a3<Integer> f35038F = m6575b("measurement.lifetimevalue.max_currency_tracked", 4, 4, C7810o0.f35510a);

    /* renamed from: G */
    public static final C7648a3<Integer> f35040G = m6575b("measurement.audience.filter_result_max_count", 200, 200, C7832q0.f35589a);

    /* renamed from: H */
    public static final C7648a3<Integer> f35042H = m6575b("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: I */
    public static final C7648a3<Integer> f35044I = m6575b("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: J */
    public static final C7648a3<Integer> f35045J = m6575b("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: K */
    public static final C7648a3<Long> f35046K = m6575b("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, C7843r0.f35606a);

    /* renamed from: M */
    public static final C7648a3<String> f35048M = m6575b("measurement.test.string_flag", "---", "---", C7865t0.f35687a);

    /* renamed from: N */
    public static final C7648a3<Long> f35049N = m6575b("measurement.test.long_flag", -1L, -1L, C7876u0.f35707a);

    /* renamed from: O */
    public static final C7648a3<Integer> f35050O = m6575b("measurement.test.int_flag", -2, -2, C7887v0.f35730a);

    /* renamed from: Q */
    public static final C7648a3<Integer> f35052Q = m6575b("measurement.experiment.max_ids", 50, 50, C7909x0.f35784a);

    /* renamed from: R */
    public static final C7648a3<Integer> f35053R = m6575b("measurement.max_bundles_per_iteration", 100, 100, C7920y0.f35809a);

    /* renamed from: S */
    public static final C7648a3<Long> f35054S = m6575b("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, C7646a1.f34969a);

    /* renamed from: z0 */
    public static final C7648a3<Integer> f35113z0 = m6575b("measurement.service.storage_consent_support_version", 203600, 203600, C7779l2.f35416a);

    static {
        Long valueOf = Long.valueOf((long) OkHttpUtils.DEFAULT_MILLISECONDS);
        f35066c = m6575b("measurement.ad_id_cache_time", valueOf, valueOf, C7853s.f35624a);
        f35104v = m6575b("measurement.upload.realtime_upload_interval", valueOf, valueOf, C7681d0.f35138a);
        Boolean bool = Boolean.FALSE;
        f35047L = m6575b("measurement.test.boolean_flag", bool, bool, C7854s0.f35625a);
        Double valueOf2 = Double.valueOf(-3.0d);
        f35051P = m6575b("measurement.test.double_flag", valueOf2, valueOf2, C7898w0.f35766a);
        f35055T = m6575b("measurement.validation.internal_limits_internal_event_params", bool, bool, C7670c1.f35026a);
        Boolean bool2 = Boolean.TRUE;
        f35056U = m6575b("measurement.collection.firebase_global_collection_flag_enabled", bool2, bool2, C7682d1.f35139a);
        f35057V = m6575b("measurement.collection.redundant_engagement_removal_enabled", bool, bool, C7694e1.f35191a);
        f35058W = m6575b("measurement.collection.log_event_and_bundle_v2", bool2, bool2, C7706f1.f35242a);
        f35059X = m6575b("measurement.quality.checksum", bool, bool, null);
        f35060Y = m6575b("measurement.sdk.collection.validate_param_names_alphabetical", bool2, bool2, C7718g1.f35271a);
        f35061Z = m6575b("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, C7730h1.f35299a);
        f35063a0 = m6575b("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, C7742i1.f35330a);
        f35065b0 = m6575b("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, C7754j1.f35349a);
        f35067c0 = m6575b("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, C7766k1.f35375a);
        f35069d0 = m6575b("measurement.sdk.collection.last_deep_link_referrer2", bool2, bool2, C7778l1.f35415a);
        f35071e0 = m6575b("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, C7800n1.f35479a);
        f35073f0 = m6575b("measurement.sdk.collection.last_gclid_from_referrer2", bool, bool, C7811o1.f35511a);
        f35075g0 = m6575b("measurement.sdk.collection.enable_extend_user_property_size", bool2, bool2, C7822p1.f35567a);
        f35077h0 = m6575b("measurement.upload.file_lock_state_check", bool2, bool2, C7833q1.f35590a);
        f35079i0 = m6575b("measurement.ga.ga_app_id", bool, bool, C7844r1.f35607a);
        f35081j0 = m6575b("measurement.lifecycle.app_in_background_parameter", bool, bool, C7855s1.f35626a);
        f35083k0 = m6575b("measurement.integration.disable_firebase_instance_id", bool, bool, C7866t1.f35688a);
        f35085l0 = m6575b("measurement.lifecycle.app_backgrounded_engagement", bool, bool, C7877u1.f35708a);
        f35087m0 = m6575b("measurement.collection.service.update_with_analytics_fix", bool, bool, C7888v1.f35731a);
        f35089n0 = m6575b("measurement.service.use_appinfo_modified", bool2, bool2, C7899w1.f35767a);
        f35091o0 = m6575b("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, C7921y1.f35810a);
        f35093p0 = m6575b("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, C7932z1.f35837a);
        f35095q0 = m6575b("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, C7659b2.f35001a);
        f35097r0 = m6575b("measurement.upload.file_truncate_fix", bool, bool, C7671c2.f35027a);
        f35099s0 = m6575b("measurement.sdk.screen.disabling_automatic_reporting", bool2, bool2, C7683d2.f35140a);
        f35101t0 = m6575b("measurement.sdk.screen.manual_screen_view_logging", bool2, bool2, C7695e2.f35192a);
        f35103u0 = m6575b("measurement.collection.synthetic_data_mitigation", bool, bool, C7707f2.f35243a);
        f35105v0 = m6575b("measurement.androidId.delete_feature", bool2, bool2, C7719g2.f35272a);
        f35107w0 = m6575b("measurement.client.consent_state_v1", bool2, bool2, C7731h2.f35300a);
        f35109x0 = m6575b("measurement.client.3p_consent_state_v1", bool2, bool2, C7743i2.f35331a);
        f35111y0 = m6575b("measurement.service.consent_state_v1_W36", bool2, bool2, C7767k2.f35376a);
        f35029A0 = m6575b("measurement.upload.directly_maybe_log_error_events", bool2, bool2, C7790m2.f35453a);
        f35031B0 = m6575b("measurement.frontend.directly_maybe_log_error_events", bool, bool, C7801n2.f35480a);
        f35033C0 = m6575b("measurement.client.properties.non_null_origin", bool2, bool2, C7812o2.f35512a);
        f35035D0 = m6575b("measurement.client.click_identifier_control.dev", bool, bool, C7823p2.f35568a);
        f35037E0 = m6575b("measurement.service.click_identifier_control", bool, bool, C7834q2.f35591a);
        f35039F0 = m6575b("measurement.client.reject_blank_user_id", bool2, bool2, C7845r2.f35608a);
        f35041G0 = m6575b("measurement.config.persist_last_modified", bool, bool, C7856s2.f35627a);
        f35043H0 = m6575b("measurement.client.consent.suppress_1p_in_ga4f_install", bool2, bool2, C7867t2.f35689a);
    }

    /* renamed from: a */
    public static Map<String, String> m6576a(Context context) {
        C7334d3 m7612a = C7334d3.m7612a(context.getContentResolver(), C7474n3.m7080a("com.google.android.gms.measurement"));
        return m7612a == null ? Collections.emptyMap() : m7612a.m7611b();
    }

    /* renamed from: b */
    static <V> C7648a3<V> m6575b(String str, V v, V v2, AbstractC7922y2<V> abstractC7922y2) {
        C7648a3<V> c7648a3 = new C7648a3<>(str, v, v2, abstractC7922y2, null);
        f35062a.add(c7648a3);
        return c7648a3;
    }
}
