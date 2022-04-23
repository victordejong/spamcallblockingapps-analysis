package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzct;
import com.google.android.gms.internal.measurement.zzde;
import com.google.common.collect.MapMakerInternalMap;
import com.mopub.common.privacy.AdvertisingId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4641a3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4638a0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4639a1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4640a2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4648b0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4649b1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4650b2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4658c0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4659c1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4660c2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4668d0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4669d1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4670d2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4678e0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4679e1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4680e2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4688f0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4689f1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4690f2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4698g0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4699g1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4700g2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4707h0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4708h1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4709h2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4716i0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4717i1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4718i2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4724j;
import p131c.p161d.p170b.p224d.p260i.p261a.C4725j0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4726j1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4727j2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4733k;
import p131c.p161d.p170b.p224d.p260i.p261a.C4734k0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4735k1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4736k2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4742l;
import p131c.p161d.p170b.p224d.p260i.p261a.C4743l0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4744l1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4745l2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4751m;
import p131c.p161d.p170b.p224d.p260i.p261a.C4752m0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4753m1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4754m2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4760n;
import p131c.p161d.p170b.p224d.p260i.p261a.C4761n0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4762n1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4763n2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4769o;
import p131c.p161d.p170b.p224d.p260i.p261a.C4770o0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4771o1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4772o2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4779p0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4780p1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4781p2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4787q;
import p131c.p161d.p170b.p224d.p260i.p261a.C4789q1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4790q2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4796r;
import p131c.p161d.p170b.p224d.p260i.p261a.C4797r0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4799r2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4805s;
import p131c.p161d.p170b.p224d.p260i.p261a.C4806s0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4807s1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4814t;
import p131c.p161d.p170b.p224d.p260i.p261a.C4815t0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4816t1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4817t2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4823u;
import p131c.p161d.p170b.p224d.p260i.p261a.C4824u0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4825u1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4826u2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4832v;
import p131c.p161d.p170b.p224d.p260i.p261a.C4833v0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4834v1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4835v2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4841w;
import p131c.p161d.p170b.p224d.p260i.p261a.C4842w0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4843w1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4844w2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4850x;
import p131c.p161d.p170b.p224d.p260i.p261a.C4851x0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4852x1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4859y;
import p131c.p161d.p170b.p224d.p260i.p261a.C4860y0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4861y1;
import p131c.p161d.p170b.p224d.p260i.p261a.C4862y2;
import p131c.p161d.p170b.p224d.p260i.p261a.C4868z;
import p131c.p161d.p170b.p224d.p260i.p261a.C4869z0;
import p131c.p161d.p170b.p224d.p260i.p261a.C4870z1;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzas.class */
public final class zzas {

    /* renamed from: O */
    public static zzej<Double> f29844O;

    /* renamed from: c */
    public static zzej<Long> f29861c;

    /* renamed from: d */
    public static zzej<Long> f29863d;

    /* renamed from: h */
    public static zzej<Integer> f29871h;

    /* renamed from: i */
    public static zzej<Integer> f29873i;

    /* renamed from: y */
    public static zzej<Long> f29905y;

    /* renamed from: a */
    public static List<zzej<?>> f29857a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    public static zzej<Long> f29859b = m9249a("measurement.ad_id_cache_time", 10000L, 10000L, C4733k.f17201a);

    /* renamed from: e */
    public static zzej<String> f29865e = m9249a("measurement.config.url_scheme", "https", "https", C4698g0.f17091a);

    /* renamed from: f */
    public static zzej<String> f29867f = m9249a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", C4824u0.f17407a);

    /* renamed from: g */
    public static zzej<Integer> f29869g = m9249a("measurement.upload.max_bundles", 100, 100, C4669d1.f17028a);

    /* renamed from: j */
    public static zzej<Integer> f29875j = m9249a("measurement.upload.max_events_per_bundle", 1000, 1000, C4763n2.f17278a);

    /* renamed from: k */
    public static zzej<Integer> f29877k = m9249a("measurement.upload.max_events_per_day", 100000, 100000, C4862y2.f17472a);

    /* renamed from: l */
    public static zzej<Integer> f29879l = m9249a("measurement.upload.max_error_events_per_day", 1000, 1000, C4751m.f17258a);

    /* renamed from: m */
    public static zzej<Integer> f29881m = m9249a("measurement.upload.max_public_events_per_day", 50000, 50000, C4742l.f17245a);

    /* renamed from: n */
    public static zzej<Integer> f29883n = m9249a("measurement.upload.max_conversions_per_day", 10000, 10000, C4769o.f17291a);

    /* renamed from: o */
    public static zzej<Integer> f29885o = m9249a("measurement.upload.max_realtime_events_per_day", 10, 10, C4760n.f17275a);

