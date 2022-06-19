package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.C13443dj;
import com.google.android.gms.internal.measurement.C13452ds;
import com.mopub.common.Constants;
import com.sinch.verification.core.internal.error.ApiErrorData;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.dc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dc.class */
public final class C13935dc {

    /* renamed from: J */
    public static final C13933da<Boolean> f51287J;

    /* renamed from: N */
    public static final C13933da<Double> f51291N;

    /* renamed from: Q */
    public static final C13933da<Long> f51294Q;

    /* renamed from: R */
    public static final C13933da<Boolean> f51295R;

    /* renamed from: S */
    public static final C13933da<Boolean> f51296S;

    /* renamed from: T */
    public static final C13933da<Boolean> f51297T;

    /* renamed from: U */
    public static final C13933da<Boolean> f51298U;

    /* renamed from: V */
    public static final C13933da<Boolean> f51299V;

    /* renamed from: W */
    public static final C13933da<Boolean> f51300W;

    /* renamed from: X */
    public static final C13933da<Boolean> f51301X;

    /* renamed from: Y */
    public static final C13933da<Boolean> f51302Y;

    /* renamed from: Z */
    public static final C13933da<Boolean> f51303Z;

    /* renamed from: aA */
    public static final C13933da<Boolean> f51305aA;

    /* renamed from: aB */
    public static final C13933da<Boolean> f51306aB;

    /* renamed from: aC */
    public static final C13933da<Boolean> f51307aC;

    /* renamed from: aD */
    public static final C13933da<Boolean> f51308aD;

    /* renamed from: aE */
    public static final C13933da<Boolean> f51309aE;

    /* renamed from: aF */
    public static final C13933da<Boolean> f51310aF;

    /* renamed from: aa */
    public static final C13933da<Boolean> f51313aa;

    /* renamed from: ab */
    public static final C13933da<Boolean> f51314ab;

    /* renamed from: ac */
    public static final C13933da<Boolean> f51315ac;

    /* renamed from: ad */
    public static final C13933da<Boolean> f51316ad;

    /* renamed from: ae */
    public static final C13933da<Boolean> f51317ae;

    /* renamed from: af */
    public static final C13933da<Boolean> f51318af;

    /* renamed from: ag */
    public static final C13933da<Boolean> f51319ag;

    /* renamed from: ah */
    public static final C13933da<Boolean> f51320ah;

    /* renamed from: ai */
    public static final C13933da<Boolean> f51321ai;

    /* renamed from: aj */
    public static final C13933da<Boolean> f51322aj;

    /* renamed from: ak */
    public static final C13933da<Boolean> f51323ak;

    /* renamed from: al */
    public static final C13933da<Boolean> f51324al;

    /* renamed from: am */
    public static final C13933da<Boolean> f51325am;

    /* renamed from: an */
    public static final C13933da<Boolean> f51326an;

    /* renamed from: ao */
    public static final C13933da<Boolean> f51327ao;

    /* renamed from: ap */
    public static final C13933da<Boolean> f51328ap;

    /* renamed from: aq */
    public static final C13933da<Boolean> f51329aq;

    /* renamed from: ar */
    public static final C13933da<Boolean> f51330ar;

    /* renamed from: as */
    public static final C13933da<Boolean> f51331as;

    /* renamed from: at */
    public static final C13933da<Boolean> f51332at;

    /* renamed from: au */
    public static final C13933da<Boolean> f51333au;

    /* renamed from: av */
    public static final C13933da<Boolean> f51334av;

    /* renamed from: aw */
    public static final C13933da<Boolean> f51335aw;

    /* renamed from: ay */
    public static final C13933da<Boolean> f51337ay;

    /* renamed from: az */
    public static final C13933da<Boolean> f51338az;

    /* renamed from: c */
    public static final C13933da<Long> f51340c;

    /* renamed from: l */
    public static final C13933da<Integer> f51349l;

    /* renamed from: r */
    public static final C13933da<Long> f51355r;

    /* renamed from: s */
    public static final C13933da<Long> f51356s;

    /* renamed from: w */
    public static final C13933da<Long> f51360w;

    /* renamed from: y */
    public static final C13933da<Long> f51362y;

