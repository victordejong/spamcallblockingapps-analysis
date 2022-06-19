package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/edi.class */
public final class edi {

    /* renamed from: ek */
    private static final ect<String> f16578ek;

    /* renamed from: a */
    public static final ect<String> f16341a = ect.m7893a(1, "gads:sdk_core_location:client:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: b */
    public static final ect<String> f16394b = ect.m7893a(1, "gads:active_view_location:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: dJ */
    private static final C2761ab<Boolean> f16510dJ = C2795as.f10261c;

    /* renamed from: dK */
    private static final ect<Integer> f16511dK = ect.m7896a(1, "gads:http_url_connection_factory:timeout_millis", 10000);

    /* renamed from: c */
    public static final ect<String> f16447c = ect.m7893a(1, "gads:video_exo_player:version", "3");

    /* renamed from: d */
    public static final ect<Integer> f16500d = ect.m7896a(1, "gads:video_exo_player:connect_timeout", 8000);

    /* renamed from: e */
    public static final ect<Integer> f16553e = ect.m7896a(1, "gads:video_exo_player:read_timeout", 8000);

    /* renamed from: f */
    public static final ect<Integer> f16594f = ect.m7896a(1, "gads:video_exo_player:loading_check_interval", 1048576);

    /* renamed from: g */
    public static final ect<Integer> f16595g = ect.m7896a(1, "gads:video_exo_player:exo_player_precache_limit", Integer.MAX_VALUE);

    /* renamed from: h */
    public static final ect<Integer> f16596h = ect.m7896a(1, "gads:video_exo_player:byte_buffer_precache_limit", Integer.MAX_VALUE);

    /* renamed from: i */
    public static final ect<Integer> f16597i = ect.m7896a(1, "gads:video_exo_player_socket_receive_buffer_size", 0);

    /* renamed from: j */
    public static final ect<String> f16598j = ect.m7893a(1, "gads:video_exo_player:precache_exceptions", "");

    /* renamed from: k */
    public static final ect<Integer> f16599k = ect.m7896a(1, "gads:video_exo_player:min_retry_count", -1);

    /* renamed from: l */
    public static final ect<Integer> f16600l = ect.m7896a(1, "gads:video_stream_cache:limit_count", 5);

    /* renamed from: m */
    public static final ect<Integer> f16601m = ect.m7896a(1, "gads:video_stream_cache:limit_space", 8388608);

    /* renamed from: n */
    public static final ect<Integer> f16602n = ect.m7896a(1, "gads:video_stream_exo_cache:buffer_size", 8388608);

    /* renamed from: o */
    public static final ect<Long> f16603o = ect.m7895a(1, "gads:video_stream_cache:limit_time_sec", 300L);

    /* renamed from: p */
    public static final ect<Long> f16604p = ect.m7895a(1, "gads:video_stream_cache:notify_interval_millis", 125L);

    /* renamed from: q */
    public static final ect<Integer> f16605q = ect.m7896a(1, "gads:video_stream_cache:connect_timeout_millis", 10000);

    /* renamed from: r */
    public static final ect<String> f16606r = ect.m7893a(1, "gads:video:metric_frame_hash_times", "");

    /* renamed from: s */
    public static final ect<Long> f16607s = ect.m7895a(1, "gads:video:metric_frame_hash_time_leniency", 500L);

    /* renamed from: t */
    public static final ect<Boolean> f16608t = ect.m7894a(1, "gads:video:force_watermark", (Boolean) false);

    /* renamed from: u */
    public static final ect<Long> f16609u = ect.m7895a(1, "gads:video:surface_update_min_spacing_ms", 1000L);

    /* renamed from: v */
    public static final ect<Boolean> f16610v = ect.m7894a(1, "gads:video:spinner:enabled", (Boolean) false);

    /* renamed from: w */
    public static final ect<Integer> f16611w = ect.m7896a(1, "gads:video:spinner:scale", 4);

    /* renamed from: x */
    public static final ect<Long> f16612x = ect.m7895a(1, "gads:video:spinner:jank_threshold_ms", 50L);

    /* renamed from: y */
    public static final ect<Boolean> f16613y = ect.m7894a(1, "gads:video:aggressive_media_codec_release", (Boolean) false);

    /* renamed from: z */
    public static final ect<Boolean> f16614z = ect.m7894a(1, "gads:memory_bundle:debug_info", (Boolean) false);

    /* renamed from: A */
    public static final ect<String> f16315A = ect.m7893a(1, "gads:video:codec_query_mime_types", "");

    /* renamed from: B */
    public static final ect<Integer> f16316B = ect.m7896a(1, "gads:video:codec_query_minimum_version", 16);

    /* renamed from: C */
    public static final ect<String> f16317C = ect.m7893a(1, "gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js");

    /* renamed from: D */
    public static final ect<String> f16318D = ect.m7893a(1, "gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js");

    /* renamed from: E */
    public static final ect<String> f16319E = ect.m7893a(1, "gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js");

    /* renamed from: F */
    public static final ect<String> f16320F = ect.m7893a(1, "gad:mraid:version", "3.0");

    /* renamed from: G */
    public static final ect<Boolean> f16321G = ect.m7894a(1, "gads:mraid:expanded_interstitial_fix", (Boolean) false);

    /* renamed from: H */
    public static final ect<Boolean> f16322H = ect.m7894a(1, "gads:mraid:initial_size_fallback", (Boolean) false);

    /* renamed from: I */
    public static final ect<Integer> f16323I = ect.m7896a(1, "gads:content_vertical_fingerprint_number", 100);

    /* renamed from: J */
    public static final ect<Integer> f16324J = ect.m7896a(1, "gads:content_vertical_fingerprint_bits", 23);

    /* renamed from: K */
    public static final ect<Integer> f16325K = ect.m7896a(1, "gads:content_vertical_fingerprint_ngram", 3);

    /* renamed from: L */
    public static final ect<String> f16326L = ect.m7893a(1, "gads:content_fetch_view_tag_id", "googlebot");

    /* renamed from: M */
    public static final ect<String> f16327M = ect.m7893a(1, "gads:content_fetch_exclude_view_tag", "none");

    /* renamed from: N */
    public static final ect<Boolean> f16328N = ect.m7894a(1, "gads:content_fetch_disable_get_title_from_webview", (Boolean) false);

    /* renamed from: O */
    public static final ect<Boolean> f16329O = ect.m7894a(1, "gads:content_fetch_enable_new_content_score", (Boolean) false);

    /* renamed from: P */
    public static final ect<Boolean> f16330P = ect.m7894a(1, "gads:content_fetch_enable_serve_once", (Boolean) false);

    /* renamed from: Q */
    public static final ect<Boolean> f16331Q = ect.m7894a(1, "gads:sai:enabled", (Boolean) true);

    /* renamed from: R */
    public static final ect<String> f16332R = ect.m7893a(1, "gads:sai:click_ping_schema_v2", "^[^?]*(/aclk\\?|/pcs/click\\?).*");

    /* renamed from: S */
    public static final ect<String> f16333S = ect.m7893a(1, "gads:sai:impression_ping_schema_v2", "^[^?]*(/adview|/pcs/view).*");

    /* renamed from: T */
    public static final ect<Boolean> f16334T = ect.m7894a(1, "gads:sai:using_macro:enabled", (Boolean) false);

    /* renamed from: U */
    public static final ect<String> f16335U = ect.m7893a(1, "gads:sai:ad_event_id_macro_name", "[gw_fbsaeid]");

    /* renamed from: V */
    public static final ect<Long> f16336V = ect.m7895a(1, "gads:sai:timeout_ms", -1L);

    /* renamed from: W */
    public static final ect<Integer> f16337W = ect.m7896a(1, "gads:sai:scion_thread_pool_size", 5);

    /* renamed from: X */
    public static final ect<Boolean> f16338X = ect.m7894a(1, "gads:sai:app_measurement_enabled3", (Boolean) false);

    /* renamed from: Y */
    public static final ect<Integer> f16339Y = ect.m7896a(1, "gads:sai:app_measurement_min_client_dynamite_version", 20290);

    /* renamed from: Z */
    public static final ect<Boolean> f16340Z = ect.m7894a(1, "gads:sai:force_through_reflection", (Boolean) true);

    /* renamed from: aa */
    public static final ect<Boolean> f16368aa = ect.m7894a(1, "gads:sai:gmscore_availability_check_disabled", (Boolean) false);

    /* renamed from: ab */
    public static final ect<Boolean> f16369ab = ect.m7894a(1, "gads:sai:logging_disabled_for_drx", (Boolean) false);

    /* renamed from: ac */
    public static final ect<Boolean> f16370ac = ect.m7894a(1, "gads:sai:inject_firebase_proxy", (Boolean) false);

    /* renamed from: ad */
    public static final ect<Boolean> f16371ad = ect.m7894a(1, "gads:sai:app_measurement_npa_enabled", (Boolean) false);

    /* renamed from: ae */
    public static final ect<Boolean> f16372ae = ect.m7894a(1, "gads:interstitial:app_must_be_foreground:enabled", (Boolean) false);

    /* renamed from: af */
    public static final ect<Boolean> f16373af = ect.m7894a(1, "gads:interstitial:foreground_report:enabled", (Boolean) false);

    /* renamed from: ag */
    public static final ect<Boolean> f16374ag = ect.m7894a(1, "gads:webview:error_web_response:enabled", (Boolean) false);

    /* renamed from: ah */
    public static final ect<Boolean> f16375ah = ect.m7894a(1, "gads:webview:pause_interstitial:enabled", (Boolean) true);

    /* renamed from: dL */
    private static final ect<Boolean> f16512dL = ect.m7894a(1, "gads:rsku:webviewgone:kill_process:enabled", (Boolean) false);

    /* renamed from: ai */
    public static final ect<Boolean> f16376ai = ect.m7894a(1, "gads:webviewgone:kill_process:enabled", (Boolean) false);

    /* renamed from: dM */
    private static final ect<Boolean> f16513dM = ect.m7894a(1, "gads:rsku:webviewgone:new_onshow:enabled", (Boolean) true);

    /* renamed from: aj */
    public static final ect<Boolean> f16377aj = ect.m7894a(1, "gads:webviewgone:new_onshow:enabled", (Boolean) false);

    /* renamed from: ak */
    public static final ect<Boolean> f16378ak = ect.m7894a(1, "gads:webview:pause_resume:enabled", (Boolean) true);

    /* renamed from: dN */
    private static final ect<Boolean> f16514dN = ect.m7894a(1, "gads:new_rewarded_ad:enabled", (Boolean) true);

    /* renamed from: al */
    public static final ect<Boolean> f16379al = ect.m7894a(1, "gads:rewarded:adapter_initialization_enabled", (Boolean) false);

    /* renamed from: dO */
    private static final ect<Long> f16515dO = ect.m7895a(1, "gads:rewarded:adapter_timeout_ms", 20000L);

    /* renamed from: am */
    public static final ect<Boolean> f16380am = ect.m7894a(1, "gads:rewarded:ad_metadata_enabled", (Boolean) false);

    /* renamed from: an */
    public static final ect<Boolean> f16381an = ect.m7894a(1, "gads:rewarded:ssv_custom_data_enabled", (Boolean) true);

    /* renamed from: ao */
    public static final ect<Long> f16382ao = ect.m7895a(1, "gads:app_activity_tracker:notify_background_listeners_delay_ms", 500L);

    /* renamed from: ap */
    public static final ect<Long> f16383ap = ect.m7895a(1, "gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5));

    /* renamed from: aq */
    public static final ect<Boolean> f16384aq = ect.m7894a(1, "gads:adid_values_in_adrequest:enabled", (Boolean) false);

    /* renamed from: ar */
    public static final ect<Long> f16385ar = ect.m7895a(1, "gads:adid_values_in_adrequest:timeout", 2000L);

    /* renamed from: as */
    public static final ect<Boolean> f16386as = ect.m7894a(1, "gads:disable_adid_values_in_ms", (Boolean) false);

    /* renamed from: at */
    public static final ect<Long> f16387at = ect.m7895a(1, "gads:ad_overlay:delay_page_close_timeout_ms", 5000L);

    /* renamed from: au */
    public static final ect<Boolean> f16388au = ect.m7894a(1, "gads:custom_close_blocking:enabled", (Boolean) false);

    /* renamed from: av */
    public static final ect<Boolean> f16389av = ect.m7894a(1, "gads:disabling_closable_area:enabled", (Boolean) false);

    /* renamed from: aw */
    public static final ect<Boolean> f16390aw = ect.m7894a(1, "gads:use_system_ui_for_fullscreen:enabled", (Boolean) false);

    /* renamed from: ax */
    public static final ect<Boolean> f16391ax = ect.m7894a(1, "gads:ad_overlay:collect_cutout_info:enabled", (Boolean) false);

    /* renamed from: dP */
    private static final ect<Boolean> f16516dP = ect.m7894a(1, "gads:impression_optimization_enabled", (Boolean) false);

    /* renamed from: dQ */
    private static final ect<String> f16517dQ = ect.m7893a(1, "gads:banner_ad_pool:schema", "customTargeting");

    /* renamed from: dR */
    private static final ect<Integer> f16518dR = ect.m7896a(1, "gads:banner_ad_pool:max_queues", 3);

    /* renamed from: dS */
    private static final ect<Integer> f16519dS = ect.m7896a(1, "gads:banner_ad_pool:max_pools", 3);

    /* renamed from: ay */
    public static final ect<Boolean> f16392ay = ect.m7894a(1, "gads:delay_banner_renderer:enabled", (Boolean) true);

    /* renamed from: dT */
    private static final ect<Boolean> f16520dT = ect.m7894a(1, "gads:interstitial_ad_pool:enabled", (Boolean) false);

    /* renamed from: dU */
    private static final ect<Boolean> f16521dU = ect.m7894a(1, "gads:interstitial_ad_pool:enabled_for_rewarded", (Boolean) false);

    /* renamed from: dV */
    private static final ect<String> f16522dV = ect.m7893a(1, "gads:interstitial_ad_pool:schema", "customTargeting");

    /* renamed from: dW */
    private static final ect<String> f16523dW = ect.m7893a(1, "gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");

    /* renamed from: dX */
    private static final ect<Integer> f16524dX = ect.m7896a(1, "gads:interstitial_ad_pool:max_pools", 3);

    /* renamed from: dY */
    private static final ect<Integer> f16525dY = ect.m7896a(1, "gads:interstitial_ad_pool:max_pool_depth", 2);

    /* renamed from: dZ */
    private static final ect<Integer> f16526dZ = ect.m7896a(1, "gads:interstitial_ad_pool:time_limit_sec", 1200);

    /* renamed from: ea */
    private static final ect<String> f16568ea = ect.m7893a(1, "gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");

    /* renamed from: eb */
    private static final ect<Integer> f16569eb = ect.m7896a(1, "gads:interstitial_ad_pool:top_off_latency_min_millis", 0);

    /* renamed from: ec */
    private static final ect<Integer> f16570ec = ect.m7896a(1, "gads:interstitial_ad_pool:top_off_latency_range_millis", 0);

    /* renamed from: ed */
    private static final ect<Long> f16571ed = ect.m7895a(1, "gads:interstitial_ad_pool:discard_thresholds", 0L);

    /* renamed from: ee */
    private static final ect<Long> f16572ee = ect.m7895a(1, "gads:interstitial_ad_pool:miss_thresholds", 0L);

    /* renamed from: ef */
    private static final ect<Float> f16573ef = ect.m7897a(1, "gads:interstitial_ad_pool:discard_asymptote", 0.0f);

    /* renamed from: eg */
    private static final ect<Float> f16574eg = ect.m7897a(1, "gads:interstitial_ad_pool:miss_asymptote", 0.0f);

    /* renamed from: az */
    public static final ect<String> f16393az = ect.m7893a(1, "gads:spherical_video:vertex_shader", "");

    /* renamed from: aA */
    public static final ect<String> f16342aA = ect.m7893a(1, "gads:spherical_video:fragment_shader", "");

    /* renamed from: aB */
    public static final ect<Boolean> f16343aB = ect.m7894a(1, "gads:include_local_global_rectangles", (Boolean) false);

    /* renamed from: aC */
    public static final ect<Long> f16344aC = ect.m7895a(1, "gads:position_watcher:throttle_ms", 200L);

    /* renamed from: aD */
    public static final ect<Long> f16345aD = ect.m7895a(1, "gads:position_watcher:scroll_aware_throttle_ms", 33L);

    /* renamed from: aE */
    public static final ect<Boolean> f16346aE = ect.m7894a(1, "gads:position_watcher:enable_scroll_aware_ads", (Boolean) false);

    /* renamed from: aF */
    public static final ect<Boolean> f16347aF = ect.m7894a(1, "gads:position_watcher:send_scroll_data", (Boolean) false);

    /* renamed from: eh */
    private static final ect<Boolean> f16575eh = ect.m7894a(1, "gads:gen204_signals:enabled", (Boolean) false);

    /* renamed from: aG */
    public static final ect<String> f16348aG = ect.m7893a(1, "gads:logged_adapter_version_classes", "");

    /* renamed from: aH */
    public static final ect<Long> f16349aH = ect.m7895a(1, "gads:rtb_v1_1:signal_timeout_ms", 1000L);

    /* renamed from: aI */
    public static final ect<Boolean> f16350aI = ect.m7894a(1, "gads:rtb_signal:enabled", (Boolean) true);

    /* renamed from: aJ */
    public static final ect<Boolean> f16351aJ = ect.m7894a(1, "gads:rtb_v1_1:cld:enabled", (Boolean) true);

    /* renamed from: aK */
    public static final ect<Boolean> f16352aK = ect.m7894a(1, "gads:rtb_v1_1:cld:check_regex:enabled", (Boolean) true);

    /* renamed from: aL */
    public static final ect<String> f16353aL = ect.m7893a(1, "gads:rtb_logging:regex", "(?!)");

    /* renamed from: aM */
    public static final ect<Boolean> f16354aM = ect.m7894a(1, "gads:v1_1:adapter_initialization:enabled", (Boolean) true);

    /* renamed from: aN */
    public static final ect<Integer> f16355aN = ect.m7896a(1, "gads:adapter_initialization:min_sdk_version", 15301000);

    /* renamed from: aO */
    public static final ect<Long> f16356aO = ect.m7895a(1, "gads:adapter_initialization:timeout", 30L);

    /* renamed from: aP */
    public static final ect<Long> f16357aP = ect.m7895a(1, "gads:adapter_initialization:cld_timeout", 10L);

    /* renamed from: aQ */
    public static final ect<Boolean> f16358aQ = ect.m7894a(1, "gads:initialization_csi:enabled", (Boolean) false);

    /* renamed from: ei */
    private static final ect<Boolean> f16576ei = ect.m7894a(1, "gads:initialization_csi_control:enabled", (Boolean) false);

    /* renamed from: aR */
    public static final ect<Boolean> f16359aR = ect.m7894a(1, "gads:msa:experiments:enabled", (Boolean) false);

    /* renamed from: aS */
    public static final ect<Integer> f16360aS = ect.m7896a(1, "gads:gestures:a2:enabled", 0);

    /* renamed from: aT */
    public static final ect<Boolean> f16361aT = ect.m7894a(1, "gads:gestures:clearTd:enabled", (Boolean) false);

    /* renamed from: aU */
    public static final C2761ab<Boolean> f16362aU = C2789ap.f10165b;

    /* renamed from: aV */
    public static final ect<Boolean> f16363aV = ect.m7894a(1, "gads:gestures:errorlogging:enabled", (Boolean) false);

    /* renamed from: aW */
    public static final ect<Long> f16364aW = ect.m7895a(1, "gads:gestures:task_timeout", 2000L);

    /* renamed from: aX */
    public static final ect<Boolean> f16365aX = ect.m7894a(1, "gads:gestures:asig:enabled", (Boolean) false);

    /* renamed from: aY */
    public static final ect<Boolean> f16366aY = ect.m7894a(1, "gads:gestures:ans:enabled", (Boolean) false);

    /* renamed from: aZ */
    public static final ect<Boolean> f16367aZ = ect.m7894a(1, "gads:gestures:tos:enabled", (Boolean) false);

    /* renamed from: ba */
    public static final ect<Boolean> f16421ba = ect.m7894a(1, "gads:gestures:brt:enabled", (Boolean) true);

    /* renamed from: bb */
    public static final ect<Boolean> f16422bb = ect.m7894a(1, "gads:gestures:fpi:enabled", (Boolean) false);

    /* renamed from: bc */
    public static final ect<Boolean> f16423bc = ect.m7894a(1, "gads:signal:app_permissions:disabled", (Boolean) false);

    /* renamed from: bd */
    public static final ect<Boolean> f16424bd = ect.m7894a(1, "gads:gestures:inthex:enabled", (Boolean) false);

    /* renamed from: be */
    public static final ect<Boolean> f16425be = ect.m7894a(1, "gads:gestures:hpk:enabled", (Boolean) true);

    /* renamed from: bf */
    public static final ect<String> f16426bf = ect.m7893a(1, "gads:gestures:pk", "");

    /* renamed from: bg */
    public static final ect<Boolean> f16427bg = ect.m7894a(1, "gads:gestures:bs:enabled", (Boolean) true);

    /* renamed from: bh */
    public static final ect<Boolean> f16428bh = ect.m7894a(1, "gads:gestures:check_initialization_thread:enabled", (Boolean) false);

    /* renamed from: bi */
    public static final ect<Boolean> f16429bi = ect.m7894a(1, "gads:gestures:get_query_in_non_ui_thread:enabled", (Boolean) true);

    /* renamed from: bj */
    public static final ect<Boolean> f16430bj = ect.m7894a(1, "gads:gestures:init_new_thread:enabled", (Boolean) true);

    /* renamed from: bk */
    public static final ect<Boolean> f16431bk = ect.m7894a(1, "gads:gestures:pds:enabled", (Boolean) true);

    /* renamed from: ej */
    private static final ect<Integer> f16577ej = ect.m7896a(1, "gads:gestures:as2percentage", 0);

    /* renamed from: bl */
    public static final ect<Boolean> f16432bl = ect.m7894a(1, "gads:gestures:las:enabled", (Boolean) false);

    /* renamed from: bm */
    public static final ect<Boolean> f16433bm = ect.m7894a(1, "gads:gestures:ns:enabled", (Boolean) true);

    /* renamed from: bn */
    public static final ect<Boolean> f16434bn = ect.m7894a(1, "gads:gestures:vdd:enabled", (Boolean) false);

    /* renamed from: bo */
    public static final ect<Boolean> f16435bo = ect.m7894a(1, "gads:native:asset_view_touch_events", (Boolean) false);

    /* renamed from: bp */
    public static final ect<Boolean> f16436bp = ect.m7894a(1, "gads:native:set_touch_listener_on_asset_views", (Boolean) true);

    /* renamed from: bq */
    public static final ect<Boolean> f16437bq = ect.m7894a(1, "gads:ais:enabled", (Boolean) false);

    /* renamed from: br */
    public static final ect<Boolean> f16438br = ect.m7894a(1, "gads:send_available_disk_space:enabled", (Boolean) false);

    /* renamed from: bs */
    public static final ect<String> f16439bs = ect.m7893a(1, "gads:sdk_core_constants:caps", "");

    /* renamed from: el */
    private static final ect<Boolean> f16579el = ect.m7894a(1, "gads:js_flags:disable_phenotype", (Boolean) false);

    /* renamed from: bt */
    public static final ect<String> f16440bt = ect.m7893a(1, "gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");

    /* renamed from: em */
    private static final ect<String> f16580em = ect.m7893a(1, "gads:native:video_url", "//imasdk.googleapis.com/admob/sdkloader/native_video.html");

    /* renamed from: bu */
    public static final ect<String> f16441bu = ect.m7893a(1, "gads:native:video_url_with_protocol", "https://imasdk.googleapis.com/admob/sdkloader/native_video.html");

    /* renamed from: bv */
    public static final ect<Integer> f16442bv = ect.m7896a(1, "gads:native_video_load_timeout", 10);

    /* renamed from: en */
    private static final ect<Integer> f16581en = ect.m7896a(1, "gads:omid:native_webview_load_timeout", 2000);

    /* renamed from: bw */
    public static final ect<Boolean> f16443bw = ect.m7894a(1, "gads:enable_native_media_aspect_ratio", (Boolean) true);

    /* renamed from: bx */
    public static final ect<Boolean> f16444bx = ect.m7894a(1, "gads:native:media_content_main_image:enabled", (Boolean) true);

    /* renamed from: by */
    public static final ect<String> f16445by = ect.m7893a(1, "gads:ad_choices_content_description", "Ad Choices Icon");

    /* renamed from: eo */
    private static final ect<Boolean> f16582eo = ect.m7894a(1, "gads:enable_store_active_view_state", (Boolean) false);

    /* renamed from: bz */
    public static final ect<Boolean> f16446bz = ect.m7894a(1, "gads:enable_singleton_broadcast_receiver", (Boolean) false);

    /* renamed from: bA */
    public static final ect<Boolean> f16395bA = ect.m7894a(1, "gads:native:media_view_match_parent:enabled", (Boolean) false);

    /* renamed from: bB */
    public static final ect<Boolean> f16396bB = ect.m7894a(1, "gads:native:count_impression_for_assets", (Boolean) false);

    /* renamed from: ep */
    private static final ect<Boolean> f16583ep = ect.m7894a(1, "gads:instream_ad:enabled", (Boolean) true);

    /* renamed from: bC */
    public static final ect<Boolean> f16397bC = ect.m7894a(1, "gads:fluid_ad:use_wrap_content_height", (Boolean) false);

    /* renamed from: eq */
    private static final ect<Boolean> f16584eq = ect.m7894a(1, "gads:auto_location_for_coarse_permission", (Boolean) false);

    /* renamed from: er */
    private static final ect<String> f16585er = ect.m7898a(1, "gads:auto_location_for_coarse_permission:experiment_id");

    /* renamed from: bD */
    public static final ect<Long> f16398bD = ect.m7895a(1, "gads:auto_location_timeout", 2000L);

    /* renamed from: es */
    private static final ect<String> f16586es = ect.m7898a(1, "gads:auto_location_timeout:experiment_id");

    /* renamed from: et */
    private static final ect<Long> f16587et = ect.m7895a(1, "gads:auto_location_interval", -1L);

    /* renamed from: eu */
    private static final ect<String> f16588eu = ect.m7898a(1, "gads:auto_location_interval:experiment_id");

    /* renamed from: bE */
    public static final ect<Boolean> f16399bE = ect.m7894a(1, "gads:rtb_v1_1:fetch_app_settings_using_cld:enabled", (Boolean) true);

    /* renamed from: bF */
    public static final ect<Boolean> f16400bF = ect.m7894a(1, "gads:get_request_signals_cld:enabled", (Boolean) false);

    /* renamed from: bG */
    public static final ect<Boolean> f16401bG = ect.m7894a(1, "gads:rtb_v1_1:use_manifest_appid_cld:enabled", (Boolean) true);

    /* renamed from: bH */
    public static final ect<Long> f16402bH = ect.m7895a(1, "gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000L);

    /* renamed from: bI */
    public static final ect<Long> f16403bI = ect.m7895a(1, "gads:parental_controls:timeout", 2000L);

    /* renamed from: ev */
    private static final ect<Integer> f16589ev = ect.m7896a(1, "gads:cache:ad_request_timeout_millis", 250);

    /* renamed from: ew */
    private static final ect<Integer> f16590ew = ect.m7896a(1, "gads:cache:max_concurrent_downloads", 10);

    /* renamed from: ex */
    private static final ect<Long> f16591ex = ect.m7895a(1, "gads:cache:javascript_timeout_millis", 5000L);

    /* renamed from: bJ */
    public static final ect<Boolean> f16404bJ = ect.m7894a(1, "gads:cache:bind_on_foreground", (Boolean) false);

    /* renamed from: bK */
    public static final ect<Boolean> f16405bK = ect.m7894a(1, "gads:cache:bind_on_init", (Boolean) false);

    /* renamed from: bL */
    public static final ect<Boolean> f16406bL = ect.m7894a(1, "gads:cache:bind_on_request", (Boolean) false);

    /* renamed from: bM */
    public static final ect<Long> f16407bM = ect.m7895a(1, "gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30));

    /* renamed from: bN */
    public static final ect<Boolean> f16408bN = ect.m7894a(1, "gads:cache:use_cache_data_source", (Boolean) false);

    /* renamed from: bO */
    public static final ect<Boolean> f16409bO = ect.m7894a(1, "gads:cache:connection_per_read", (Boolean) false);

    /* renamed from: bP */
    public static final ect<Long> f16410bP = ect.m7895a(1, "gads:cache:connection_timeout", 5000L);

    /* renamed from: bQ */
    public static final ect<Long> f16411bQ = ect.m7895a(1, "gads:cache:read_only_connection_timeout", 5000L);

    /* renamed from: bR */
    public static final ect<Boolean> f16412bR = ect.m7894a(1, "gads:http_assets_cache:enabled", (Boolean) false);

    /* renamed from: bS */
    public static final ect<String> f16413bS = ect.m7893a(1, "gads:http_assets_cache:regex", "(?i)https:\\/\\/(tpc\\.googlesyndication\\.com\\/(.*)|lh\\d+\\.googleusercontent\\.com\\/(.*))");

    /* renamed from: bT */
    public static final ect<Integer> f16414bT = ect.m7896a(1, "gads:http_assets_cache:time_out", 100);

    /* renamed from: bU */
    public static final ect<Boolean> f16415bU = ect.m7894a(1, "gads:chrome_custom_tabs_browser:enabled", (Boolean) false);

    /* renamed from: bV */
    public static final ect<Boolean> f16416bV = ect.m7894a(1, "gads:chrome_custom_tabs:disabled", (Boolean) false);

    /* renamed from: bW */
    public static final ect<Long> f16417bW = ect.m7895a(1, "gads:debug_hold_gesture:time_millis", 2000L);

    /* renamed from: bX */
    public static final ect<String> f16418bX = ect.m7893a(1, "gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");

    /* renamed from: bY */
    public static final ect<String> f16419bY = ect.m7893a(1, "gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");

    /* renamed from: bZ */
    public static final ect<String> f16420bZ = ect.m7893a(1, "gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");

    /* renamed from: ca */
    public static final ect<String> f16474ca = ect.m7893a(1, "gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");

    /* renamed from: cb */
    public static final ect<Integer> f16475cb = ect.m7896a(1, "gads:drx_debug:timeout_ms", 5000);

    /* renamed from: cc */
    public static final ect<Integer> f16476cc = ect.m7896a(1, "gad:pixel_dp_comparision_multiplier", 1);

    /* renamed from: cd */
    public static final ect<Boolean> f16477cd = ect.m7894a(1, "gad:interstitial_for_multi_window", (Boolean) false);

    /* renamed from: ce */
    public static final ect<Boolean> f16478ce = ect.m7894a(1, "gad:interstitial_ad_stay_active_in_multi_window", (Boolean) false);

    /* renamed from: cf */
    public static final ect<Boolean> f16479cf = ect.m7894a(1, "gad:interstitial_multi_window_method", (Boolean) false);

    /* renamed from: cg */
    public static final ect<Integer> f16480cg = ect.m7896a(1, "gad:interstitial:close_button_padding_dip", 0);

    /* renamed from: ch */
    public static final ect<Boolean> f16481ch = ect.m7894a(1, "gads:clearcut_logging:enabled", (Boolean) false);

    /* renamed from: ci */
    public static final ect<Boolean> f16482ci = ect.m7894a(1, "gads:clearcut_logging:write_to_file", (Boolean) false);

    /* renamed from: cj */
    public static final ect<Boolean> f16483cj = ect.m7894a(1, "gad:publisher_testing:force_local_request:enabled", (Boolean) true);

    /* renamed from: ck */
    public static final ect<String> f16484ck = ect.m7893a(1, "gad:publisher_testing:force_local_request:enabled_list", "");

    /* renamed from: cl */
    public static final ect<String> f16485cl = ect.m7893a(1, "gad:publisher_testing:force_local_request:disabled_list", "");

    /* renamed from: cm */
    public static final ect<Integer> f16486cm = ect.m7896a(1, "gad:http_redirect_max_count:times", 8);

    /* renamed from: cn */
    public static final ect<Boolean> f16487cn = ect.m7894a(1, "gads:omid:enabled", (Boolean) true);

    /* renamed from: co */
    public static final ect<Integer> f16488co = ect.m7896a(1, "gads:omid:destroy_webview_delay", 1000);

    /* renamed from: ey */
    private static final ect<Boolean> f16592ey = ect.m7894a(1, "gads:nonagon:banner:enabled", (Boolean) false);

    /* renamed from: ez */
    private static final ect<String> f16593ez = ect.m7893a(1, "gads:nonagon:banner:ad_unit_exclusions", "(?!)");

    /* renamed from: eA */
    private static final ect<Boolean> f16554eA = ect.m7894a(1, "gads:nonagon:app_open:enabled", (Boolean) true);

    /* renamed from: cp */
    public static final ect<Integer> f16489cp = ect.m7896a(1, "gads:app_open_beta:min_version", 99999999);

    /* renamed from: eB */
    private static final ect<String> f16555eB = ect.m7893a(1, "gads:nonagon:app_open:ad_unit_exclusions", "(?!)");

    /* renamed from: eC */
    private static final ect<Boolean> f16556eC = ect.m7894a(1, "gads:nonagon:interstitial:enabled", (Boolean) false);

    /* renamed from: eD */
    private static final ect<String> f16557eD = ect.m7893a(1, "gads:nonagon:interstitial:ad_unit_exclusions", "(?!)");

    /* renamed from: eE */
    private static final ect<Boolean> f16558eE = ect.m7894a(1, "gads:nonagon:rewardedvideo:enabled", (Boolean) false);

    /* renamed from: cq */
    public static final ect<Boolean> f16490cq = ect.m7894a(1, "gads:nonagon:mobile_ads_setting_manager:enabled", (Boolean) false);

    /* renamed from: cr */
    public static final ect<String> f16491cr = ect.m7893a(1, "gads:nonagon:rewardedvideo:ad_unit_exclusions", "(?!)");

    /* renamed from: eF */
    private static final ect<Boolean> f16559eF = ect.m7894a(1, "gads:nonagon:nativead:enabled", (Boolean) false);

    /* renamed from: eG */
    private static final ect<String> f16560eG = ect.m7893a(1, "gads:nonagon:nativead:app_name", "(?!)");

    /* renamed from: cs */
    public static final ect<Boolean> f16492cs = ect.m7894a(1, "gads:nonagon:banner:check_dp_size", (Boolean) true);

    /* renamed from: ct */
    public static final ect<Boolean> f16493ct = ect.m7894a(1, "gads:nonagon:rewarded:load_multiple_ads", (Boolean) true);

    /* renamed from: eH */
    private static final ect<Boolean> f16561eH = ect.m7894a(1, "gads:nonagon:return_last_error_code", (Boolean) false);

    /* renamed from: cu */
    public static final ect<Boolean> f16494cu = ect.m7894a(1, "gads:nonagon:return_no_fill_error_code", (Boolean) false);

    /* renamed from: cv */
    public static final ect<Boolean> f16495cv = ect.m7894a(1, "gads:nonagon:continue_on_no_fill", (Boolean) false);

    /* renamed from: eI */
    private static final ect<Boolean> f16562eI = ect.m7894a(1, "gads:nonagon:open_not_loaded_interstitial", (Boolean) true);

    /* renamed from: cw */
    public static final ect<Boolean> f16496cw = ect.m7894a(1, "gads:nonagon:separate_timeout:enabled", (Boolean) true);

    /* renamed from: cx */
    public static final ect<Integer> f16497cx = ect.m7896a(1, "gads:nonagon:request_timeout:seconds", 60);

    /* renamed from: cy */
    public static final ect<Boolean> f16498cy = ect.m7894a(1, "gads:nonagon:banner_recursive_renderer", (Boolean) false);

    /* renamed from: cz */
    public static final ect<Boolean> f16499cz = ect.m7894a(1, "gads:nonagon:app_stats_lock:enabled", (Boolean) false);

    /* renamed from: cA */
    public static final ect<Boolean> f16448cA = ect.m7894a(1, "gads:nonagon:app_stats_main_thread:enabled", (Boolean) false);

    /* renamed from: cB */
    public static final ect<Boolean> f16449cB = ect.m7894a(1, "gads:uri_query_to_map_bg_thread:enabled", (Boolean) false);

    /* renamed from: cC */
    public static final ect<Boolean> f16450cC = ect.m7894a(1, "gads:nonagon:active_view_gmsg_background_thread:enabled", (Boolean) true);

    /* renamed from: cD */
    public static final ect<Boolean> f16451cD = ect.m7894a(1, "gads:active_view_gmsg_separate_pool:enabled", (Boolean) true);

    /* renamed from: eJ */
    private static final ect<Boolean> f16563eJ = ect.m7894a(1, "gads:nonagon:service:enabled", (Boolean) true);

    /* renamed from: cE */
    public static final ect<Boolean> f16452cE = ect.m7894a(1, "gads:nonagon:dpl_cancel_destroy_webview:enabled", (Boolean) false);

    /* renamed from: cF */
    public static final ect<Boolean> f16453cF = ect.m7894a(1, "gads:signals:ad_id_info:enabled", (Boolean) false);

    /* renamed from: cG */
    public static final ect<Boolean> f16454cG = ect.m7894a(1, "gads:signals:app_index:enabled", (Boolean) false);

    /* renamed from: cH */
    public static final ect<Boolean> f16455cH = ect.m7894a(1, "gads:signals:attestation_token:enabled", (Boolean) false);

    /* renamed from: cI */
    public static final ect<Boolean> f16456cI = ect.m7894a(1, "gads:signals:cache:enabled", (Boolean) false);

    /* renamed from: eK */
    private static final ect<Boolean> f16564eK = ect.m7894a(1, "gads:signals:doritos:enabled", (Boolean) false);

    /* renamed from: cJ */
    public static final ect<Boolean> f16457cJ = ect.m7894a(1, "gads:signals:doritos:v1:enabled", (Boolean) false);

    /* renamed from: eL */
    private static final ect<Boolean> f16565eL = ect.m7894a(1, "gads:signals:doritos:v2:immediate:enabled", (Boolean) false);

    /* renamed from: cK */
    public static final ect<Boolean> f16458cK = ect.m7894a(1, "gads:signals:location:enabled", (Boolean) false);

    /* renamed from: eM */
    private static final ect<Boolean> f16566eM = ect.m7894a(1, "gads:signals:network_prediction:enabled", (Boolean) false);

    /* renamed from: cL */
    public static final ect<Boolean> f16459cL = ect.m7894a(1, "gads:signals:parental_control:enabled", (Boolean) false);

    /* renamed from: cM */
    public static final ect<Boolean> f16460cM = ect.m7894a(1, "gads:signals:video_decoder:enabled", (Boolean) false);

    /* renamed from: cN */
    public static final ect<Boolean> f16461cN = ect.m7894a(1, "gads:attestation_token:enabled", (Boolean) false);

    /* renamed from: cO */
    public static final ect<Long> f16462cO = ect.m7895a(1, "gads:mobius_linking:sdk_side_cooldown_time_threshold:ms", 3600000L);

    /* renamed from: cP */
    public static final ect<Integer> f16463cP = ect.m7896a(1, "gads:adoverlay:b68684796:targeting_sdk:lower_bound", 27);

    /* renamed from: cQ */
    public static final ect<Integer> f16464cQ = ect.m7896a(1, "gads:adoverlay:b68684796:targeting_sdk:upper_bound", 26);

    /* renamed from: cR */
    public static final ect<Integer> f16465cR = ect.m7896a(1, "gads:adoverlay:b68684796:sdk_int:lower_bound", 27);

    /* renamed from: cS */
    public static final ect<Integer> f16466cS = ect.m7896a(1, "gads:adoverlay:b68684796:sdk_int:upper_bound", 26);

    /* renamed from: eN */
    private static final C2761ab<Boolean> f16567eN = C2817au.f10377a;

    /* renamed from: cT */
    public static final ect<Boolean> f16467cT = ect.m7894a(1, "gads:consent:shared_preference_reading:enabled", (Boolean) true);

    /* renamed from: cU */
    public static final ect<Boolean> f16468cU = ect.m7894a(1, "gads:consent:iab_consent_info:enabled", (Boolean) true);

    /* renamed from: cV */
    public static final ect<Boolean> f16469cV = ect.m7894a(1, "gads:fc_consent:shared_preference_reading:enabled", (Boolean) true);

    /* renamed from: cW */
    public static final ect<String> f16470cW = ect.m7893a(1, "gads:sp:json_string", "");

    /* renamed from: cX */
    public static final ect<Boolean> f16471cX = ect.m7894a(1, "gads:nativeads:image:sample:enabled", (Boolean) true);

    /* renamed from: cY */
    public static final ect<Integer> f16472cY = ect.m7896a(1, "gads:nativeads:image:sample:pixels", 1048576);

    /* renamed from: cZ */
    public static final ect<Boolean> f16473cZ = ect.m7894a(1, "gads:nativeads:pub_image_scale_type:enabled", (Boolean) true);

    /* renamed from: da */
    public static final ect<Boolean> f16527da = ect.m7894a(1, "gads:offline_signaling:enabled", (Boolean) false);

    /* renamed from: db */
    public static final ect<Integer> f16528db = ect.m7896a(1, "gads:offline_signaling:log_maximum", 100);

    /* renamed from: dc */
    public static final ect<Boolean> f16529dc = ect.m7894a(1, "gads:nativeads:template_signal:enabled", (Boolean) true);

    /* renamed from: dd */
    public static final ect<Boolean> f16530dd = ect.m7894a(1, "gads:nativeads:media_content_aspect_ratio:enabled", (Boolean) true);

    /* renamed from: de */
    public static final ect<Boolean> f16531de = ect.m7894a(1, "gads:nativeads:media_content_metadata:enabled", (Boolean) true);

    /* renamed from: df */
    public static final ect<Boolean> f16532df = ect.m7894a(1, "gads:ar_ads:enabled", (Boolean) false);

    /* renamed from: dg */
    public static final ect<Boolean> f16533dg = ect.m7894a(1, "gads:precache_pool:verbose_logging", (Boolean) false);

    /* renamed from: dh */
    public static final ect<Integer> f16534dh = ect.m7896a(1, "gads:rewarded_precache_pool:count", 0);

    /* renamed from: di */
    public static final ect<Integer> f16535di = ect.m7896a(1, "gads:interstitial_precache_pool:count", 0);

    /* renamed from: dj */
    public static final ect<String> f16536dj = ect.m7893a(1, "gads:rewarded_precache_pool:discard_strategy", "lru");

    /* renamed from: dk */
    public static final ect<String> f16537dk = ect.m7893a(1, "gads:interstitial_precache_pool:discard_strategy", "lru");

    /* renamed from: dl */
    public static final ect<String> f16538dl = ect.m7893a(1, "gads:rewarded_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: dm */
    public static final ect<String> f16539dm = ect.m7893a(1, "gads:interstitial_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: dn */
    public static final ect<Integer> f16540dn = ect.m7896a(1, "gads:rewarded_precache_pool:size", 1);

    /* renamed from: do */
    public static final ect<Integer> f16541do = ect.m7896a(1, "gads:interstitial_precache_pool:size", 1);

    /* renamed from: dp */
    public static final ect<Integer> f16542dp = ect.m7896a(1, "gads:rewarded_precache_pool:ad_time_limit", 1200);

    /* renamed from: dq */
    public static final ect<Integer> f16543dq = ect.m7896a(1, "gads:interstitial_precache_pool:ad_time_limit", 1200);

    /* renamed from: dr */
    public static final ect<String> f16544dr = ect.m7893a(1, "gads:rewarded_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: ds */
    public static final ect<String> f16545ds = ect.m7893a(1, "gads:interstitial_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: dt */
    public static final ect<String> f16546dt = ect.m7893a(1, "gads:app_open_precache_pool:schema", "orientation,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: du */
    public static final ect<String> f16547du = ect.m7893a(1, "gads:app_open_precache_pool:discard_strategy", "oldest");

    /* renamed from: dv */
    public static final ect<Integer> f16548dv = ect.m7896a(1, "gads:app_open_precache_pool:count", 0);

    /* renamed from: dw */
    public static final ect<String> f16549dw = ect.m7893a(1, "gads:app_open_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: dx */
    public static final ect<Integer> f16550dx = ect.m7896a(1, "gads:app_open_precache_pool:size", 1);

    /* renamed from: dy */
    public static final ect<Integer> f16551dy = ect.m7896a(1, "gads:app_open_precache_pool:ad_time_limit", 14400);

    /* renamed from: dz */
    public static final ect<Boolean> f16552dz = ect.m7894a(1, "gads:memory_leak:b129558083", (Boolean) false);

    /* renamed from: dA */
    public static final ect<Boolean> f16501dA = ect.m7894a(1, "gads:unhandled_event_reporting:enabled", (Boolean) false);

    /* renamed from: dB */
    public static final ect<Boolean> f16502dB = ect.m7894a(1, "gads:response_info:enabled", (Boolean) true);

    /* renamed from: dC */
    public static final ect<Boolean> f16503dC = ect.m7894a(1, "gads:csi:interstitial_failed_to_show:enabled", (Boolean) false);

    /* renamed from: dD */
    public static final ect<Boolean> f16504dD = ect.m7894a(1, "gads:csi:mediation_failure:enabled", (Boolean) false);

    /* renamed from: dE */
    public static final ect<String> f16505dE = ect.m7893a(1, "gads:csi:error_parsing:regex", "\\d+");

    /* renamed from: dF */
    public static final ect<Boolean> f16506dF = ect.m7894a(1, "gads:signal_collection_without_rendering:enabled", (Boolean) true);

    /* renamed from: dG */
    public static final ect<Integer> f16507dG = ect.m7896a(1, "gads:native_ads_signal:timeout", 1000);

    /* renamed from: dH */
    public static final ect<Integer> f16508dH = ect.m7896a(1, "gads:signal_v2:min_version", 19677000);

    /* renamed from: dI */
    public static final ect<Boolean> f16509dI = ect.m7894a(1, "gads:paid_event_listener:enabled", (Boolean) false);

    static {
        ect<String> m7893a = ect.m7893a(1, "gads:sdk_core_constants:experiment_id", (String) null);
        dyx.m8159d().m7885b(m7893a);
        f16578ek = m7893a;
    }

    /* renamed from: a */
    public static List<String> m7867a() {
        return dyx.m8159d().m7889a();
    }

    /* renamed from: a */
    public static void m7866a(Context context) {
        C3626xj.m6820a(new cov(context) { // from class: com.google.android.gms.internal.ads.edh

            /* renamed from: a */
            private final Context f16314a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16314a = context;
            }

            @Override // com.google.android.gms.internal.ads.cov
            /* renamed from: a */
            public final Object mo7868a() {
                return dyx.m8158e().m7877a(this.f16314a);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.edc, com.google.android.gms.internal.ads.bd] */
    /* renamed from: a */
    public static void m7865a(Context context, int i, JSONObject jSONObject) {
        dyx.m8160c();
        SharedPreferences.Editor edit = context.getSharedPreferences("google_ads_flags", 0).edit();
        C2769ah.m13159a(new edc(dyx.m8159d(), edit, jSONObject));
        dyx.m8159d().m7888a(edit, 1, jSONObject);
        dyx.m8160c();
        edit.commit();
    }

    /* renamed from: b */
    public static List<String> m7864b() {
        return dyx.m8159d().m7886b();
    }
}