    /* renamed from: p */
    public static zzej<Integer> f29887p = m9249a("measurement.store.max_stored_events_per_app", 100000, 100000, C4796r.f17356a);

    /* renamed from: q */
    public static zzej<String> f29889q = m9249a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", C4787q.f17331a);

    /* renamed from: r */
    public static zzej<Long> f29891r = m9249a("measurement.upload.backoff_period", 43200000L, 43200000L, C4814t.f17385a);

    /* renamed from: s */
    public static zzej<Long> f29893s = m9249a("measurement.upload.window_interval", 3600000L, 3600000L, C4805s.f17373a);

    /* renamed from: t */
    public static zzej<Long> f29895t = m9249a("measurement.upload.interval", 3600000L, 3600000L, C4832v.f17421a);

    /* renamed from: u */
    public static zzej<Long> f29897u = m9249a("measurement.upload.realtime_upload_interval", 10000L, 10000L, C4823u.f17406a);

    /* renamed from: v */
    public static zzej<Long> f29899v = m9249a("measurement.upload.debug_upload_interval", 1000L, 1000L, C4841w.f17433a);

    /* renamed from: w */
    public static zzej<Long> f29901w = m9249a("measurement.upload.minimum_delay", 500L, 500L, C4868z.f17486a);

    /* renamed from: x */
    public static zzej<Long> f29903x = m9249a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, C4859y.f17469a);

    /* renamed from: z */
    public static zzej<Long> f29907z = m9249a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, C4638a0.f16947a);

    /* renamed from: A */
    public static zzej<Long> f29816A = m9249a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, C4668d0.f17027a);

    /* renamed from: B */
    public static zzej<Long> f29818B = m9249a("measurement.upload.retry_time", 1800000L, 1800000L, C4658c0.f16999a);

    /* renamed from: C */
    public static zzej<Integer> f29820C = m9249a("measurement.upload.retry_count", 6, 6, C4688f0.f17068a);

    /* renamed from: D */
    public static zzej<Long> f29822D = m9249a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, C4678e0.f17048a);

    /* renamed from: E */
    public static zzej<Integer> f29824E = m9249a("measurement.lifetimevalue.max_currency_tracked", 4, 4, C4707h0.f17113a);

    /* renamed from: F */
    public static zzej<Integer> f29826F = m9249a("measurement.audience.filter_result_max_count", 200, 200, C4725j0.f17178a);

    /* renamed from: G */
    public static zzej<Integer> f29828G = m9249a("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: H */
    public static zzej<Integer> f29830H = m9249a("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: I */
    public static zzej<Integer> f29832I = m9249a("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: J */
    public static zzej<Long> f29834J = m9249a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, C4716i0.f17163a);

    /* renamed from: K */
    public static zzej<Boolean> f29836K = m9249a("measurement.test.boolean_flag", false, false, C4743l0.f17246a);

    /* renamed from: L */
    public static zzej<String> f29838L = m9249a("measurement.test.string_flag", "---", "---", C4734k0.f17202a);

    /* renamed from: M */
    public static zzej<Long> f29840M = m9249a("measurement.test.long_flag", -1L, -1L, C4761n0.f17276a);

    /* renamed from: N */
    public static zzej<Integer> f29842N = m9249a("measurement.test.int_flag", -2, -2, C4752m0.f17259a);

    /* renamed from: P */
    public static zzej<Integer> f29846P = m9249a("measurement.experiment.max_ids", 50, 50, C4770o0.f17292a);

    /* renamed from: Q */
    public static zzej<Integer> f29847Q = m9249a("measurement.max_bundles_per_iteration", 100, 100, C4806s0.f17374a);

    /* renamed from: R */
    public static zzej<Boolean> f29848R = m9249a("measurement.validation.internal_limits_internal_event_params", false, false, C4797r0.f17357a);

    /* renamed from: S */
    public static zzej<Boolean> f29849S = m9249a("measurement.collection.firebase_global_collection_flag_enabled", true, true, C4815t0.f17386a);

    /* renamed from: T */
    public static zzej<Boolean> f29850T = m9249a("measurement.collection.efficient_engagement_reporting_enabled_2", true, true, C4842w0.f17434a);

    /* renamed from: U */
    public static zzej<Boolean> f29851U = m9249a("measurement.collection.redundant_engagement_removal_enabled", false, false, C4833v0.f17422a);

    /* renamed from: V */
    public static zzej<Boolean> f29852V = m9249a("measurement.client.freeride_engagement_fix", true, true, C4860y0.f17470a);

    /* renamed from: W */
    public static zzej<Boolean> f29853W = m9249a("measurement.collection.log_event_and_bundle_v2", true, true, C4851x0.f17448a);

    /* renamed from: X */
    public static zzej<Boolean> f29854X = m9249a("measurement.quality.checksum", false, false, null);

    /* renamed from: Y */
    public static zzej<Boolean> f29855Y = m9249a("measurement.sdk.dynamite.allow_remote_dynamite3", true, true, C4639a1.f16948a);

    /* renamed from: Z */
    public static zzej<Boolean> f29856Z = m9249a("measurement.sdk.collection.validate_param_names_alphabetical", true, true, C4869z0.f17487a);

    /* renamed from: a0 */
    public static zzej<Boolean> f29858a0 = m9249a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false, false, C4659c1.f17000a);

    /* renamed from: b0 */
    public static zzej<Boolean> f29860b0 = m9249a("measurement.audience.refresh_event_count_filters_timestamp", false, false, C4649b1.f16968a);

    /* renamed from: c0 */
    public static zzej<Boolean> f29862c0 = m9249a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false, false, C4679e1.f17049a);

    /* renamed from: d0 */
    public static zzej<Boolean> f29864d0 = m9249a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", true, true, C4699g1.f17092a);

    /* renamed from: e0 */
    public static zzej<Boolean> f29866e0 = m9249a("measurement.sdk.collection.last_deep_link_referrer2", true, true, C4689f1.f17069a);

    /* renamed from: f0 */
    public static zzej<Boolean> f29868f0 = m9249a("measurement.sdk.collection.last_deep_link_referrer_campaign2", false, false, C4717i1.f17164a);

    /* renamed from: g0 */
    public static zzej<Boolean> f29870g0 = m9249a("measurement.sdk.collection.last_gclid_from_referrer2", false, false, C4708h1.f17114a);

    /* renamed from: h0 */
    public static zzej<Boolean> f29872h0 = m9249a("measurement.sdk.collection.enable_extend_user_property_size", true, true, C4735k1.f17203a);

    /* renamed from: i0 */
    public static zzej<Boolean> f29874i0 = m9249a("measurement.upload.file_lock_state_check", false, false, C4726j1.f17179a);

    /* renamed from: j0 */
    public static zzej<Boolean> f29876j0 = m9249a("measurement.ga.ga_app_id", false, false, C4753m1.f17260a);

    /* renamed from: k0 */
    public static zzej<Boolean> f29878k0 = m9249a("measurement.lifecycle.app_in_background_parameter", false, false, C4744l1.f17247a);

    /* renamed from: l0 */
    public static zzej<Boolean> f29880l0 = m9249a("measurement.integration.disable_firebase_instance_id", false, false, C4771o1.f17293a);

    /* renamed from: m0 */
    public static zzej<Boolean> f29882m0 = m9249a("measurement.lifecycle.app_backgrounded_engagement", false, false, C4762n1.f17277a);

    /* renamed from: n0 */
    public static zzej<Boolean> f29884n0 = m9249a("measurement.collection.service.update_with_analytics_fix", false, false, C4780p1.f17317a);

    /* renamed from: o0 */
    public static zzej<Boolean> f29886o0 = m9249a("measurement.service.use_appinfo_modified", false, false, C4816t1.f17387a);

    /* renamed from: p0 */
    public static zzej<Boolean> f29888p0 = m9249a("measurement.client.firebase_feature_rollout.v1.enable", true, true, C4807s1.f17375a);

    /* renamed from: q0 */
    public static zzej<Boolean> f29890q0 = m9249a("measurement.client.sessions.check_on_reset_and_enable2", true, true, C4834v1.f17423a);

    /* renamed from: r0 */
    public static zzej<Boolean> f29892r0 = m9249a("measurement.scheduler.task_thread.cleanup_on_exit", false, false, C4825u1.f17408a);

    /* renamed from: s0 */
    public static zzej<Boolean> f29894s0 = m9249a("measurement.upload.file_truncate_fix", false, false, C4852x1.f17449a);

    /* renamed from: t0 */
    public static zzej<Boolean> f29896t0 = m9249a("measurement.sdk.referrer.delayed_install_referrer_api", false, false, C4843w1.f17435a);

    /* renamed from: u0 */
    public static zzej<Boolean> f29898u0 = m9249a("measurement.sdk.screen.disabling_automatic_reporting", true, true, C4870z1.f17488a);

    /* renamed from: v0 */
    public static zzej<Boolean> f29900v0 = m9249a("measurement.sdk.screen.manual_screen_view_logging", true, true, C4861y1.f17471a);

    /* renamed from: w0 */
    public static zzej<Boolean> f29902w0 = m9249a("measurement.service.configurable_service_limits", true, true, C4670d2.f17029a);

    /* renamed from: x0 */
    public static zzej<Boolean> f29904x0 = m9249a("measurement.client.configurable_service_limits", true, true, C4660c2.f17001a);

    /* renamed from: y0 */
    public static zzej<Boolean> f29906y0 = m9249a("measurement.androidId.delete_feature", true, true, C4690f2.f17070a);

    /* renamed from: z0 */
    public static zzej<Boolean> f29908z0 = m9249a("measurement.client.global_params", true, true, C4680e2.f17050a);

    /* renamed from: A0 */
    public static zzej<Boolean> f29817A0 = m9249a("measurement.service.global_params", true, true, C4709h2.f17115a);

    /* renamed from: B0 */
    public static zzej<Boolean> f29819B0 = m9249a("measurement.service.global_params_in_payload", true, true, C4700g2.f17093a);

    /* renamed from: C0 */
    public static zzej<Boolean> f29821C0 = m9249a("measurement.client.string_reader", true, true, C4727j2.f17180a);

    /* renamed from: D0 */
    public static zzej<Boolean> f29823D0 = m9249a("measurement.sdk.attribution.cache", true, true, C4718i2.f17165a);

    /* renamed from: E0 */
    public static zzej<Long> f29825E0 = m9249a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, C4745l2.f17248a);

    /* renamed from: F0 */
    public static zzej<Boolean> f29827F0 = m9249a("measurement.service.database_return_empty_collection", true, true, C4736k2.f17204a);

    /* renamed from: G0 */
    public static zzej<Boolean> f29829G0 = m9249a("measurement.service.ssaid_removal", true, true, C4754m2.f17261a);

    /* renamed from: H0 */
    public static zzej<Boolean> f29831H0 = m9249a("measurement.client.consent_state_v1", true, true, C4781p2.f17318a);

    /* renamed from: I0 */
    public static zzej<Boolean> f29833I0 = m9249a("measurement.client.3p_consent_state_v1", true, true, C4772o2.f17294a);

    /* renamed from: J0 */
    public static zzej<Boolean> f29835J0 = m9249a("measurement.service.consent_state_v1_W36", false, false, C4799r2.f17358a);

    /* renamed from: K0 */
    public static zzej<Integer> f29837K0 = m9249a("measurement.service.storage_consent_support_version", 203590, 203590, C4790q2.f17336a);

    /* renamed from: L0 */
    public static zzej<Boolean> f29839L0 = m9249a("measurement.client.ad_impression", true, true, C4826u2.f17409a);

    /* renamed from: M0 */
    public static zzej<Boolean> f29841M0 = m9249a("measurement.service.ad_impression", true, true, C4817t2.f17388a);

    /* renamed from: N0 */
    public static zzej<Boolean> f29843N0 = m9249a("measurement.service.separate_public_internal_event_blacklisting", true, true, C4844w2.f17436a);

    /* renamed from: O0 */
    public static zzej<Boolean> f29845O0 = m9249a("measurement.service.directly_maybe_log_error_events", false, false, C4835v2.f17424a);

    static {
        Collections.synchronizedSet(new HashSet());
        Long valueOf = Long.valueOf((long) AdvertisingId.ONE_DAY_MS);
        f29861c = m9249a("measurement.monitoring.sample_period_millis", valueOf, valueOf, C4724j.f17177a);
        f29863d = m9249a("measurement.config.cache_time", valueOf, 3600000L, C4850x.f17447a);
        Integer valueOf2 = Integer.valueOf((int) MapMakerInternalMap.MAX_SEGMENTS);
        f29871h = m9249a("measurement.upload.max_batch_size", valueOf2, valueOf2, C4789q1.f17335a);
        f29873i = m9249a("measurement.upload.max_bundle_size", valueOf2, valueOf2, C4640a2.f16949a);
        f29905y = m9249a("measurement.upload.stale_data_deletion_interval", valueOf, valueOf, C4648b0.f16967a);
        Double valueOf3 = Double.valueOf(-3.0d);
        f29844O = m9249a("measurement.test.double_flag", valueOf3, valueOf3, C4779p0.f17316a);
        m9249a("measurement.collection.synthetic_data_mitigation", false, false, C4650b2.f16969a);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static <V> zzej<V> m9249a(String str, V v, V v2, AbstractC4641a3<V> a3Var) {
        zzej<V> zzejVar = new zzej<>(str, v, v2, a3Var);
        f29857a.add(zzejVar);
        return zzejVar;
    }

    /* renamed from: a */
    public static Map<String, String> m9250a(Context context) {
        zzct a = zzct.m9859a(context.getContentResolver(), zzde.m9849a("com.google.android.gms.measurement"));
        return a == null ? Collections.emptyMap() : a.m9860a();
    }
}
