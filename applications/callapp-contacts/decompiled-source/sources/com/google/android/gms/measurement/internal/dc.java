package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.dj;
import com.google.android.gms.internal.measurement.ds;
import com.mopub.common.Constants;
import com.sinch.verification.core.internal.error.ApiErrorData;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dc.class */
public final class dc {
    public static final da<Boolean> J;
    public static final da<Double> N;
    public static final da<Long> Q;
    public static final da<Boolean> R;
    public static final da<Boolean> S;
    public static final da<Boolean> T;
    public static final da<Boolean> U;
    public static final da<Boolean> V;
    public static final da<Boolean> W;
    public static final da<Boolean> X;
    public static final da<Boolean> Y;
    public static final da<Boolean> Z;
    public static final da<Boolean> aA;
    public static final da<Boolean> aB;
    public static final da<Boolean> aC;
    public static final da<Boolean> aD;
    public static final da<Boolean> aE;
    public static final da<Boolean> aF;
    public static final da<Boolean> aa;
    public static final da<Boolean> ab;
    public static final da<Boolean> ac;
    public static final da<Boolean> ad;
    public static final da<Boolean> ae;
    public static final da<Boolean> af;
    public static final da<Boolean> ag;
    public static final da<Boolean> ah;
    public static final da<Boolean> ai;
    public static final da<Boolean> aj;
    public static final da<Boolean> ak;
    public static final da<Boolean> al;
    public static final da<Boolean> am;
    public static final da<Boolean> an;
    public static final da<Boolean> ao;
    public static final da<Boolean> ap;
    public static final da<Boolean> aq;
    public static final da<Boolean> ar;
    public static final da<Boolean> as;
    public static final da<Boolean> at;
    public static final da<Boolean> au;
    public static final da<Boolean> av;
    public static final da<Boolean> aw;
    public static final da<Boolean> ay;
    public static final da<Boolean> az;

    /* renamed from: c */
    public static final da<Long> f29483c;
    public static final da<Integer> l;
    public static final da<Long> r;
    public static final da<Long> s;
    public static final da<Long> w;
    public static final da<Long> y;
    public static final da<Long> z;
    private static final List<da<?>> aG = Collections.synchronizedList(new ArrayList());
    private static final Set<da<?>> aH = Collections.synchronizedSet(new HashSet());

    /* renamed from: a */
    public static final da<Long> f29481a = a("measurement.ad_id_cache_time", 10000L, 10000L, s.f29969a);