    /* renamed from: z */
    public static final C13933da<Long> f51363z;

    /* renamed from: aG */
    private static final List<C13933da<?>> f51311aG = Collections.synchronizedList(new ArrayList());

    /* renamed from: aH */
    private static final Set<C13933da<?>> f51312aH = Collections.synchronizedSet(new HashSet());

    /* renamed from: a */
    public static final C13933da<Long> f51304a = m12114a("measurement.ad_id_cache_time", 10000L, 10000L, C14141s.f52074a);

    /* renamed from: b */
    public static final C13933da<Long> f51339b = m12114a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, C13856ae.f51194a);

    /* renamed from: d */
    public static final C13933da<String> f51341d = m12114a("measurement.config.url_scheme", Constants.HTTPS, Constants.HTTPS, C13880bb.f51218a);

    /* renamed from: e */
    public static final C13933da<String> f51342e = m12114a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", C13891bm.f51229a);

    /* renamed from: f */
    public static final C13933da<Integer> f51343f = m12114a("measurement.upload.max_bundles", 100, 100, C13902bx.f51240a);

    /* renamed from: g */
    public static final C13933da<Integer> f51344g = m12114a("measurement.upload.max_batch_size", 65536, 65536, C13915cj.f51255a);

    /* renamed from: h */
    public static final C13933da<Integer> f51345h = m12114a("measurement.upload.max_bundle_size", 65536, 65536, C13926cu.f51266a);

    /* renamed from: i */
    public static final C13933da<Integer> f51346i = m12114a("measurement.upload.max_events_per_bundle", 1000, 1000, C13927cv.f51267a);

    /* renamed from: j */
    public static final C13933da<Integer> f51347j = m12114a("measurement.upload.max_events_per_day", 100000, 100000, C13928cw.f51268a);

    /* renamed from: k */
    public static final C13933da<Integer> f51348k = m12114a("measurement.upload.max_error_events_per_day", 1000, 1000, C14142t.f52075a);

    /* renamed from: m */
    public static final C13933da<Integer> f51350m = m12114a("measurement.upload.max_conversions_per_day", 10000, 10000, C14144v.f52077a);

    /* renamed from: n */
    public static final C13933da<Integer> f51351n = m12114a("measurement.upload.max_realtime_events_per_day", 10, 10, C14145w.f52078a);

    /* renamed from: o */
    public static final C13933da<Integer> f51352o = m12114a("measurement.store.max_stored_events_per_app", 100000, 100000, C14146x.f52079a);

    /* renamed from: p */
    public static final C13933da<String> f51353p = m12114a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", C14148z.f52083a);

    /* renamed from: q */
    public static final C13933da<Long> f51354q = m12114a("measurement.upload.backoff_period", 43200000L, 43200000L, C13852aa.f51190a);

    /* renamed from: t */
    public static final C13933da<Long> f51357t = m12114a("measurement.upload.realtime_upload_interval", 10000L, 10000L, C13855ad.f51193a);

    /* renamed from: u */
    public static final C13933da<Long> f51358u = m12114a("measurement.upload.debug_upload_interval", 1000L, 1000L, C13857af.f51195a);

    /* renamed from: v */
    public static final C13933da<Long> f51359v = m12114a("measurement.upload.minimum_delay", 500L, 500L, C13858ag.f51196a);

    /* renamed from: x */
    public static final C13933da<Long> f51361x = m12114a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, C13860ai.f51198a);

    /* renamed from: A */
    public static final C13933da<Long> f51278A = m12114a("measurement.upload.retry_time", 1800000L, 1800000L, C13863al.f51201a);

    /* renamed from: B */
    public static final C13933da<Integer> f51279B = m12114a("measurement.upload.retry_count", 6, 6, C13864am.f51202a);

    /* renamed from: C */
    public static final C13933da<Long> f51280C = m12114a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, C13865an.f51203a);

    /* renamed from: D */
    public static final C13933da<Integer> f51281D = m12114a("measurement.lifetimevalue.max_currency_tracked", 4, 4, C13866ao.f51204a);

    /* renamed from: E */
    public static final C13933da<Integer> f51282E = m12114a("measurement.audience.filter_result_max_count", 200, 200, C13868aq.f51206a);

    /* renamed from: F */
    public static final C13933da<Integer> f51283F = m12114a("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: G */
    public static final C13933da<Integer> f51284G = m12114a("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: H */
    public static final C13933da<Integer> f51285H = m12114a("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: I */
    public static final C13933da<Long> f51286I = m12114a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, C13869ar.f51207a);

    /* renamed from: K */
    public static final C13933da<String> f51288K = m12114a("measurement.test.string_flag", "---", "---", C13871at.f51209a);

    /* renamed from: L */
    public static final C13933da<Long> f51289L = m12114a("measurement.test.long_flag", -1L, -1L, C13872au.f51210a);

    /* renamed from: M */
    public static final C13933da<Integer> f51290M = m12114a("measurement.test.int_flag", -2, -2, C13873av.f51211a);

    /* renamed from: O */
    public static final C13933da<Integer> f51292O = m12114a("measurement.experiment.max_ids", 50, 50, C13875ax.f51213a);

    /* renamed from: P */
    public static final C13933da<Integer> f51293P = m12114a("measurement.max_bundles_per_iteration", 100, 100, C13876ay.f51214a);

    /* renamed from: ax */
    public static final C13933da<Integer> f51336ax = m12114a("measurement.service.storage_consent_support_version", 203600, 203600, C13917cl.f51257a);

    static {
        Long valueOf = Long.valueOf((long) com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
        f51340c = m12114a("measurement.config.cache_time", 86400000L, valueOf, C13867ap.f51205a);
        Integer valueOf2 = Integer.valueOf((int) ApiErrorData.ErrorCodes.InternalServerError.InternalError);
        f51349l = m12114a("measurement.upload.max_public_events_per_day", valueOf2, valueOf2, C14143u.f52076a);
        f51355r = m12114a("measurement.upload.window_interval", valueOf, valueOf, C13853ab.f51191a);
        f51356s = m12114a("measurement.upload.interval", valueOf, valueOf, C13854ac.f51192a);
        Long valueOf3 = Long.valueOf((long) com.callapp.contacts.model.Constants.MINUTE_IN_MILLIS);
        f51360w = m12114a("measurement.alarm_manager.minimum_interval", valueOf3, valueOf3, C13859ah.f51197a);
        Long valueOf4 = Long.valueOf((long) com.callapp.contacts.model.Constants.WEEK_IN_MILLIS);
        f51362y = m12114a("measurement.upload.refresh_blacklisted_config_interval", valueOf4, valueOf4, C13861aj.f51199a);
        Long valueOf5 = Long.valueOf((long) FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
        f51363z = m12114a("measurement.upload.initial_upload_delay_time", valueOf5, valueOf5, C13862ak.f51200a);
        Boolean bool = Boolean.FALSE;
        f51287J = m12114a("measurement.test.boolean_flag", bool, bool, C13870as.f51208a);
        Double valueOf6 = Double.valueOf(-3.0d);
        f51291N = m12114a("measurement.test.double_flag", valueOf6, valueOf6, C13874aw.f51212a);
        f51294Q = m12114a("measurement.sdk.attribution.cache.ttl", valueOf4, valueOf4, C13879ba.f51217a);
        f51295R = m12114a("measurement.validation.internal_limits_internal_event_params", bool, bool, C13881bc.f51219a);
        Boolean bool2 = Boolean.TRUE;
        f51296S = m12114a("measurement.collection.firebase_global_collection_flag_enabled", bool2, bool2, C13882bd.f51220a);
        f51297T = m12114a("measurement.collection.redundant_engagement_removal_enabled", bool, bool, C13883be.f51221a);
        f51298U = m12114a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, C13884bf.f51222a);
        f51299V = m12114a("measurement.quality.checksum", bool, bool, null);
        f51300W = m12114a("measurement.sdk.collection.validate_param_names_alphabetical", bool2, bool2, C13885bg.f51223a);
        f51301X = m12114a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, C13886bh.f51224a);
        f51302Y = m12114a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, C13887bi.f51225a);
        f51303Z = m12114a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, C13888bj.f51226a);
        f51313aa = m12114a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, C13889bk.f51227a);
        f51314ab = m12114a("measurement.sdk.collection.last_deep_link_referrer2", bool2, bool2, C13890bl.f51228a);
        f51315ac = m12114a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, C13892bn.f51230a);
        f51316ad = m12114a("measurement.sdk.collection.last_gclid_from_referrer2", bool, bool, C13893bo.f51231a);
        f51317ae = m12114a("measurement.sdk.collection.enable_extend_user_property_size", bool2, bool2, C13894bp.f51232a);
        f51318af = m12114a("measurement.upload.file_lock_state_check", bool2, bool2, C13895bq.f51233a);
        f51319ag = m12114a("measurement.ga.ga_app_id", bool, bool, C13896br.f51234a);
        f51320ah = m12114a("measurement.lifecycle.app_in_background_parameter", bool, bool, C13897bs.f51235a);
        f51321ai = m12114a("measurement.integration.disable_firebase_instance_id", bool, bool, C13898bt.f51236a);
        f51322aj = m12114a("measurement.lifecycle.app_backgrounded_engagement", bool, bool, C13899bu.f51237a);
        f51323ak = m12114a("measurement.collection.service.update_with_analytics_fix", bool, bool, C13900bv.f51238a);
        f51324al = m12114a("measurement.service.use_appinfo_modified", bool2, bool2, C13901bw.f51239a);
        f51325am = m12114a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, C13903by.f51241a);
        f51326an = m12114a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, C13904bz.f51242a);
        f51327ao = m12114a("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, C13907cb.f51247a);
        f51328ap = m12114a("measurement.upload.file_truncate_fix", bool, bool, C13908cc.f51248a);
        f51329aq = m12114a("measurement.sdk.screen.disabling_automatic_reporting", bool2, bool2, C13909cd.f51249a);
        f51330ar = m12114a("measurement.sdk.screen.manual_screen_view_logging", bool2, bool2, C13910ce.f51250a);
        f51331as = m12114a("measurement.collection.synthetic_data_mitigation", bool, bool, C13911cf.f51251a);
        f51332at = m12114a("measurement.androidId.delete_feature", bool2, bool2, C13912cg.f51252a);
        f51333au = m12114a("measurement.client.consent_state_v1", bool2, bool2, C13913ch.f51253a);
        f51334av = m12114a("measurement.client.3p_consent_state_v1", bool2, bool2, C13914ci.f51254a);
        f51335aw = m12114a("measurement.service.consent_state_v1_W36", bool2, bool2, C13916ck.f51256a);
        f51337ay = m12114a("measurement.upload.directly_maybe_log_error_events", bool2, bool2, C13918cm.f51258a);
        f51338az = m12114a("measurement.frontend.directly_maybe_log_error_events", bool, bool, C13919cn.f51259a);
        f51305aA = m12114a("measurement.client.properties.non_null_origin", bool2, bool2, C13920co.f51260a);
        f51306aB = m12114a("measurement.client.click_identifier_control.dev", bool, bool, C13921cp.f51261a);
        f51307aC = m12114a("measurement.service.click_identifier_control", bool, bool, C13922cq.f51262a);
        f51308aD = m12114a("measurement.client.reject_blank_user_id", bool2, bool2, C13923cr.f51263a);
        f51309aE = m12114a("measurement.config.persist_last_modified", bool, bool, C13924cs.f51264a);
        f51310aF = m12114a("measurement.client.consent.suppress_1p_in_ga4f_install", bool2, bool2, C13925ct.f51265a);
    }

    /* renamed from: a */
    private static <V> C13933da<V> m12114a(String str, V v, V v2, AbstractC13930cy<V> abstractC13930cy) {
        C13933da<V> c13933da = new C13933da<>(str, v, v2, abstractC13930cy, null);
        f51311aG.add(c13933da);
        return c13933da;
    }

    /* renamed from: a */
    public static Map<String, String> m12115a(Context context) {
        C13443dj m12920a = C13443dj.m12920a(context.getContentResolver(), C13452ds.m12911a());
        return m12920a == null ? Collections.emptyMap() : m12920a.m12921a();
    }
}
