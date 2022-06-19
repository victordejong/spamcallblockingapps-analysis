package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.C3806av;
import com.google.android.gms.internal.measurement.C3822bk;
import com.google.android.gms.internal.measurement.C4017ic;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/t.class */
public final class C4452t {

    /* renamed from: N */
    public static C4256dr<Double> f19404N;

    /* renamed from: aR */
    private static List<C4256dr<?>> f19435aR = Collections.synchronizedList(new ArrayList());

    /* renamed from: aS */
    private static Set<C4256dr<?>> f19436aS = Collections.synchronizedSet(new HashSet());

    /* renamed from: a */
    public static C4256dr<Long> f19417a = m3987a("measurement.ad_id_cache_time", 10000L, 10000L, C4451s.f19390a);

    /* renamed from: b */
    public static C4256dr<Long> f19466b = m3987a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, C4454v.f19492a);

    /* renamed from: c */
    public static C4256dr<Long> f19467c = m3987a("measurement.config.cache_time", 86400000L, 3600000L, C4163af.f18582a);

    /* renamed from: d */
    public static C4256dr<String> f19468d = m3987a("measurement.config.url_scheme", "https", "https", C4176as.f18595a);

    /* renamed from: e */
    public static C4256dr<String> f19469e = m3987a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", C4186bb.f18607a);

    /* renamed from: f */
    public static C4256dr<Integer> f19470f = m3987a("measurement.upload.max_bundles", 100, 100, C4200bp.f18622a);

    /* renamed from: g */
    public static C4256dr<Integer> f19471g = m3987a("measurement.upload.max_batch_size", 65536, 65536, C4209by.f18631a);

    /* renamed from: h */
    public static C4256dr<Integer> f19472h = m3987a("measurement.upload.max_bundle_size", 65536, 65536, C4224cm.f18657a);

    /* renamed from: i */
    public static C4256dr<Integer> f19473i = m3987a("measurement.upload.max_events_per_bundle", 1000, 1000, C4233cv.f18666a);

    /* renamed from: j */
    public static C4256dr<Integer> f19474j = m3987a("measurement.upload.max_events_per_day", 100000, 100000, C4248dj.f18680a);

    /* renamed from: k */
    public static C4256dr<Integer> f19475k = m3987a("measurement.upload.max_error_events_per_day", 1000, 1000, C4453u.f19491a);

    /* renamed from: l */
    public static C4256dr<Integer> f19476l = m3987a("measurement.upload.max_public_events_per_day", 50000, 50000, C4456x.f19494a);

    /* renamed from: m */
    public static C4256dr<Integer> f19477m = m3987a("measurement.upload.max_conversions_per_day", 10000, 10000, C4455w.f19493a);

    /* renamed from: n */
    public static C4256dr<Integer> f19478n = m3987a("measurement.upload.max_realtime_events_per_day", 10, 10, C4458z.f19496a);

    /* renamed from: o */
    public static C4256dr<Integer> f19479o = m3987a("measurement.store.max_stored_events_per_app", 100000, 100000, C4457y.f19495a);

    /* renamed from: p */
    public static C4256dr<String> f19480p = m3987a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", C4160ac.f18579a);

    /* renamed from: q */
    public static C4256dr<Long> f19481q = m3987a("measurement.upload.backoff_period", 43200000L, 43200000L, C4158aa.f18575a);

    /* renamed from: r */
    public static C4256dr<Long> f19482r = m3987a("measurement.upload.window_interval", 3600000L, 3600000L, C4162ae.f18581a);

    /* renamed from: s */
    public static C4256dr<Long> f19483s = m3987a("measurement.upload.interval", 3600000L, 3600000L, C4161ad.f18580a);

    /* renamed from: t */
    public static C4256dr<Long> f19484t = m3987a("measurement.upload.realtime_upload_interval", 10000L, 10000L, C4164ag.f18583a);

    /* renamed from: u */
    public static C4256dr<Long> f19485u = m3987a("measurement.upload.debug_upload_interval", 1000L, 1000L, C4166ai.f18585a);

    /* renamed from: v */
    public static C4256dr<Long> f19486v = m3987a("measurement.upload.minimum_delay", 500L, 500L, C4165ah.f18584a);

    /* renamed from: w */
    public static C4256dr<Long> f19487w = m3987a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, C4168ak.f18587a);

    /* renamed from: x */
    public static C4256dr<Long> f19488x = m3987a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, C4167aj.f18586a);

    /* renamed from: y */
    public static C4256dr<Long> f19489y = m3987a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, C4170am.f18589a);

    /* renamed from: z */
    public static C4256dr<Long> f19490z = m3987a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, C4169al.f18588a);

    /* renamed from: A */
    public static C4256dr<Long> f19391A = m3987a("measurement.upload.retry_time", 1800000L, 1800000L, C4172ao.f18591a);

    /* renamed from: B */
    public static C4256dr<Integer> f19392B = m3987a("measurement.upload.retry_count", 6, 6, C4171an.f18590a);

    /* renamed from: C */
    public static C4256dr<Long> f19393C = m3987a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, C4174aq.f18593a);

    /* renamed from: D */
    public static C4256dr<Integer> f19394D = m3987a("measurement.lifetimevalue.max_currency_tracked", 4, 4, C4173ap.f18592a);

    /* renamed from: E */
    public static C4256dr<Integer> f19395E = m3987a("measurement.audience.filter_result_max_count", 200, 200, C4175ar.f18594a);

    /* renamed from: F */
    public static C4256dr<Integer> f19396F = m3987a("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: G */
    public static C4256dr<Integer> f19397G = m3987a("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: H */
    public static C4256dr<Integer> f19398H = m3987a("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: I */
    public static C4256dr<Long> f19399I = m3987a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, C4178au.f18597a);

    /* renamed from: J */
    public static C4256dr<Boolean> f19400J = m3987a("measurement.test.boolean_flag", false, false, C4177at.f18596a);

    /* renamed from: K */
    public static C4256dr<String> f19401K = m3987a("measurement.test.string_flag", "---", "---", C4180aw.f18599a);

    /* renamed from: L */
    public static C4256dr<Long> f19402L = m3987a("measurement.test.long_flag", -1L, -1L, C4179av.f18598a);

    /* renamed from: M */
    public static C4256dr<Integer> f19403M = m3987a("measurement.test.int_flag", -2, -2, C4182ay.f18601a);

    /* renamed from: O */
    public static C4256dr<Integer> f19405O = m3987a("measurement.experiment.max_ids", 50, 50, C4185ba.f18606a);

    /* renamed from: P */
    public static C4256dr<Integer> f19406P = m3987a("measurement.max_bundles_per_iteration", 2, 2, C4183az.f18602a);

    /* renamed from: Q */
    public static C4256dr<Boolean> f19407Q = m3987a("measurement.validation.internal_limits_internal_event_params", false, false, C4188bd.f18610a);

    /* renamed from: R */
    public static C4256dr<Boolean> f19408R = m3987a("measurement.referrer.enable_logging_install_referrer_cmp_from_apk", true, true, C4190bf.f18612a);

    /* renamed from: S */
    public static C4256dr<Boolean> f19409S = m3987a("measurement.collection.firebase_global_collection_flag_enabled", true, true, C4189be.f18611a);

    /* renamed from: T */
    public static C4256dr<Boolean> f19410T = m3987a("measurement.collection.efficient_engagement_reporting_enabled_2", true, true, C4192bh.f18614a);

    /* renamed from: U */
    public static C4256dr<Boolean> f19411U = m3987a("measurement.collection.redundant_engagement_removal_enabled", false, false, C4191bg.f18613a);

    /* renamed from: V */
    public static C4256dr<Boolean> f19412V = m3987a("measurement.client.freeride_engagement_fix", true, true, C4194bj.f18616a);

    /* renamed from: W */
    public static C4256dr<Boolean> f19413W = m3987a("measurement.experiment.enable_experiment_reporting", true, true, C4193bi.f18615a);

    /* renamed from: X */
    public static C4256dr<Boolean> f19414X = m3987a("measurement.collection.log_event_and_bundle_v2", true, true, C4196bl.f18618a);

    /* renamed from: Y */
    public static C4256dr<Boolean> f19415Y = m3987a("measurement.quality.checksum", false, false, null);

    /* renamed from: Z */
    public static C4256dr<Boolean> f19416Z = m3987a("measurement.sdk.dynamite.use_dynamite3", true, true, C4195bk.f18617a);

    /* renamed from: aa */
    public static C4256dr<Boolean> f19440aa = m3987a("measurement.sdk.dynamite.allow_remote_dynamite", false, false, C4198bn.f18620a);

    /* renamed from: ab */
    public static C4256dr<Boolean> f19441ab = m3987a("measurement.sdk.collection.validate_param_names_alphabetical", true, true, C4197bm.f18619a);

    /* renamed from: ac */
    public static C4256dr<Boolean> f19442ac = m3987a("measurement.collection.event_safelist", true, true, C4199bo.f18621a);

    /* renamed from: aT */
    private static C4256dr<Boolean> f19437aT = m3987a("measurement.service.audience.invalidate_config_cache_after_app_unisntall", true, true, C4202br.f18624a);

    /* renamed from: ad */
    public static C4256dr<Boolean> f19443ad = m3987a("measurement.service.audience.fix_skip_audience_with_failed_filters", true, true, C4201bq.f18623a);

    /* renamed from: ae */
    public static C4256dr<Boolean> f19444ae = m3987a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false, false, C4204bt.f18626a);

    /* renamed from: af */
    public static C4256dr<Boolean> f19445af = m3987a("measurement.audience.refresh_event_count_filters_timestamp", false, false, C4203bs.f18625a);

    /* renamed from: ag */
    public static C4256dr<Boolean> f19446ag = m3987a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false, false, C4206bv.f18628a);

    /* renamed from: ah */
    public static C4256dr<Boolean> f19447ah = m3987a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", true, true, C4205bu.f18627a);

    /* renamed from: ai */
    public static C4256dr<Boolean> f19448ai = m3987a("measurement.sdk.collection.last_deep_link_referrer2", true, true, C4208bx.f18630a);

    /* renamed from: aj */
    public static C4256dr<Boolean> f19449aj = m3987a("measurement.sdk.collection.last_deep_link_referrer_campaign2", false, false, C4207bw.f18629a);

    /* renamed from: ak */
    public static C4256dr<Boolean> f19450ak = m3987a("measurement.sdk.collection.last_gclid_from_referrer2", false, false, C4210bz.f18632a);

    /* renamed from: al */
    public static C4256dr<Boolean> f19451al = m3987a("measurement.sdk.collection.enable_extend_user_property_size", true, true, C4213cb.f18644a);

    /* renamed from: am */
    public static C4256dr<Boolean> f19452am = m3987a("measurement.upload.file_lock_state_check", false, false, C4212ca.f18643a);

    /* renamed from: an */
    public static C4256dr<Boolean> f19453an = m3987a("measurement.sampling.calculate_bundle_timestamp_before_sampling", true, true, C4216ce.f18649a);

    /* renamed from: ao */
    public static C4256dr<Boolean> f19454ao = m3987a("measurement.ga.ga_app_id", false, false, C4214cc.f18645a);

    /* renamed from: ap */
    public static C4256dr<Boolean> f19455ap = m3987a("measurement.lifecycle.app_backgrounded_tracking", true, true, C4218cg.f18651a);

    /* renamed from: aq */
    public static C4256dr<Boolean> f19456aq = m3987a("measurement.lifecycle.app_in_background_parameter", false, false, C4217cf.f18650a);

    /* renamed from: ar */
    public static C4256dr<Boolean> f19457ar = m3987a("measurement.integration.disable_firebase_instance_id", false, false, C4220ci.f18653a);

    /* renamed from: as */
    public static C4256dr<Boolean> f19458as = m3987a("measurement.lifecycle.app_backgrounded_engagement", false, false, C4219ch.f18652a);

    /* renamed from: at */
    public static C4256dr<Boolean> f19459at = m3987a("measurement.collection.service.update_with_analytics_fix", false, false, C4222ck.f18655a);

    /* renamed from: au */
    public static C4256dr<Boolean> f19460au = m3987a("measurement.service.use_appinfo_modified", false, false, C4221cj.f18654a);

    /* renamed from: av */
    public static C4256dr<Boolean> f19461av = m3987a("measurement.client.firebase_feature_rollout.v1.enable", true, true, C4223cl.f18656a);

    /* renamed from: aw */
    public static C4256dr<Boolean> f19462aw = m3987a("measurement.client.sessions.check_on_reset_and_enable2", true, true, C4226co.f18659a);

    /* renamed from: ax */
    public static C4256dr<Boolean> f19463ax = m3987a("measurement.config.string.always_update_disk_on_set", true, true, C4225cn.f18658a);

    /* renamed from: ay */
    public static C4256dr<Boolean> f19464ay = m3987a("measurement.scheduler.task_thread.cleanup_on_exit", false, false, C4228cq.f18661a);

    /* renamed from: az */
    public static C4256dr<Boolean> f19465az = m3987a("measurement.upload.file_truncate_fix", false, false, C4227cp.f18660a);

    /* renamed from: aA */
    public static C4256dr<Boolean> f19418aA = m3987a("measurement.engagement_time_main_thread", true, true, C4230cs.f18663a);

    /* renamed from: aB */
    public static C4256dr<Boolean> f19419aB = m3987a("measurement.sdk.referrer.delayed_install_referrer_api", false, false, C4229cr.f18662a);

    /* renamed from: aC */
    public static C4256dr<Boolean> f19420aC = m3987a("measurement.sdk.screen.disabling_automatic_reporting", true, true, C4232cu.f18665a);

    /* renamed from: aD */
    public static C4256dr<Boolean> f19421aD = m3987a("measurement.sdk.screen.manual_screen_view_logging", true, true, C4231ct.f18664a);

    /* renamed from: aE */
    public static C4256dr<Boolean> f19422aE = m3987a("measurement.gold.enhanced_ecommerce.format_logs", false, false, C4234cw.f18667a);

    /* renamed from: aF */
    public static C4256dr<Boolean> f19423aF = m3987a("measurement.gold.enhanced_ecommerce.nested_param_daily_event_count", false, false, C4236cy.f18669a);

    /* renamed from: aG */
    public static C4256dr<Boolean> f19424aG = m3987a("measurement.gold.enhanced_ecommerce.upload_nested_complex_events", false, false, C4235cx.f18668a);

    /* renamed from: aH */
    public static C4256dr<Boolean> f19425aH = m3987a("measurement.gold.enhanced_ecommerce.log_nested_complex_events", false, false, C4239da.f18671a);

    /* renamed from: aI */
    public static C4256dr<Boolean> f19426aI = m3987a("measurement.gold.enhanced_ecommerce.updated_schema.client", false, false, C4237cz.f18670a);

    /* renamed from: aJ */
    public static C4256dr<Boolean> f19427aJ = m3987a("measurement.gold.enhanced_ecommerce.updated_schema.service", false, false, C4241dc.f18673a);

    /* renamed from: aU */
    private static C4256dr<Boolean> f19438aU = m3987a("measurement.collection.synthetic_data_mitigation", false, false, C4240db.f18672a);

    /* renamed from: aK */
    public static C4256dr<Boolean> f19428aK = m3987a("measurement.service.configurable_service_limits", false, false, C4244df.f18676a);

    /* renamed from: aL */
    public static C4256dr<Boolean> f19429aL = m3987a("measurement.client.configurable_service_limits", false, false, C4242dd.f18674a);

    /* renamed from: aM */
    public static C4256dr<Boolean> f19430aM = m3987a("measurement.androidId.delete_feature", true, true, C4246dh.f18678a);

    /* renamed from: aN */
    public static C4256dr<Boolean> f19431aN = m3987a("measurement.client.global_params.dev", false, false, C4245dg.f18677a);

    /* renamed from: aV */
    private static C4256dr<Boolean> f19439aV = m3987a("measurement.service.global_params", false, false, C4247di.f18679a);

    /* renamed from: aO */
    public static C4256dr<Boolean> f19432aO = m3987a("measurement.client.string_reader", true, true, C4250dl.f18682a);

    /* renamed from: aP */
    public static C4256dr<Boolean> f19433aP = m3987a("measurement.sdk.attribution.cache", true, true, C4249dk.f18681a);

    /* renamed from: aQ */
    public static C4256dr<Long> f19434aQ = m3987a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, C4252dn.f18683a);

    static {
        Double valueOf = Double.valueOf(-3.0d);
        f19404N = m3987a("measurement.test.double_flag", valueOf, valueOf, C4181ax.f18600a);
    }

    /* renamed from: a */
    private static <V> C4256dr<V> m3987a(String str, V v, V v2, AbstractC4254dp<V> abstractC4254dp) {
        C4256dr<V> c4256dr = new C4256dr<>(str, v, v2, abstractC4254dp);
        f19435aR.add(c4256dr);
        return c4256dr;
    }

    /* renamed from: a */
    public static Map<String, String> m3988a(Context context) {
        C3806av m5900a = C3806av.m5900a(context.getContentResolver(), C3822bk.m5864a("com.google.android.gms.measurement"));
        return m5900a == null ? Collections.emptyMap() : m5900a.m5901a();
    }

    /* renamed from: aN */
    public static final /* synthetic */ Long m3973aN() {
        if (C4253do.f18684a != null) {
            C4439kk c4439kk = C4253do.f18684a;
        }
        return Long.valueOf(C4017ic.m5153c());
    }
}