    /* renamed from: b */
    public static final da<Long> f29482b = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, ae.f29401a);

    /* renamed from: d */
    public static final da<String> f29484d = a("measurement.config.url_scheme", Constants.HTTPS, Constants.HTTPS, bb.f29425a);
    public static final da<String> e = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", bm.f29436a);
    public static final da<Integer> f = a("measurement.upload.max_bundles", 100, 100, bx.f29447a);
    public static final da<Integer> g = a("measurement.upload.max_batch_size", 65536, 65536, cj.f29462a);
    public static final da<Integer> h = a("measurement.upload.max_bundle_size", 65536, 65536, cu.f29473a);
    public static final da<Integer> i = a("measurement.upload.max_events_per_bundle", 1000, 1000, cv.f29474a);
    public static final da<Integer> j = a("measurement.upload.max_events_per_day", 100000, 100000, cw.f29475a);
    public static final da<Integer> k = a("measurement.upload.max_error_events_per_day", 1000, 1000, t.f29970a);
    public static final da<Integer> m = a("measurement.upload.max_conversions_per_day", 10000, 10000, v.f29972a);
    public static final da<Integer> n = a("measurement.upload.max_realtime_events_per_day", 10, 10, w.f29973a);
    public static final da<Integer> o = a("measurement.store.max_stored_events_per_app", 100000, 100000, x.f29974a);
    public static final da<String> p = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", z.f29978a);
    public static final da<Long> q = a("measurement.upload.backoff_period", 43200000L, 43200000L, aa.f29397a);
    public static final da<Long> t = a("measurement.upload.realtime_upload_interval", 10000L, 10000L, ad.f29400a);
    public static final da<Long> u = a("measurement.upload.debug_upload_interval", 1000L, 1000L, af.f29402a);
    public static final da<Long> v = a("measurement.upload.minimum_delay", 500L, 500L, ag.f29403a);
    public static final da<Long> x = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, ai.f29405a);
    public static final da<Long> A = a("measurement.upload.retry_time", 1800000L, 1800000L, al.f29408a);
    public static final da<Integer> B = a("measurement.upload.retry_count", 6, 6, am.f29409a);
    public static final da<Long> C = a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, an.f29410a);
    public static final da<Integer> D = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, ao.f29411a);
    public static final da<Integer> E = a("measurement.audience.filter_result_max_count", 200, 200, aq.f29413a);
    public static final da<Integer> F = a("measurement.upload.max_public_user_properties", 25, 25, null);
    public static final da<Integer> G = a("measurement.upload.max_event_name_cardinality", 500, 500, null);
    public static final da<Integer> H = a("measurement.upload.max_public_event_params", 25, 25, null);
    public static final da<Long> I = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, ar.f29414a);
    public static final da<String> K = a("measurement.test.string_flag", "---", "---", at.f29416a);
    public static final da<Long> L = a("measurement.test.long_flag", -1L, -1L, au.f29417a);
    public static final da<Integer> M = a("measurement.test.int_flag", -2, -2, av.f29418a);
    public static final da<Integer> O = a("measurement.experiment.max_ids", 50, 50, ax.f29420a);
    public static final da<Integer> P = a("measurement.max_bundles_per_iteration", 100, 100, ay.f29421a);
    public static final da<Integer> ax = a("measurement.service.storage_consent_support_version", 203600, 203600, cl.f29464a);

    static {
        Long valueOf = Long.valueOf((long) com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
        f29483c = a("measurement.config.cache_time", 86400000L, valueOf, ap.f29412a);
        Integer valueOf2 = Integer.valueOf((int) ApiErrorData.ErrorCodes.InternalServerError.InternalError);
        l = a("measurement.upload.max_public_events_per_day", valueOf2, valueOf2, u.f29971a);
        r = a("measurement.upload.window_interval", valueOf, valueOf, ab.f29398a);
        s = a("measurement.upload.interval", valueOf, valueOf, ac.f29399a);
        Long valueOf3 = Long.valueOf((long) com.callapp.contacts.model.Constants.MINUTE_IN_MILLIS);
        w = a("measurement.alarm_manager.minimum_interval", valueOf3, valueOf3, ah.f29404a);
        Long valueOf4 = Long.valueOf((long) com.callapp.contacts.model.Constants.WEEK_IN_MILLIS);
        y = a("measurement.upload.refresh_blacklisted_config_interval", valueOf4, valueOf4, aj.f29406a);
        Long valueOf5 = Long.valueOf((long) FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
        z = a("measurement.upload.initial_upload_delay_time", valueOf5, valueOf5, ak.f29407a);
        Boolean bool = Boolean.FALSE;
        J = a("measurement.test.boolean_flag", bool, bool, as.f29415a);
        Double valueOf6 = Double.valueOf(-3.0d);
        N = a("measurement.test.double_flag", valueOf6, valueOf6, aw.f29419a);
        Q = a("measurement.sdk.attribution.cache.ttl", valueOf4, valueOf4, ba.f29424a);
        R = a("measurement.validation.internal_limits_internal_event_params", bool, bool, bc.f29426a);
        Boolean bool2 = Boolean.TRUE;
        S = a("measurement.collection.firebase_global_collection_flag_enabled", bool2, bool2, bd.f29427a);
        T = a("measurement.collection.redundant_engagement_removal_enabled", bool, bool, be.f29428a);
        U = a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, bf.f29429a);
        V = a("measurement.quality.checksum", bool, bool, null);
        W = a("measurement.sdk.collection.validate_param_names_alphabetical", bool2, bool2, bg.f29430a);
        X = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, bh.f29431a);
        Y = a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, bi.f29432a);
        Z = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, bj.f29433a);
        aa = a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, bk.f29434a);
        ab = a("measurement.sdk.collection.last_deep_link_referrer2", bool2, bool2, bl.f29435a);
        ac = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, bn.f29437a);
        ad = a("measurement.sdk.collection.last_gclid_from_referrer2", bool, bool, bo.f29438a);
        ae = a("measurement.sdk.collection.enable_extend_user_property_size", bool2, bool2, bp.f29439a);
        af = a("measurement.upload.file_lock_state_check", bool2, bool2, bq.f29440a);
        ag = a("measurement.ga.ga_app_id", bool, bool, br.f29441a);
        ah = a("measurement.lifecycle.app_in_background_parameter", bool, bool, bs.f29442a);
        ai = a("measurement.integration.disable_firebase_instance_id", bool, bool, bt.f29443a);
        aj = a("measurement.lifecycle.app_backgrounded_engagement", bool, bool, bu.f29444a);
        ak = a("measurement.collection.service.update_with_analytics_fix", bool, bool, bv.f29445a);
        al = a("measurement.service.use_appinfo_modified", bool2, bool2, bw.f29446a);
        am = a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, by.f29448a);
        an = a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, bz.f29449a);
        ao = a("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, cb.f29454a);
        ap = a("measurement.upload.file_truncate_fix", bool, bool, cc.f29455a);
        aq = a("measurement.sdk.screen.disabling_automatic_reporting", bool2, bool2, cd.f29456a);
        ar = a("measurement.sdk.screen.manual_screen_view_logging", bool2, bool2, ce.f29457a);
        as = a("measurement.collection.synthetic_data_mitigation", bool, bool, cf.f29458a);
        at = a("measurement.androidId.delete_feature", bool2, bool2, cg.f29459a);
        au = a("measurement.client.consent_state_v1", bool2, bool2, ch.f29460a);
        av = a("measurement.client.3p_consent_state_v1", bool2, bool2, ci.f29461a);
        aw = a("measurement.service.consent_state_v1_W36", bool2, bool2, ck.f29463a);
        ay = a("measurement.upload.directly_maybe_log_error_events", bool2, bool2, cm.f29465a);
        az = a("measurement.frontend.directly_maybe_log_error_events", bool, bool, cn.f29466a);
        aA = a("measurement.client.properties.non_null_origin", bool2, bool2, co.f29467a);
        aB = a("measurement.client.click_identifier_control.dev", bool, bool, cp.f29468a);
        aC = a("measurement.service.click_identifier_control", bool, bool, cq.f29469a);
        aD = a("measurement.client.reject_blank_user_id", bool2, bool2, cr.f29470a);
        aE = a("measurement.config.persist_last_modified", bool, bool, cs.f29471a);
        aF = a("measurement.client.consent.suppress_1p_in_ga4f_install", bool2, bool2, ct.f29472a);
    }

    private static <V> da<V> a(String str, V v2, V v3, cy<V> cyVar) {
        da<V> daVar = new da<>(str, v2, v3, cyVar, null);
        aG.add(daVar);
        return daVar;
    }

    public static /* synthetic */ List a() {
        return aG;
    }

    public static Map<String, String> a(Context context) {
        dj a2 = dj.a(context.getContentResolver(), ds.a());
        return a2 == null ? Collections.emptyMap() : a2.a();
    }
}
