package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.p352d.C11946c;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.aq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aq.class */
public final class C12187aq {

    /* renamed from: fP */
    private static final AbstractC12172af<String> f42918fP;

    /* renamed from: a */
    public static final AbstractC12172af<String> f42637a = AbstractC12172af.m18794a("gads:sdk_core_location:client:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: fl */
    private static final AbstractC12172af<String> f42940fl = AbstractC12172af.m18794a("gads:active_view_location:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: fm */
    private static final C12259bz<Boolean> f42941fm = C12282cq.f46370c;

    /* renamed from: fn */
    private static final AbstractC12172af<Integer> f42942fn = AbstractC12172af.m18796a("gads:http_url_connection_factory:timeout_millis", 10000);

    /* renamed from: b */
    public static final AbstractC12172af<String> f42690b = AbstractC12172af.m18794a("gads:video_exo_player:version", "3");

    /* renamed from: c */
    public static final AbstractC12172af<Integer> f42743c = AbstractC12172af.m18796a("gads:video_exo_player:connect_timeout", 8000);

    /* renamed from: d */
    public static final AbstractC12172af<Integer> f42796d = AbstractC12172af.m18796a("gads:video_exo_player:read_timeout", 8000);

    /* renamed from: e */
    public static final AbstractC12172af<Integer> f42849e = AbstractC12172af.m18796a("gads:video_exo_player:loading_check_interval", 1048576);

    /* renamed from: f */
    public static final AbstractC12172af<Integer> f42902f = AbstractC12172af.m18796a("gads:video_exo_player:exo_player_precache_limit", Integer.MAX_VALUE);

    /* renamed from: g */
    public static final AbstractC12172af<Integer> f42955g = AbstractC12172af.m18796a("gads:video_exo_player:byte_buffer_precache_limit", Integer.MAX_VALUE);

    /* renamed from: h */
    public static final AbstractC12172af<Integer> f42982h = AbstractC12172af.m18796a("gads:video_exo_player_socket_receive_buffer_size", 0);

    /* renamed from: i */
    public static final AbstractC12172af<String> f42983i = AbstractC12172af.m18794a("gads:video_exo_player:precache_exceptions", "");

    /* renamed from: j */
    public static final AbstractC12172af<Integer> f42984j = AbstractC12172af.m18796a("gads:video_exo_player:min_retry_count", -1);

    /* renamed from: k */
    public static final AbstractC12172af<Boolean> f42985k = AbstractC12172af.m18798a(1, "gads:video_exo_player:fmp4_extractor_enabled", Boolean.TRUE);

    /* renamed from: l */
    public static final AbstractC12172af<Boolean> f42986l = AbstractC12172af.m18798a(1, "gads:video_exo_player:use_play_back_info_for_should_start_play_back", Boolean.FALSE);

    /* renamed from: m */
    public static final AbstractC12172af<Boolean> f42987m = AbstractC12172af.m18798a(1, "gads:video_exo_player:treat_load_exception_as_non_fatal", Boolean.FALSE);

    /* renamed from: n */
    public static final AbstractC12172af<Integer> f42988n = AbstractC12172af.m18796a("gads:video_stream_cache:limit_count", 5);

    /* renamed from: o */
    public static final AbstractC12172af<Integer> f42989o = AbstractC12172af.m18796a("gads:video_stream_cache:limit_space", 8388608);

    /* renamed from: p */
    public static final AbstractC12172af<Integer> f42990p = AbstractC12172af.m18796a("gads:video_stream_exo_cache:buffer_size", 8388608);

    /* renamed from: q */
    public static final AbstractC12172af<Long> f42991q = AbstractC12172af.m18795a("gads:video_stream_cache:limit_time_sec", 300L);

    /* renamed from: r */
    public static final AbstractC12172af<Long> f42992r = AbstractC12172af.m18795a("gads:video_stream_cache:notify_interval_millis", 125L);

    /* renamed from: s */
    public static final AbstractC12172af<Integer> f42993s = AbstractC12172af.m18796a("gads:video_stream_cache:connect_timeout_millis", 10000);

    /* renamed from: t */
    public static final AbstractC12172af<String> f42994t = AbstractC12172af.m18794a("gads:video:metric_frame_hash_times", "");

    /* renamed from: u */
    public static final AbstractC12172af<Long> f42995u = AbstractC12172af.m18795a("gads:video:metric_frame_hash_time_leniency", 500L);

    /* renamed from: v */
    public static final AbstractC12172af<Boolean> f42996v = AbstractC12172af.m18798a(1, "gads:video:force_watermark", Boolean.FALSE);

    /* renamed from: w */
    public static final AbstractC12172af<Long> f42997w = AbstractC12172af.m18795a("gads:video:surface_update_min_spacing_ms", 1000L);

    /* renamed from: x */
    public static final AbstractC12172af<Boolean> f42998x = AbstractC12172af.m18798a(1, "gads:video:spinner:enabled", Boolean.FALSE);

    /* renamed from: y */
    public static final AbstractC12172af<Integer> f42999y = AbstractC12172af.m18796a("gads:video:spinner:scale", 4);

    /* renamed from: z */
    public static final AbstractC12172af<Long> f43000z = AbstractC12172af.m18795a("gads:video:spinner:jank_threshold_ms", 50L);

    /* renamed from: A */
    public static final AbstractC12172af<Boolean> f42611A = AbstractC12172af.m18798a(1, "gads:video:aggressive_media_codec_release", Boolean.FALSE);

    /* renamed from: B */
    public static final AbstractC12172af<Boolean> f42612B = AbstractC12172af.m18798a(1, "gads:memory_bundle:debug_info", Boolean.FALSE);

    /* renamed from: C */
    public static final AbstractC12172af<String> f42613C = AbstractC12172af.m18794a("gads:video:codec_query_mime_types", "");

    /* renamed from: D */
    public static final AbstractC12172af<Integer> f42614D = AbstractC12172af.m18796a("gads:video:codec_query_minimum_version", 16);

    /* renamed from: E */
    public static final AbstractC12172af<Boolean> f42615E = AbstractC12172af.m18798a(1, "gads:video:set_black_background", Boolean.FALSE);

    /* renamed from: F */
    public static final AbstractC12172af<String> f42616F = AbstractC12172af.m18794a("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js");

    /* renamed from: G */
    public static final AbstractC12172af<String> f42617G = AbstractC12172af.m18794a("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js");

    /* renamed from: H */
    public static final AbstractC12172af<String> f42618H = AbstractC12172af.m18794a("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js");

    /* renamed from: I */
    public static final AbstractC12172af<String> f42619I = AbstractC12172af.m18794a("gad:mraid:version", "3.0");

    /* renamed from: J */
    public static final AbstractC12172af<Boolean> f42620J = AbstractC12172af.m18798a(1, "gads:mraid:expanded_interstitial_fix", Boolean.FALSE);

    /* renamed from: K */
    public static final AbstractC12172af<Boolean> f42621K = AbstractC12172af.m18798a(1, "gads:mraid:initial_size_fallback", Boolean.FALSE);

    /* renamed from: L */
    public static final AbstractC12172af<Integer> f42622L = AbstractC12172af.m18796a("gads:content_vertical_fingerprint_number", 100);

    /* renamed from: M */
    public static final AbstractC12172af<Integer> f42623M = AbstractC12172af.m18796a("gads:content_vertical_fingerprint_bits", 23);

    /* renamed from: N */
    public static final AbstractC12172af<Integer> f42624N = AbstractC12172af.m18796a("gads:content_vertical_fingerprint_ngram", 3);

    /* renamed from: O */
    public static final AbstractC12172af<String> f42625O = AbstractC12172af.m18794a("gads:content_fetch_view_tag_id", "googlebot");

    /* renamed from: P */
    public static final AbstractC12172af<String> f42626P = AbstractC12172af.m18794a("gads:content_fetch_exclude_view_tag", "none");

    /* renamed from: Q */
    public static final AbstractC12172af<Boolean> f42627Q = AbstractC12172af.m18798a(1, "gads:content_fetch_disable_get_title_from_webview", Boolean.FALSE);

    /* renamed from: R */
    public static final AbstractC12172af<Boolean> f42628R = AbstractC12172af.m18798a(1, "gads:content_fetch_enable_new_content_score", Boolean.FALSE);

    /* renamed from: S */
    public static final AbstractC12172af<Boolean> f42629S = AbstractC12172af.m18798a(1, "gads:content_fetch_enable_serve_once", Boolean.FALSE);

    /* renamed from: T */
    public static final AbstractC12172af<Boolean> f42630T = AbstractC12172af.m18798a(1, "gads:sai:enabled", Boolean.TRUE);

    /* renamed from: U */
    public static final AbstractC12172af<String> f42631U = AbstractC12172af.m18794a("gads:sai:click_ping_schema_v2", "^[^?]*(/aclk\\?|/pcs/click\\?).*");

    /* renamed from: V */
    public static final AbstractC12172af<String> f42632V = AbstractC12172af.m18794a("gads:sai:impression_ping_schema_v2", "^[^?]*(/adview|/pcs/view).*");

    /* renamed from: W */
    public static final AbstractC12172af<Boolean> f42633W = AbstractC12172af.m18798a(1, "gads:sai:using_macro:enabled", Boolean.FALSE);

    /* renamed from: X */
    public static final AbstractC12172af<String> f42634X = AbstractC12172af.m18794a("gads:sai:ad_event_id_macro_name", "[gw_fbsaeid]");

    /* renamed from: Y */
    public static final AbstractC12172af<Long> f42635Y = AbstractC12172af.m18795a("gads:sai:timeout_ms", -1L);

    /* renamed from: Z */
    public static final AbstractC12172af<Integer> f42636Z = AbstractC12172af.m18796a("gads:sai:scion_thread_pool_size", 5);

    /* renamed from: aa */
    public static final AbstractC12172af<Boolean> f42664aa = AbstractC12172af.m18798a(1, "gads:sai:app_measurement_enabled3", Boolean.FALSE);

    /* renamed from: ab */
    public static final AbstractC12172af<Integer> f42665ab = AbstractC12172af.m18796a("gads:sai:app_measurement_min_client_dynamite_version", 20290);

    /* renamed from: ac */
    public static final AbstractC12172af<Boolean> f42666ac = AbstractC12172af.m18798a(1, "gads:sai:force_through_reflection", Boolean.TRUE);

    /* renamed from: ad */
    public static final AbstractC12172af<Boolean> f42667ad = AbstractC12172af.m18798a(1, "gads:sai:gmscore_availability_check_disabled", Boolean.FALSE);

    /* renamed from: ae */
    public static final AbstractC12172af<Boolean> f42668ae = AbstractC12172af.m18798a(1, "gads:sai:logging_disabled_for_drx", Boolean.FALSE);

    /* renamed from: af */
    public static final AbstractC12172af<Boolean> f42669af = AbstractC12172af.m18798a(1, "gads:sai:app_measurement_npa_enabled", Boolean.FALSE);

    /* renamed from: ag */
    public static final AbstractC12172af<Boolean> f42670ag = AbstractC12172af.m18798a(1, "gads:idless:idless_disables_attestation", Boolean.TRUE);

    /* renamed from: ah */
    public static final AbstractC12172af<Boolean> f42671ah = AbstractC12172af.m18798a(1, "gads:idless:app_measurement_idless_enabled", Boolean.TRUE);

    /* renamed from: ai */
    public static final AbstractC12172af<Boolean> f42672ai = AbstractC12172af.m18798a(1, "gads:sai:server_side_npa:disable_writing", Boolean.FALSE);

    /* renamed from: aj */
    public static final AbstractC12172af<Boolean> f42673aj = AbstractC12172af.m18798a(1, "gads:sai:server_side_npa:enabled", Boolean.FALSE);

    /* renamed from: ak */
    public static final AbstractC12172af<String> f42674ak = AbstractC12172af.m18794a("gads:sai:server_side_npa:shared_preference_key_list", "{  \"__default__\": [    \"IABTCF_TCString\"  ],  \"mobileads_consent\": [    \"consent_string\"  ]}");

    /* renamed from: al */
    public static final AbstractC12172af<Boolean> f42675al = AbstractC12172af.m18798a(1, "gads:idless:internal_state_enabled", Boolean.TRUE);

    /* renamed from: am */
    public static final AbstractC12172af<Boolean> f42676am = AbstractC12172af.m18798a(1, "gads:idless:idless_disables_offline_ads_signalling", Boolean.TRUE);

    /* renamed from: an */
    public static final AbstractC12172af<String> f42677an = AbstractC12172af.m18794a("gads:idless:cookie_modification", "=; Max-Age=-1; path=/; domain=.doubleclick.net");

    /* renamed from: ao */
    public static final AbstractC12172af<Boolean> f42678ao = AbstractC12172af.m18798a(1, "gads:interstitial:app_must_be_foreground:enabled", Boolean.FALSE);

    /* renamed from: ap */
    public static final AbstractC12172af<Boolean> f42679ap = AbstractC12172af.m18798a(1, "gads:interstitial:foreground_report:enabled", Boolean.FALSE);

    /* renamed from: aq */
    public static final AbstractC12172af<Boolean> f42680aq = AbstractC12172af.m18798a(1, "gads:interstitial:default_immersive", Boolean.FALSE);

    /* renamed from: ar */
    public static final AbstractC12172af<Integer> f42681ar = AbstractC12172af.m18796a("gads:show_interstitial_with_context:min_version", 999999999);

    /* renamed from: as */
    public static final AbstractC12172af<Boolean> f42682as = AbstractC12172af.m18798a(1, "gads:webview:error_web_response:enabled", Boolean.FALSE);

    /* renamed from: at */
    public static final AbstractC12172af<Boolean> f42683at = AbstractC12172af.m18798a(1, "gads:webview:pause_interstitial:enabled", Boolean.TRUE);

    /* renamed from: fo */
    private static final AbstractC12172af<Boolean> f42943fo = AbstractC12172af.m18798a(1, "gads:rsku:webviewgone:kill_process:enabled", Boolean.FALSE);

    /* renamed from: au */
    public static final AbstractC12172af<Boolean> f42684au = AbstractC12172af.m18798a(1, "gads:webviewgone:kill_process:enabled", Boolean.FALSE);

    /* renamed from: fp */
    private static final AbstractC12172af<Boolean> f42944fp = AbstractC12172af.m18798a(1, "gads:rsku:webviewgone:new_onshow:enabled", Boolean.TRUE);

    /* renamed from: av */
    public static final AbstractC12172af<Boolean> f42685av = AbstractC12172af.m18798a(1, "gads:webviewgone:new_onshow:enabled", Boolean.FALSE);

    /* renamed from: aw */
    public static final AbstractC12172af<Boolean> f42686aw = AbstractC12172af.m18798a(1, "gads:webview:pause_resume:enabled", Boolean.TRUE);

    /* renamed from: ax */
    public static final AbstractC12172af<String> f42687ax = AbstractC12172af.m18794a("gads:webview_cookie_url", "googleads.g.doubleclick.net");

    /* renamed from: fq */
    private static final AbstractC12172af<Boolean> f42945fq = AbstractC12172af.m18798a(1, "gads:new_rewarded_ad:enabled", Boolean.TRUE);

    /* renamed from: ay */
    public static final AbstractC12172af<Boolean> f42688ay = AbstractC12172af.m18798a(1, "gads:rewarded:adapter_initialization_enabled", Boolean.FALSE);

    /* renamed from: fr */
    private static final AbstractC12172af<Long> f42946fr = AbstractC12172af.m18795a("gads:rewarded:adapter_timeout_ms", 20000L);

    /* renamed from: az */
    public static final AbstractC12172af<Boolean> f42689az = AbstractC12172af.m18798a(1, "gads:rewarded:ad_metadata_enabled", Boolean.FALSE);

    /* renamed from: aA */
    public static final AbstractC12172af<Boolean> f42638aA = AbstractC12172af.m18798a(1, "gads:rewarded:ssv_custom_data_enabled", Boolean.TRUE);

    /* renamed from: aB */
    public static final AbstractC12172af<Long> f42639aB = AbstractC12172af.m18795a("gads:app_activity_tracker:notify_background_listeners_delay_ms", 500L);

    /* renamed from: aC */
    public static final AbstractC12172af<Long> f42640aC = AbstractC12172af.m18795a("gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5));

    /* renamed from: aD */
    public static final AbstractC12172af<Boolean> f42641aD = AbstractC12172af.m18798a(1, "gads:adid_values_in_adrequest:enabled", Boolean.FALSE);

    /* renamed from: aE */
    public static final AbstractC12172af<Long> f42642aE = AbstractC12172af.m18795a("gads:adid_values_in_adrequest:timeout", 2000L);

    /* renamed from: aF */
    public static final AbstractC12172af<Boolean> f42643aF = AbstractC12172af.m18798a(1, "gads:disable_adid_values_in_ms", Boolean.FALSE);

    /* renamed from: aG */
    public static final AbstractC12172af<Long> f42644aG = AbstractC12172af.m18795a("gads:ad_overlay:delay_page_close_timeout_ms", 5000L);

    /* renamed from: aH */
    public static final AbstractC12172af<Boolean> f42645aH = AbstractC12172af.m18798a(1, "gads:custom_close_blocking:enabled", Boolean.FALSE);

    /* renamed from: aI */
    public static final AbstractC12172af<Boolean> f42646aI = AbstractC12172af.m18798a(1, "gads:disabling_closable_area:enabled", Boolean.FALSE);

    /* renamed from: aJ */
    public static final AbstractC12172af<Boolean> f42647aJ = AbstractC12172af.m18798a(1, "gads:use_system_ui_for_fullscreen:enabled", Boolean.FALSE);

    /* renamed from: aK */
    public static final AbstractC12172af<Boolean> f42648aK = AbstractC12172af.m18798a(1, "gads:ad_overlay:collect_cutout_info:enabled", Boolean.FALSE);

    /* renamed from: fs */
    private static final AbstractC12172af<Boolean> f42947fs = AbstractC12172af.m18798a(1, "gads:impression_optimization_enabled", Boolean.FALSE);

    /* renamed from: ft */
    private static final AbstractC12172af<String> f42948ft = AbstractC12172af.m18794a("gads:banner_ad_pool:schema", "customTargeting");

    /* renamed from: fu */
    private static final AbstractC12172af<Integer> f42949fu = AbstractC12172af.m18796a("gads:banner_ad_pool:max_queues", 3);

    /* renamed from: fv */
    private static final AbstractC12172af<Integer> f42950fv = AbstractC12172af.m18796a("gads:banner_ad_pool:max_pools", 3);

    /* renamed from: aL */
    public static final AbstractC12172af<Boolean> f42649aL = AbstractC12172af.m18798a(1, "gads:delay_banner_renderer:enabled", Boolean.TRUE);

    /* renamed from: fw */
    private static final AbstractC12172af<Boolean> f42951fw = AbstractC12172af.m18798a(1, "gads:interstitial_ad_pool:enabled", Boolean.FALSE);

    /* renamed from: fx */
    private static final AbstractC12172af<Boolean> f42952fx = AbstractC12172af.m18798a(1, "gads:interstitial_ad_pool:enabled_for_rewarded", Boolean.FALSE);

    /* renamed from: fy */
    private static final AbstractC12172af<String> f42953fy = AbstractC12172af.m18794a("gads:interstitial_ad_pool:schema", "customTargeting");

    /* renamed from: fz */
    private static final AbstractC12172af<String> f42954fz = AbstractC12172af.m18794a("gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");

    /* renamed from: fA */
    private static final AbstractC12172af<Integer> f42903fA = AbstractC12172af.m18796a("gads:interstitial_ad_pool:max_pools", 3);

    /* renamed from: fB */
    private static final AbstractC12172af<Integer> f42904fB = AbstractC12172af.m18796a("gads:interstitial_ad_pool:max_pool_depth", 2);

    /* renamed from: fC */
    private static final AbstractC12172af<Integer> f42905fC = AbstractC12172af.m18796a("gads:interstitial_ad_pool:time_limit_sec", 1200);

    /* renamed from: fD */
    private static final AbstractC12172af<String> f42906fD = AbstractC12172af.m18794a("gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");

    /* renamed from: fE */
    private static final AbstractC12172af<Integer> f42907fE = AbstractC12172af.m18796a("gads:interstitial_ad_pool:top_off_latency_min_millis", 0);

    /* renamed from: fF */
    private static final AbstractC12172af<Integer> f42908fF = AbstractC12172af.m18796a("gads:interstitial_ad_pool:top_off_latency_range_millis", 0);

    /* renamed from: fG */
    private static final AbstractC12172af<Long> f42909fG = AbstractC12172af.m18795a("gads:interstitial_ad_pool:discard_thresholds", 0L);

    /* renamed from: fH */
    private static final AbstractC12172af<Long> f42910fH = AbstractC12172af.m18795a("gads:interstitial_ad_pool:miss_thresholds", 0L);

    /* renamed from: fI */
    private static final AbstractC12172af<Float> f42911fI = AbstractC12172af.m18797a("gads:interstitial_ad_pool:discard_asymptote");

    /* renamed from: fJ */
    private static final AbstractC12172af<Float> f42912fJ = AbstractC12172af.m18797a("gads:interstitial_ad_pool:miss_asymptote");

    /* renamed from: aM */
    public static final AbstractC12172af<String> f42650aM = AbstractC12172af.m18794a("gads:spherical_video:vertex_shader", "");

    /* renamed from: aN */
    public static final AbstractC12172af<String> f42651aN = AbstractC12172af.m18794a("gads:spherical_video:fragment_shader", "");

    /* renamed from: aO */
    public static final AbstractC12172af<Boolean> f42652aO = AbstractC12172af.m18798a(1, "gads:include_local_global_rectangles", Boolean.FALSE);

    /* renamed from: aP */
    public static final AbstractC12172af<Long> f42653aP = AbstractC12172af.m18795a("gads:position_watcher:throttle_ms", 200L);

    /* renamed from: aQ */
    public static final AbstractC12172af<Long> f42654aQ = AbstractC12172af.m18795a("gads:position_watcher:scroll_aware_throttle_ms", 33L);

    /* renamed from: aR */
    public static final AbstractC12172af<Boolean> f42655aR = AbstractC12172af.m18798a(1, "gads:position_watcher:enable_scroll_aware_ads", Boolean.FALSE);

    /* renamed from: aS */
    public static final AbstractC12172af<Boolean> f42656aS = AbstractC12172af.m18798a(1, "gads:position_watcher:send_scroll_data", Boolean.FALSE);

    /* renamed from: fK */
    private static final AbstractC12172af<Boolean> f42913fK = AbstractC12172af.m18798a(1, "gads:gen204_signals:enabled", Boolean.FALSE);

    /* renamed from: aT */
    public static final AbstractC12172af<Boolean> f42657aT = AbstractC12172af.m18798a(1, "gads:extra_sdk_versions_for_crash_reports:enabled", Boolean.TRUE);

    /* renamed from: aU */
    public static final AbstractC12172af<String> f42658aU = AbstractC12172af.m18794a("gads:logged_adapter_version_classes", "");

    /* renamed from: aV */
    public static final AbstractC12172af<Long> f42659aV = AbstractC12172af.m18795a("gads:rtb_v1_1:signal_timeout_ms", 1000L);

    /* renamed from: aW */
    public static final AbstractC12172af<Boolean> f42660aW = AbstractC12172af.m18798a(1, "gads:rtb_signal:enabled", Boolean.TRUE);

    /* renamed from: aX */
    public static final AbstractC12172af<Boolean> f42661aX = AbstractC12172af.m18798a(1, "gads:rtb_v1_1:cld:enabled", Boolean.TRUE);

    /* renamed from: aY */
    public static final AbstractC12172af<Boolean> f42662aY = AbstractC12172af.m18798a(1, "gads:rtb_v1_1:cld:check_regex:enabled", Boolean.TRUE);

    /* renamed from: aZ */
    public static final AbstractC12172af<String> f42663aZ = AbstractC12172af.m18794a("gads:rtb_logging:regex", "(?!)");

    /* renamed from: ba */
    public static final AbstractC12172af<Boolean> f42717ba = AbstractC12172af.m18798a(1, "gads:presentation_error:urls_enabled", Boolean.TRUE);

    /* renamed from: bb */
    public static final AbstractC12172af<Boolean> f42718bb = AbstractC12172af.m18798a(1, "gads:rtb_interstitial:use_fullscreen_monitor", Boolean.TRUE);

    /* renamed from: bc */
    public static final AbstractC12172af<Boolean> f42719bc = AbstractC12172af.m18798a(1, "gads:native_required_assets:enabled", Boolean.FALSE);

    /* renamed from: bd */
    public static final AbstractC12172af<Boolean> f42720bd = AbstractC12172af.m18798a(1, "gads:native_required_assets:check_inner_mediaview:enabled", Boolean.TRUE);

    /* renamed from: be */
    public static final AbstractC12172af<Integer> f42721be = AbstractC12172af.m18796a("gads:native_ad_options_rtb:min_version", 999999999);

    /* renamed from: bf */
    public static final AbstractC12172af<Boolean> f42722bf = AbstractC12172af.m18798a(1, "gads:track_view_next_runloop:enabled", Boolean.FALSE);

    /* renamed from: bg */
    public static final AbstractC12172af<Boolean> f42723bg = AbstractC12172af.m18798a(1, "gads:native_required_assets:viewability:enabled", Boolean.FALSE);

    /* renamed from: bh */
    public static final AbstractC12172af<Boolean> f42724bh = AbstractC12172af.m18798a(1, "gads:v1_1:adapter_initialization:enabled", Boolean.TRUE);

    /* renamed from: bi */
    public static final AbstractC12172af<Integer> f42725bi = AbstractC12172af.m18796a("gads:adapter_initialization:min_sdk_version", 15301000);

    /* renamed from: bj */
    public static final AbstractC12172af<Long> f42726bj = AbstractC12172af.m18795a("gads:adapter_initialization:timeout", 30L);

    /* renamed from: bk */
    public static final AbstractC12172af<Long> f42727bk = AbstractC12172af.m18795a("gads:adapter_initialization:cld_timeout", 10L);

    /* renamed from: bl */
    public static final AbstractC12172af<Boolean> f42728bl = AbstractC12172af.m18798a(1, "gads:additional_video_csi:enabled", Boolean.FALSE);

    /* renamed from: bm */
    public static final AbstractC12172af<Boolean> f42729bm = AbstractC12172af.m18798a(1, "gads:csi:enabled_per_sampling", Boolean.FALSE);

    /* renamed from: bn */
    public static final AbstractC12172af<Boolean> f42730bn = AbstractC12172af.m18798a(1, "gads:always_set_transfer_listener:enabled", Boolean.FALSE);

    /* renamed from: bo */
    public static final AbstractC12172af<Boolean> f42731bo = AbstractC12172af.m18798a(1, "gads:initialization_csi:enabled", Boolean.FALSE);

    /* renamed from: fL */
    private static final AbstractC12172af<Boolean> f42914fL = AbstractC12172af.m18798a(1, "gads:initialization_csi_control:enabled", Boolean.FALSE);

    /* renamed from: bp */
    public static final AbstractC12172af<Boolean> f42732bp = AbstractC12172af.m18798a(1, "gads:msa:experiments:enabled", Boolean.FALSE);

    /* renamed from: bq */
    public static final AbstractC12172af<Boolean> f42733bq = AbstractC12172af.m18798a(1, "gads:msa:experiments:ps:enabled", Boolean.FALSE);

    /* renamed from: br */
    public static final AbstractC12172af<Boolean> f42734br = AbstractC12172af.m18798a(1, "gads:msa:experiments:fb:enabled", Boolean.TRUE);

    /* renamed from: bs */
    public static final AbstractC12172af<Boolean> f42735bs = AbstractC12172af.m18798a(1, "gads:msa:experiments:ps:er", Boolean.TRUE);

    /* renamed from: fM */
    private static final AbstractC12172af<Integer> f42915fM = AbstractC12172af.m18796a("gads:gestures:a2:enabled", 0);

    /* renamed from: bt */
    public static final AbstractC12172af<Boolean> f42736bt = AbstractC12172af.m18798a(1, "gads:msa:experiments:a2", Boolean.FALSE);

    /* renamed from: bu */
    public static final AbstractC12172af<Boolean> f42737bu = AbstractC12172af.m18798a(1, "gads:gestures:clearTd:enabled", Boolean.FALSE);

    /* renamed from: bv */
    public static final C12259bz<Boolean> f42738bv = C12283cr.f46412b;

    /* renamed from: bw */
    public static final AbstractC12172af<Boolean> f42739bw = AbstractC12172af.m18798a(1, "gads:gestures:errorlogging:enabled", Boolean.FALSE);

    /* renamed from: bx */
    public static final AbstractC12172af<Long> f42740bx = AbstractC12172af.m18795a("gads:gestures:task_timeout", 2000L);

    /* renamed from: by */
    public static final AbstractC12172af<Boolean> f42741by = AbstractC12172af.m18798a(1, "gads:gestures:asig:enabled", Boolean.FALSE);

    /* renamed from: bz */
    public static final AbstractC12172af<Boolean> f42742bz = AbstractC12172af.m18798a(1, "gads:gestures:ans:enabled", Boolean.FALSE);

    /* renamed from: bA */
    public static final AbstractC12172af<Boolean> f42691bA = AbstractC12172af.m18798a(1, "gads:gestures:tos:enabled", Boolean.FALSE);

    /* renamed from: fN */
    private static final AbstractC12172af<Boolean> f42916fN = AbstractC12172af.m18798a(1, "gads:gestures:brt:enabled", Boolean.TRUE);

    /* renamed from: bB */
    public static final AbstractC12172af<Boolean> f42692bB = AbstractC12172af.m18798a(1, "gads:gestures:fpi:enabled", Boolean.FALSE);

    /* renamed from: bC */
    public static final AbstractC12172af<Boolean> f42693bC = AbstractC12172af.m18798a(1, "gads:signal:app_permissions:disabled", Boolean.FALSE);

    /* renamed from: bD */
    public static final AbstractC12172af<Boolean> f42694bD = AbstractC12172af.m18798a(1, "gads:gestures:hpk:enabled", Boolean.TRUE);

    /* renamed from: bE */
    public static final AbstractC12172af<String> f42695bE = AbstractC12172af.m18794a("gads:gestures:pk", "");

    /* renamed from: bF */
    public static final AbstractC12172af<Boolean> f42696bF = AbstractC12172af.m18798a(1, "gads:gestures:bs:enabled", Boolean.TRUE);

    /* renamed from: bG */
    public static final AbstractC12172af<Boolean> f42697bG = AbstractC12172af.m18798a(1, "gads:gestures:check_initialization_thread:enabled", Boolean.FALSE);

    /* renamed from: bH */
    public static final AbstractC12172af<Boolean> f42698bH = AbstractC12172af.m18798a(1, "gads:gestures:init_new_thread:enabled", Boolean.TRUE);

    /* renamed from: bI */
    public static final AbstractC12172af<Boolean> f42699bI = AbstractC12172af.m18798a(1, "gads:gestures:pds:enabled", Boolean.TRUE);

    /* renamed from: fO */
    private static final AbstractC12172af<Integer> f42917fO = AbstractC12172af.m18796a("gads:gestures:as2percentage", 0);

    /* renamed from: bJ */
    public static final AbstractC12172af<Boolean> f42700bJ = AbstractC12172af.m18798a(1, "gads:gestures:ns:enabled", Boolean.TRUE);

    /* renamed from: bK */
    public static final AbstractC12172af<Boolean> f42701bK = AbstractC12172af.m18798a(1, "gads:gestures:vdd:enabled", Boolean.FALSE);

    /* renamed from: bL */
    public static final AbstractC12172af<Boolean> f42702bL = AbstractC12172af.m18798a(1, "gads:native:asset_view_touch_events", Boolean.FALSE);

    /* renamed from: bM */
    public static final AbstractC12172af<Boolean> f42703bM = AbstractC12172af.m18798a(1, "gads:native:set_touch_listener_on_asset_views", Boolean.TRUE);

    /* renamed from: bN */
    public static final AbstractC12172af<Boolean> f42704bN = AbstractC12172af.m18798a(1, "gads:ais:enabled", Boolean.TRUE);

    /* renamed from: bO */
    public static final AbstractC12172af<Boolean> f42705bO = AbstractC12172af.m18798a(1, "gads:stav:enabled", Boolean.FALSE);

    /* renamed from: bP */
    public static final AbstractC12172af<Boolean> f42706bP = AbstractC12172af.m18798a(1, "gads:send_available_disk_space:enabled", Boolean.FALSE);

    /* renamed from: bQ */
    public static final AbstractC12172af<String> f42707bQ = AbstractC12172af.m18794a("gads:sdk_core_constants:caps", "");

    /* renamed from: fQ */
    private static final AbstractC12172af<Boolean> f42919fQ = AbstractC12172af.m18798a(1, "gads:js_flags:disable_phenotype", Boolean.FALSE);

    /* renamed from: bR */
    public static final AbstractC12172af<String> f42708bR = AbstractC12172af.m18794a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");

    /* renamed from: fR */
    private static final AbstractC12172af<String> f42920fR = AbstractC12172af.m18794a("gads:native:video_url", "//imasdk.googleapis.com/admob/sdkloader/native_video.html");

    /* renamed from: bS */
    public static final AbstractC12172af<String> f42709bS = AbstractC12172af.m18794a("gads:native:video_url_with_protocol", "https://imasdk.googleapis.com/admob/sdkloader/native_video.html");

    /* renamed from: bT */
    public static final AbstractC12172af<Boolean> f42710bT = AbstractC12172af.m18798a(1, "gads:native:get_native_ad_view_signals", Boolean.FALSE);

    /* renamed from: bU */
    public static final AbstractC12172af<Integer> f42711bU = AbstractC12172af.m18796a("gads:native_video_load_timeout", 10);

    /* renamed from: fS */
    private static final AbstractC12172af<Integer> f42921fS = AbstractC12172af.m18796a("gads:omid:native_webview_load_timeout", 2000);

    /* renamed from: bV */
    public static final AbstractC12172af<Boolean> f42712bV = AbstractC12172af.m18798a(1, "gads:omid:native_video_ad_user_action_event:enabled", Boolean.FALSE);

    /* renamed from: bW */
    public static final AbstractC12172af<Boolean> f42713bW = AbstractC12172af.m18798a(1, "gads:enable_native_media_aspect_ratio", Boolean.TRUE);

    /* renamed from: bX */
    public static final AbstractC12172af<Boolean> f42714bX = AbstractC12172af.m18798a(1, "gads:native:media_content_main_image:enabled", Boolean.TRUE);

    /* renamed from: bY */
    public static final AbstractC12172af<String> f42715bY = AbstractC12172af.m18794a("gads:ad_choices_content_description", "Ad Choices Icon");

    /* renamed from: fT */
    private static final AbstractC12172af<Boolean> f42922fT = AbstractC12172af.m18798a(1, "gads:enable_store_active_view_state", Boolean.FALSE);

    /* renamed from: bZ */
    public static final AbstractC12172af<Boolean> f42716bZ = AbstractC12172af.m18798a(1, "gads:enable_singleton_broadcast_receiver", Boolean.FALSE);

    /* renamed from: ca */
    public static final AbstractC12172af<Boolean> f42770ca = AbstractC12172af.m18798a(1, "gads:native:media_view_match_parent:enabled", Boolean.FALSE);

    /* renamed from: cb */
    public static final AbstractC12172af<Boolean> f42771cb = AbstractC12172af.m18798a(1, "gads:native:count_impression_for_assets", Boolean.FALSE);

    /* renamed from: fU */
    private static final AbstractC12172af<Boolean> f42923fU = AbstractC12172af.m18798a(1, "gads:instream_ad:enabled", Boolean.TRUE);

    /* renamed from: cc */
    public static final AbstractC12172af<Boolean> f42772cc = AbstractC12172af.m18798a(1, "gads:fluid_ad:use_wrap_content_height", Boolean.FALSE);

    /* renamed from: fV */
    private static final AbstractC12172af<Boolean> f42924fV = AbstractC12172af.m18798a(1, "gads:auto_location_for_coarse_permission", Boolean.FALSE);

    /* renamed from: fW */
    private static final AbstractC12172af<String> f42925fW = AbstractC12172af.m18793b("gads:auto_location_for_coarse_permission:experiment_id");

    /* renamed from: fX */
    private static final AbstractC12172af<Long> f42926fX = AbstractC12172af.m18795a("gads:auto_location_timeout", 2000L);

    /* renamed from: fY */
    private static final AbstractC12172af<String> f42927fY = AbstractC12172af.m18793b("gads:auto_location_timeout:experiment_id");

    /* renamed from: fZ */
    private static final AbstractC12172af<Long> f42928fZ = AbstractC12172af.m18795a("gads:auto_location_interval", -1L);

    /* renamed from: ga */
    private static final AbstractC12172af<String> f42956ga = AbstractC12172af.m18793b("gads:auto_location_interval:experiment_id");

    /* renamed from: cd */
    public static final AbstractC12172af<Boolean> f42773cd = AbstractC12172af.m18798a(1, "gads:rtb_v1_1:fetch_app_settings_using_cld:enabled", Boolean.TRUE);

    /* renamed from: ce */
    public static final AbstractC12172af<Boolean> f42774ce = AbstractC12172af.m18798a(1, "gads:get_request_signals_cld:enabled", Boolean.TRUE);

    /* renamed from: cf */
    public static final AbstractC12172af<Boolean> f42775cf = AbstractC12172af.m18798a(1, "gads:get_request_signals_common_cld:enabled", Boolean.FALSE);

    /* renamed from: cg */
    public static final AbstractC12172af<Boolean> f42776cg = AbstractC12172af.m18798a(1, "gads:rtb_v1_1:use_manifest_appid_cld:enabled", Boolean.TRUE);

    /* renamed from: ch */
    public static final AbstractC12172af<Long> f42777ch = AbstractC12172af.m18795a("gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000L);

    /* renamed from: ci */
    public static final AbstractC12172af<Long> f42778ci = AbstractC12172af.m18795a("gads:parental_controls:timeout", 2000L);

    /* renamed from: gb */
    private static final AbstractC12172af<Integer> f42957gb = AbstractC12172af.m18796a("gads:cache:ad_request_timeout_millis", 250);

    /* renamed from: gc */
    private static final AbstractC12172af<Integer> f42958gc = AbstractC12172af.m18796a("gads:cache:max_concurrent_downloads", 10);

    /* renamed from: gd */
    private static final AbstractC12172af<Boolean> f42959gd = AbstractC12172af.m18798a(1, "gads:cache:downloader_use_high_priority", Boolean.FALSE);

    /* renamed from: ge */
    private static final AbstractC12172af<Long> f42960ge = AbstractC12172af.m18795a("gads:cache:javascript_timeout_millis", 5000L);

    /* renamed from: cj */
    public static final AbstractC12172af<Boolean> f42779cj = AbstractC12172af.m18798a(1, "gads:cache:bind_on_foreground", Boolean.FALSE);

    /* renamed from: ck */
    public static final AbstractC12172af<Boolean> f42780ck = AbstractC12172af.m18798a(1, "gads:cache:bind_on_init", Boolean.FALSE);

    /* renamed from: cl */
    public static final AbstractC12172af<Boolean> f42781cl = AbstractC12172af.m18798a(1, "gads:cache:bind_on_request", Boolean.FALSE);

    /* renamed from: cm */
    public static final AbstractC12172af<Long> f42782cm = AbstractC12172af.m18795a("gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30));

    /* renamed from: cn */
    public static final AbstractC12172af<Boolean> f42783cn = AbstractC12172af.m18798a(1, "gads:cache:use_cache_data_source", Boolean.FALSE);

    /* renamed from: co */
    public static final AbstractC12172af<Boolean> f42784co = AbstractC12172af.m18798a(1, "gads:cache:connection_per_read", Boolean.FALSE);

    /* renamed from: cp */
    public static final AbstractC12172af<Long> f42785cp = AbstractC12172af.m18795a("gads:cache:connection_timeout", 5000L);

    /* renamed from: cq */
    public static final AbstractC12172af<Long> f42786cq = AbstractC12172af.m18795a("gads:cache:read_only_connection_timeout", 5000L);

    /* renamed from: cr */
    public static final AbstractC12172af<Boolean> f42787cr = AbstractC12172af.m18798a(1, "gads:cache:read_inner_data_source_if_gcache_miss", Boolean.FALSE);

    /* renamed from: cs */
    public static final AbstractC12172af<Boolean> f42788cs = AbstractC12172af.m18798a(1, "gads:cache:read_inner_data_source_if_gcache_not_downloaded", Boolean.FALSE);

    /* renamed from: gf */
    private static final AbstractC12172af<Boolean> f42961gf = AbstractC12172af.m18798a(1, "gads:cache:function_call_timeout_v1:enabled", Boolean.FALSE);

    /* renamed from: gg */
    private static final AbstractC12172af<Long> f42962gg = AbstractC12172af.m18795a("gads:cache:function_call_timeout", 5000L);

    /* renamed from: ct */
    public static final AbstractC12172af<Boolean> f42789ct = AbstractC12172af.m18798a(1, "gads:http_assets_cache:enabled", Boolean.FALSE);

    /* renamed from: cu */
    public static final AbstractC12172af<String> f42790cu = AbstractC12172af.m18794a("gads:http_assets_cache:regex", "(?i)https:\\/\\/(tpc\\.googlesyndication\\.com\\/(.*)|lh\\d+\\.googleusercontent\\.com\\/(.*))");

    /* renamed from: cv */
    public static final AbstractC12172af<Integer> f42791cv = AbstractC12172af.m18796a("gads:http_assets_cache:time_out", 100);

    /* renamed from: cw */
    public static final AbstractC12172af<Boolean> f42792cw = AbstractC12172af.m18798a(1, "gads:chrome_custom_tabs_browser:enabled", Boolean.FALSE);

    /* renamed from: cx */
    public static final AbstractC12172af<Boolean> f42793cx = AbstractC12172af.m18798a(1, "gads:chrome_custom_tabs:disabled", Boolean.FALSE);

    /* renamed from: cy */
    public static final AbstractC12172af<Boolean> f42794cy = AbstractC12172af.m18798a(1, "gads:chrome_custom_tabs_browser_v2:enabled", Boolean.FALSE);

    /* renamed from: cz */
    public static final AbstractC12172af<Boolean> f42795cz = AbstractC12172af.m18798a(1, "gads:cct_v2_connection:enabled", Boolean.FALSE);

    /* renamed from: cA */
    public static final AbstractC12172af<Boolean> f42744cA = AbstractC12172af.m18798a(1, "gads:cct_v2_direct_launch:enabled", Boolean.FALSE);

    /* renamed from: cB */
    public static final AbstractC12172af<Boolean> f42745cB = AbstractC12172af.m18798a(1, "gads:chrome_custom_tabs_for_native_ads:enabled", Boolean.FALSE);

    /* renamed from: cC */
    public static final AbstractC12172af<Long> f42746cC = AbstractC12172af.m18795a("gads:debug_hold_gesture:time_millis", 2000L);

    /* renamed from: cD */
    public static final AbstractC12172af<String> f42747cD = AbstractC12172af.m18794a("gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");

    /* renamed from: cE */
    public static final AbstractC12172af<String> f42748cE = AbstractC12172af.m18794a("gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");

    /* renamed from: cF */
    public static final AbstractC12172af<String> f42749cF = AbstractC12172af.m18794a("gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");

    /* renamed from: cG */
    public static final AbstractC12172af<String> f42750cG = AbstractC12172af.m18794a("gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");

    /* renamed from: cH */
    public static final AbstractC12172af<Integer> f42751cH = AbstractC12172af.m18796a("gads:drx_debug:timeout_ms", 5000);

    /* renamed from: cI */
    public static final AbstractC12172af<Integer> f42752cI = AbstractC12172af.m18796a("gad:pixel_dp_comparision_multiplier", 1);

    /* renamed from: cJ */
    public static final AbstractC12172af<Boolean> f42753cJ = AbstractC12172af.m18798a(1, "gad:interstitial_for_multi_window", Boolean.FALSE);

    /* renamed from: cK */
    public static final AbstractC12172af<Boolean> f42754cK = AbstractC12172af.m18798a(1, "gad:interstitial_ad_stay_active_in_multi_window", Boolean.FALSE);

    /* renamed from: cL */
    public static final AbstractC12172af<Boolean> f42755cL = AbstractC12172af.m18798a(1, "gad:interstitial_multi_window_method", Boolean.FALSE);

    /* renamed from: cM */
    public static final AbstractC12172af<Integer> f42756cM = AbstractC12172af.m18796a("gad:interstitial:close_button_padding_dip", 0);

    /* renamed from: cN */
    public static final AbstractC12172af<Boolean> f42757cN = AbstractC12172af.m18798a(1, "gads:clearcut_logging:enabled", Boolean.FALSE);

    /* renamed from: cO */
    public static final AbstractC12172af<Boolean> f42758cO = AbstractC12172af.m18798a(1, "gads:clearcut_logging:write_to_file", Boolean.FALSE);

    /* renamed from: cP */
    public static final AbstractC12172af<Boolean> f42759cP = AbstractC12172af.m18798a(1, "gad:publisher_testing:force_local_request:enabled", Boolean.TRUE);

    /* renamed from: cQ */
    public static final AbstractC12172af<String> f42760cQ = AbstractC12172af.m18794a("gad:publisher_testing:force_local_request:enabled_list", "");

    /* renamed from: cR */
    public static final AbstractC12172af<String> f42761cR = AbstractC12172af.m18794a("gad:publisher_testing:force_local_request:disabled_list", "");

    /* renamed from: cS */
    public static final AbstractC12172af<Integer> f42762cS = AbstractC12172af.m18796a("gad:http_redirect_max_count:times", 8);

    /* renamed from: cT */
    public static final AbstractC12172af<Boolean> f42763cT = AbstractC12172af.m18798a(1, "gads:omid:enabled", Boolean.TRUE);

    /* renamed from: cU */
    public static final AbstractC12172af<Integer> f42764cU = AbstractC12172af.m18796a("gads:omid:destroy_webview_delay", 1000);

    /* renamed from: gh */
    private static final AbstractC12172af<Boolean> f42963gh = AbstractC12172af.m18798a(1, "gads:omid_1_3_activate:enabled", Boolean.FALSE);

    /* renamed from: cV */
    public static final AbstractC12172af<Boolean> f42765cV = AbstractC12172af.m18798a(1, "gads:omid_1_3_create_html_session:enabled", Boolean.FALSE);

    /* renamed from: cW */
    public static final AbstractC12172af<Boolean> f42766cW = AbstractC12172af.m18798a(1, "gads:omid_1_3_create_js_session:enabled", Boolean.FALSE);

    /* renamed from: gi */
    private static final AbstractC12172af<Boolean> f42964gi = AbstractC12172af.m18798a(1, "gads:omid_1_3_friendly_obstruction:enabled", Boolean.FALSE);

    /* renamed from: cX */
    public static final AbstractC12172af<Boolean> f42767cX = AbstractC12172af.m18798a(1, "gads:omid_1_3_fire_loaded_event:enabled", Boolean.FALSE);

    /* renamed from: gj */
    private static final AbstractC12172af<Boolean> f42965gj = AbstractC12172af.m18798a(1, "gads:nonagon:banner:enabled", Boolean.TRUE);

    /* renamed from: gk */
    private static final AbstractC12172af<String> f42966gk = AbstractC12172af.m18794a("gads:nonagon:banner:ad_unit_exclusions", "(?!)");

    /* renamed from: gl */
    private static final AbstractC12172af<Boolean> f42967gl = AbstractC12172af.m18798a(1, "gads:nonagon:app_open:enabled", Boolean.TRUE);

    /* renamed from: cY */
    public static final AbstractC12172af<Integer> f42768cY = AbstractC12172af.m18796a("gads:app_open_beta:min_version", 999999999);

    /* renamed from: cZ */
    public static final AbstractC12172af<Integer> f42769cZ = AbstractC12172af.m18796a("gads:app_open_ad_open_beta_api:min_version", 202490999);

    /* renamed from: gm */
    private static final AbstractC12172af<String> f42968gm = AbstractC12172af.m18794a("gads:nonagon:app_open:ad_unit_exclusions", "(?!)");

    /* renamed from: gn */
    private static final AbstractC12172af<Boolean> f42969gn = AbstractC12172af.m18798a(1, "gads:nonagon:interstitial:enabled", Boolean.TRUE);

    /* renamed from: go */
    private static final AbstractC12172af<String> f42970go = AbstractC12172af.m18794a("gads:nonagon:interstitial:ad_unit_exclusions", "(?!)");

    /* renamed from: gp */
    private static final AbstractC12172af<Boolean> f42971gp = AbstractC12172af.m18798a(1, "gads:nonagon:rewardedvideo:enabled", Boolean.TRUE);

    /* renamed from: da */
    public static final AbstractC12172af<Boolean> f42823da = AbstractC12172af.m18798a(1, "gads:nonagon:mobile_ads_setting_manager:enabled", Boolean.TRUE);

    /* renamed from: db */
    public static final AbstractC12172af<String> f42824db = AbstractC12172af.m18794a("gads:nonagon:rewardedvideo:ad_unit_exclusions", "(?!)");

    /* renamed from: gq */
    private static final AbstractC12172af<Boolean> f42972gq = AbstractC12172af.m18798a(1, "gads:nonagon:nativead:enabled", Boolean.TRUE);

    /* renamed from: gr */
    private static final AbstractC12172af<String> f42973gr = AbstractC12172af.m18794a("gads:nonagon:nativead:app_name", "(?!)");

    /* renamed from: dc */
    public static final AbstractC12172af<Boolean> f42825dc = AbstractC12172af.m18798a(1, "gads:nonagon:banner:check_dp_size", Boolean.TRUE);

    /* renamed from: dd */
    public static final AbstractC12172af<Boolean> f42826dd = AbstractC12172af.m18798a(1, "gads:nonagon:rewarded:load_multiple_ads", Boolean.TRUE);

    /* renamed from: gs */
    private static final AbstractC12172af<Boolean> f42974gs = AbstractC12172af.m18798a(1, "gads:nonagon:return_last_error_code", Boolean.FALSE);

    /* renamed from: de */
    public static final AbstractC12172af<Boolean> f42827de = AbstractC12172af.m18798a(1, "gads:nonagon:return_no_fill_error_code", Boolean.FALSE);

    /* renamed from: df */
    public static final AbstractC12172af<Boolean> f42828df = AbstractC12172af.m18798a(1, "gads:nonagon:continue_on_no_fill", Boolean.FALSE);

    /* renamed from: gt */
    private static final AbstractC12172af<Boolean> f42975gt = AbstractC12172af.m18798a(1, "gads:nonagon:open_not_loaded_interstitial", Boolean.TRUE);

    /* renamed from: dg */
    public static final AbstractC12172af<Boolean> f42829dg = AbstractC12172af.m18798a(1, "gads:nonagon:separate_timeout:enabled", Boolean.TRUE);

    /* renamed from: dh */
    public static final AbstractC12172af<Integer> f42830dh = AbstractC12172af.m18796a("gads:nonagon:request_timeout:seconds", 60);

    /* renamed from: di */
    public static final AbstractC12172af<Boolean> f42831di = AbstractC12172af.m18798a(1, "gads:nonagon:banner_recursive_renderer", Boolean.FALSE);

    /* renamed from: dj */
    public static final AbstractC12172af<Boolean> f42832dj = AbstractC12172af.m18798a(1, "gads:nonagon:app_stats_lock:enabled", Boolean.FALSE);

    /* renamed from: dk */
    public static final AbstractC12172af<Boolean> f42833dk = AbstractC12172af.m18798a(1, "gads:nonagon:app_stats_main_thread:enabled", Boolean.FALSE);

    /* renamed from: dl */
    public static final AbstractC12172af<Boolean> f42834dl = AbstractC12172af.m18798a(1, "gads:uri_query_to_map_bg_thread:enabled", Boolean.FALSE);

    /* renamed from: dm */
    public static final AbstractC12172af<String> f42835dm = AbstractC12172af.m18794a("gads:uri_query_to_map_bg_thread:types", "/result");

    /* renamed from: dn */
    public static final AbstractC12172af<Integer> f42836dn = AbstractC12172af.m18796a("gads:uri_query_to_map_bg_thread:min_length", 1000);

    /* renamed from: do */
    public static final AbstractC12172af<Boolean> f42837do = AbstractC12172af.m18798a(1, "gads:nonagon:active_view_gmsg_background_thread:enabled", Boolean.TRUE);

    /* renamed from: dp */
    public static final AbstractC12172af<Boolean> f42838dp = AbstractC12172af.m18798a(1, "gads:active_view_gmsg_separate_pool:enabled", Boolean.TRUE);

    /* renamed from: gu */
    private static final AbstractC12172af<Boolean> f42976gu = AbstractC12172af.m18798a(1, "gads:nonagon:service:enabled", Boolean.TRUE);

    /* renamed from: dq */
    public static final AbstractC12172af<Boolean> f42839dq = AbstractC12172af.m18798a(1, "gads:signals:ad_id_info:enabled", Boolean.FALSE);

    /* renamed from: dr */
    public static final AbstractC12172af<Boolean> f42840dr = AbstractC12172af.m18798a(1, "gads:signals:app_index:enabled", Boolean.FALSE);

    /* renamed from: ds */
    public static final AbstractC12172af<Boolean> f42841ds = AbstractC12172af.m18798a(1, "gads:signals:attestation_token:enabled", Boolean.FALSE);

    /* renamed from: dt */
    public static final AbstractC12172af<Boolean> f42842dt = AbstractC12172af.m18798a(1, "gads:signals:cache:enabled", Boolean.FALSE);

    /* renamed from: gv */
    private static final AbstractC12172af<Boolean> f42977gv = AbstractC12172af.m18798a(1, "gads:signals:doritos:enabled", Boolean.FALSE);

    /* renamed from: du */
    public static final AbstractC12172af<Boolean> f42843du = AbstractC12172af.m18798a(1, "gads:signals:doritos:v1:enabled", Boolean.FALSE);

    /* renamed from: gw */
    private static final AbstractC12172af<Boolean> f42978gw = AbstractC12172af.m18798a(1, "gads:signals:doritos:v2:immediate:enabled", Boolean.FALSE);

    /* renamed from: gx */
    private static final AbstractC12172af<Boolean> f42979gx = AbstractC12172af.m18798a(1, "gads:signals:network_prediction:enabled", Boolean.FALSE);

    /* renamed from: dv */
    public static final AbstractC12172af<Boolean> f42844dv = AbstractC12172af.m18798a(1, "gads:signals:parental_control:enabled", Boolean.FALSE);

    /* renamed from: dw */
    public static final AbstractC12172af<Boolean> f42845dw = AbstractC12172af.m18798a(1, "gads:signals:video_decoder:enabled", Boolean.FALSE);

    /* renamed from: dx */
    public static final AbstractC12172af<Boolean> f42846dx = AbstractC12172af.m18798a(1, "gads:signals:app_version_name:enabled", Boolean.FALSE);

    /* renamed from: dy */
    public static final AbstractC12172af<Boolean> f42847dy = AbstractC12172af.m18798a(1, "gads:signals:banner_hardware_acceleration:enabled", Boolean.FALSE);

    /* renamed from: dz */
    public static final AbstractC12172af<Boolean> f42848dz = AbstractC12172af.m18798a(1, "gads:signals:native_hardware_acceleration:enabled", Boolean.FALSE);

    /* renamed from: gy */
    private static final AbstractC12172af<Boolean> f42980gy = AbstractC12172af.m18798a(1, "gads:attestation_token:enabled", Boolean.FALSE);

    /* renamed from: dA */
    public static final AbstractC12172af<Long> f42797dA = AbstractC12172af.m18795a("gads:mobius_linking:sdk_side_cooldown_time_threshold:ms", (long) Constants.HOUR_IN_MILLIS);

    /* renamed from: dB */
    public static final AbstractC12172af<Integer> f42798dB = AbstractC12172af.m18796a("gads:adoverlay:b68684796:targeting_sdk:lower_bound", 27);

    /* renamed from: dC */
    public static final AbstractC12172af<Integer> f42799dC = AbstractC12172af.m18796a("gads:adoverlay:b68684796:targeting_sdk:upper_bound", 26);

    /* renamed from: dD */
    public static final AbstractC12172af<Integer> f42800dD = AbstractC12172af.m18796a("gads:adoverlay:b68684796:sdk_int:lower_bound", 27);

    /* renamed from: dE */
    public static final AbstractC12172af<Integer> f42801dE = AbstractC12172af.m18796a("gads:adoverlay:b68684796:sdk_int:upper_bound", 26);

    /* renamed from: gz */
    private static final C12259bz<Boolean> f42981gz = C12284cs.f46465a;

    /* renamed from: dF */
    public static final AbstractC12172af<Boolean> f42802dF = AbstractC12172af.m18798a(1, "gads:consent:shared_preference_reading:enabled", Boolean.TRUE);

    /* renamed from: dG */
    public static final AbstractC12172af<Boolean> f42803dG = AbstractC12172af.m18798a(1, "gads:consent:iab_consent_info:enabled", Boolean.TRUE);

    /* renamed from: dH */
    public static final AbstractC12172af<Boolean> f42804dH = AbstractC12172af.m18798a(1, "gads:fc_consent:shared_preference_reading:enabled", Boolean.TRUE);

    /* renamed from: dI */
    public static final AbstractC12172af<String> f42805dI = AbstractC12172af.m18794a("gads:sp:json_string", "");

    /* renamed from: dJ */
    public static final AbstractC12172af<Boolean> f42806dJ = AbstractC12172af.m18798a(1, "gads:nativeads:image:sample:enabled", Boolean.TRUE);

    /* renamed from: dK */
    public static final AbstractC12172af<Integer> f42807dK = AbstractC12172af.m18796a("gads:nativeads:image:sample:pixels", 1048576);

    /* renamed from: dL */
    public static final AbstractC12172af<Boolean> f42808dL = AbstractC12172af.m18798a(1, "gads:nativeads:pub_image_scale_type:enabled", Boolean.TRUE);

    /* renamed from: dM */
    public static final AbstractC12172af<Boolean> f42809dM = AbstractC12172af.m18798a(1, "gads:offline_signaling:enabled", Boolean.FALSE);

    /* renamed from: dN */
    public static final AbstractC12172af<Integer> f42810dN = AbstractC12172af.m18796a("gads:offline_signaling:log_maximum", 100);

    /* renamed from: dO */
    public static final AbstractC12172af<Boolean> f42811dO = AbstractC12172af.m18798a(1, "gads:nativeads:template_signal:enabled", Boolean.TRUE);

    /* renamed from: dP */
    public static final AbstractC12172af<Boolean> f42812dP = AbstractC12172af.m18798a(1, "gads:nativeads:media_content_aspect_ratio:enabled", Boolean.TRUE);

    /* renamed from: dQ */
    public static final AbstractC12172af<Boolean> f42813dQ = AbstractC12172af.m18798a(1, "gads:nativeads:media_content_metadata:enabled", Boolean.TRUE);

    /* renamed from: dR */
    public static final AbstractC12172af<Boolean> f42814dR = AbstractC12172af.m18798a(1, "gads:precache_pool:verbose_logging", Boolean.FALSE);

    /* renamed from: dS */
    public static final AbstractC12172af<Integer> f42815dS = AbstractC12172af.m18796a("gads:rewarded_precache_pool:count", 0);

    /* renamed from: dT */
    public static final AbstractC12172af<Integer> f42816dT = AbstractC12172af.m18796a("gads:interstitial_precache_pool:count", 0);

    /* renamed from: dU */
    public static final AbstractC12172af<String> f42817dU = AbstractC12172af.m18794a("gads:rewarded_precache_pool:discard_strategy", "lru");

    /* renamed from: dV */
    public static final AbstractC12172af<String> f42818dV = AbstractC12172af.m18794a("gads:interstitial_precache_pool:discard_strategy", "lru");

    /* renamed from: dW */
    public static final AbstractC12172af<String> f42819dW = AbstractC12172af.m18794a("gads:rewarded_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: dX */
    public static final AbstractC12172af<String> f42820dX = AbstractC12172af.m18794a("gads:interstitial_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: dY */
    public static final AbstractC12172af<Integer> f42821dY = AbstractC12172af.m18796a("gads:rewarded_precache_pool:size", 1);

    /* renamed from: dZ */
    public static final AbstractC12172af<Integer> f42822dZ = AbstractC12172af.m18796a("gads:interstitial_precache_pool:size", 1);

    /* renamed from: ea */
    public static final AbstractC12172af<Integer> f42876ea = AbstractC12172af.m18796a("gads:rewarded_precache_pool:ad_time_limit", 1200);

    /* renamed from: eb */
    public static final AbstractC12172af<Integer> f42877eb = AbstractC12172af.m18796a("gads:interstitial_precache_pool:ad_time_limit", 1200);

    /* renamed from: ec */
    public static final AbstractC12172af<String> f42878ec = AbstractC12172af.m18794a("gads:rewarded_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: ed */
    public static final AbstractC12172af<String> f42879ed = AbstractC12172af.m18794a("gads:interstitial_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: ee */
    public static final AbstractC12172af<String> f42880ee = AbstractC12172af.m18794a("gads:app_open_precache_pool:schema", "orientation,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: ef */
    public static final AbstractC12172af<String> f42881ef = AbstractC12172af.m18794a("gads:app_open_precache_pool:discard_strategy", "oldest");

    /* renamed from: eg */
    public static final AbstractC12172af<Integer> f42882eg = AbstractC12172af.m18796a("gads:app_open_precache_pool:count", 0);

    /* renamed from: eh */
    public static final AbstractC12172af<String> f42883eh = AbstractC12172af.m18794a("gads:app_open_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: ei */
    public static final AbstractC12172af<Integer> f42884ei = AbstractC12172af.m18796a("gads:app_open_precache_pool:size", 1);

    /* renamed from: ej */
    public static final AbstractC12172af<Integer> f42885ej = AbstractC12172af.m18796a("gads:app_open_precache_pool:ad_time_limit", 14400);

    /* renamed from: ek */
    public static final AbstractC12172af<Boolean> f42886ek = AbstractC12172af.m18798a(1, "gads:memory_leak:b129558083", Boolean.FALSE);

    /* renamed from: el */
    public static final AbstractC12172af<Boolean> f42887el = AbstractC12172af.m18798a(1, "gads:unhandled_event_reporting:enabled", Boolean.FALSE);

    /* renamed from: em */
    public static final AbstractC12172af<Boolean> f42888em = AbstractC12172af.m18798a(1, "gads:response_info:enabled", Boolean.TRUE);

    /* renamed from: en */
    public static final AbstractC12172af<Boolean> f42889en = AbstractC12172af.m18798a(1, "gads:csi:interstitial_failed_to_show:enabled", Boolean.FALSE);

    /* renamed from: eo */
    public static final AbstractC12172af<Boolean> f42890eo = AbstractC12172af.m18798a(1, "gads:csi:mediation_failure:enabled", Boolean.FALSE);

    /* renamed from: ep */
    public static final AbstractC12172af<String> f42891ep = AbstractC12172af.m18794a("gads:csi:error_parsing:regex", "^(\\d+)");

    /* renamed from: eq */
    public static final AbstractC12172af<Boolean> f42892eq = AbstractC12172af.m18798a(1, "gads:csi:eids_from_cld:enabled", Boolean.FALSE);

    /* renamed from: er */
    public static final AbstractC12172af<Boolean> f42893er = AbstractC12172af.m18798a(1, "gads:request_id_check:enabled", Boolean.FALSE);

    /* renamed from: es */
    public static final AbstractC12172af<Boolean> f42894es = AbstractC12172af.m18798a(1, "gads:request_id_int32:enabled", Boolean.TRUE);

    /* renamed from: et */
    public static final AbstractC12172af<Boolean> f42895et = AbstractC12172af.m18798a(1, "gads:signal_collection_without_rendering:enabled", Boolean.TRUE);

    /* renamed from: eu */
    public static final AbstractC12172af<Integer> f42896eu = AbstractC12172af.m18796a("gads:native_ads_signal:timeout", 1000);

    /* renamed from: ev */
    public static final AbstractC12172af<Integer> f42897ev = AbstractC12172af.m18796a("gads:signal_v2:min_version", 19677000);

    /* renamed from: ew */
    public static final AbstractC12172af<Boolean> f42898ew = AbstractC12172af.m18798a(2, "DISABLE_CRASH_REPORTING", Boolean.FALSE);

    /* renamed from: ex */
    public static final AbstractC12172af<Boolean> f42899ex = AbstractC12172af.m18798a(1, "gads:paid_event_listener:enabled", Boolean.FALSE);

    /* renamed from: ey */
    public static final AbstractC12172af<Boolean> f42900ey = AbstractC12172af.m18798a(1, "gads:interscroller_ad:enabled", Boolean.TRUE);

    /* renamed from: ez */
    public static final AbstractC12172af<Boolean> f42901ez = AbstractC12172af.m18798a(1, "gads:interscroller_ad:refresh:enabled", Boolean.FALSE);

    /* renamed from: eA */
    public static final AbstractC12172af<Integer> f42850eA = AbstractC12172af.m18796a("gads:interscroller:min_width", (int) VastError.ERROR_CODE_GENERAL_WRAPPER);

    /* renamed from: eB */
    public static final AbstractC12172af<Integer> f42851eB = AbstractC12172af.m18796a("gads:interscroller:min_height", 250);

    /* renamed from: eC */
    public static final AbstractC12172af<Boolean> f42852eC = AbstractC12172af.m18798a(1, "gads:is_in_scroll_view_new_api:enabled", Boolean.TRUE);

    /* renamed from: eD */
    public static final AbstractC12172af<Boolean> f42853eD = AbstractC12172af.m18798a(1, "gads:policy_validator_for_all_pubs:enabled", Boolean.FALSE);

    /* renamed from: eE */
    public static final AbstractC12172af<String> f42854eE = AbstractC12172af.m18794a("gad:publisher_testing:policy_validator:enabled_list", "");

    /* renamed from: eF */
    public static final AbstractC12172af<Integer> f42855eF = AbstractC12172af.m18796a("gads:policy_validator_layoutparam:flags", 808);

    /* renamed from: eG */
    public static final AbstractC12172af<Boolean> f42856eG = AbstractC12172af.m18798a(2, "NATIVE_AD_DEBUGGER_ENABLED", Boolean.TRUE);

    /* renamed from: eH */
    public static final AbstractC12172af<Integer> f42857eH = AbstractC12172af.m18796a("gads:policy_validator_overlay_width:dp", 350);

    /* renamed from: eI */
    public static final AbstractC12172af<Integer> f42858eI = AbstractC12172af.m18796a("gads:policy_validator_overlay_height:dp", (int) TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);

    /* renamed from: eJ */
    public static final AbstractC12172af<Boolean> f42859eJ = AbstractC12172af.m18798a(1, "gads:use_wide_viewport:enabled", Boolean.FALSE);

    /* renamed from: eK */
    public static final AbstractC12172af<Boolean> f42860eK = AbstractC12172af.m18798a(1, "gads:load_with_overview_mode:enabled", Boolean.FALSE);

    /* renamed from: eL */
    public static final AbstractC12172af<Boolean> f42861eL = AbstractC12172af.m18798a(1, "gads:wire_banner_listener_after_request:enabled", Boolean.FALSE);

    /* renamed from: eM */
    public static final AbstractC12172af<Boolean> f42862eM = AbstractC12172af.m18798a(1, "gads:wire_app_open_listener_after_request:enabled", Boolean.FALSE);

    /* renamed from: eN */
    public static final AbstractC12172af<Boolean> f42863eN = AbstractC12172af.m18798a(1, "gads:wire_interstitial_listener_after_request:enabled", Boolean.FALSE);

    /* renamed from: eO */
    public static final AbstractC12172af<String> f42864eO = AbstractC12172af.m18794a("gads:server_transaction_source:list", "Network");

    /* renamed from: eP */
    public static final AbstractC12172af<Boolean> f42865eP = AbstractC12172af.m18798a(1, "gads:can_open_app_and_open_app_action:enabled", Boolean.FALSE);

    /* renamed from: eQ */
    public static final AbstractC12172af<Boolean> f42866eQ = AbstractC12172af.m18798a(1, "gads:open_gmsg:set_uri_data_and_type:enabled", Boolean.FALSE);

    /* renamed from: eR */
    public static final AbstractC12172af<Integer> f42867eR = AbstractC12172af.m18796a("gads:ad_error_api:min_version", 202006000);

    /* renamed from: eS */
    public static final AbstractC12172af<Boolean> f42868eS = AbstractC12172af.m18798a(1, "gads:forward_bow_error_string:enabled", Boolean.TRUE);

    /* renamed from: eT */
    public static final AbstractC12172af<Boolean> f42869eT = AbstractC12172af.m18798a(1, "gads:continue_on_process_response:enabled", Boolean.FALSE);

    /* renamed from: eU */
    public static final AbstractC12172af<Boolean> f42870eU = AbstractC12172af.m18798a(1, "gads:mediation_status_reporting:enabled", Boolean.TRUE);

    /* renamed from: eV */
    public static final AbstractC12172af<Integer> f42871eV = AbstractC12172af.m18796a("gads:mediation_no_fill_error:min_version", 999999999);

    /* renamed from: eW */
    public static final AbstractC12172af<Integer> f42872eW = AbstractC12172af.m18796a("gads:offline_database_version:version", 1);

    /* renamed from: eX */
    public static final AbstractC12172af<Boolean> f42873eX = AbstractC12172af.m18798a(1, "gads:offline_ads_notification:enabled", Boolean.TRUE);

    /* renamed from: eY */
    public static final AbstractC12172af<Boolean> f42874eY = AbstractC12172af.m18798a(1, "gads:handle_click_recorded_event:enabled", Boolean.FALSE);

    /* renamed from: eZ */
    public static final AbstractC12172af<Boolean> f42875eZ = AbstractC12172af.m18798a(1, "gads:default_network_type_fine_to_unknown:enabled", Boolean.TRUE);

    /* renamed from: fa */
    public static final AbstractC12172af<Boolean> f42929fa = AbstractC12172af.m18798a(1, "gads:handle_intent_async:enabled", Boolean.FALSE);

    /* renamed from: fb */
    public static final AbstractC12172af<Boolean> f42930fb = AbstractC12172af.m18798a(1, "gads:skip_deep_link_validation_native_ads:enabled", Boolean.FALSE);

    /* renamed from: fc */
    public static final AbstractC12172af<Boolean> f42931fc = AbstractC12172af.m18798a(1, "gads:try_deep_link_fallback_native_ads:enabled", Boolean.FALSE);

    /* renamed from: fd */
    public static final AbstractC12172af<Boolean> f42932fd = AbstractC12172af.m18798a(1, "gads:in_app_link_handling_for_android_11_enabled:enabled", Boolean.FALSE);

    /* renamed from: fe */
    public static final AbstractC12172af<Boolean> f42933fe = AbstractC12172af.m18798a(1, "gads:new_remote_logging_utils:enabled", Boolean.FALSE);

    /* renamed from: ff */
    public static final AbstractC12172af<Boolean> f42934ff = AbstractC12172af.m18798a(1, "gads:remote_logging:enabled", Boolean.FALSE);

    /* renamed from: fg */
    public static final AbstractC12172af<Integer> f42935fg = AbstractC12172af.m18796a("gads:remote_log_send_rate_ms", 60000);

    /* renamed from: fh */
    public static final AbstractC12172af<Integer> f42936fh = AbstractC12172af.m18796a("gads:remote_log_queue_max_entries", 500);

    /* renamed from: fi */
    public static final AbstractC12172af<Integer> f42937fi = AbstractC12172af.m18796a("gads:app_event_queue_size", 20);

    /* renamed from: fj */
    public static final AbstractC12172af<Boolean> f42938fj = AbstractC12172af.m18798a(1, "gads:hide_grey_title_bar:enabled", Boolean.FALSE);

    /* renamed from: fk */
    public static final AbstractC12172af<Boolean> f42939fk = AbstractC12172af.m18798a(1, "gads:interstitial_ad_parameter_handler:enabled", Boolean.FALSE);

    static {
        AbstractC12172af<String> m18794a = AbstractC12172af.m18794a("gads:sdk_core_constants:experiment_id", (String) null);
        ekb.m14832d().f42339b.add(m18794a);
        f42918fP = m18794a;
    }

    /* renamed from: a */
    public static List<String> m18475a() {
        return ekb.m14832d().m18598a();
    }

    /* renamed from: a */
    public static void m18474a(Context context) {
        zzbr.zza(new cyn(context) { // from class: com.google.android.gms.internal.ads.at

            /* renamed from: a */
            private final Context f43145a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43145a = context;
            }

            @Override // com.google.android.gms.internal.ads.cyn
            /* renamed from: a */
            public final Object mo17050a() {
                return C12187aq.m18471b(this.f43145a);
            }
        });
    }

    /* renamed from: a */
    public static void m18473a(Context context, JSONObject jSONObject) {
        ekb.m14833c();
        SharedPreferences.Editor edit = context.getSharedPreferences("google_ads_flags", 0).edit();
        new C12179ak(ekb.m14832d(), edit, jSONObject);
        C12271cg.m17474a();
        ekb.m14832d().m18597a(edit, jSONObject);
        ekb.m14833c();
        edit.commit();
    }

    /* renamed from: b */
    public static final /* synthetic */ Object m18471b(Context context) {
        SharedPreferences$OnSharedPreferenceChangeListenerC12181am m14831e = ekb.m14831e();
        if (!m14831e.f42403c) {
            synchronized (m14831e.f42401a) {
                if (m14831e.f42403c) {
                    return null;
                }
                if (!m14831e.f42404d) {
                    m14831e.f42404d = true;
                }
                m14831e.f42407g = context.getApplicationContext() == null ? context : context.getApplicationContext();
                try {
                    m14831e.f42406f = C11946c.m19258a(m14831e.f42407g).m19262a(m14831e.f42407g.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException | NullPointerException e) {
                }
                Context remoteContext = C11943d.getRemoteContext(context);
                Context context2 = remoteContext;
                if (remoteContext == null) {
                    context2 = remoteContext;
                    if (context != null) {
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        context2 = context;
                    }
                }
                if (context2 == null) {
                    m14831e.f42404d = false;
                    m14831e.f42402b.open();
                    return null;
                }
                ekb.m14833c();
                m14831e.f42405e = context2.getSharedPreferences("google_ads_flags", 0);
                if (m14831e.f42405e != null) {
                    m14831e.f42405e.registerOnSharedPreferenceChangeListener(m14831e);
                }
                C12320dc.m16887a(new C12189ar(m14831e));
                m14831e.m18572a();
                m14831e.f42403c = true;
                m14831e.f42404d = false;
                m14831e.f42402b.open();
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static List<String> m18472b() {
        C12180al m14832d = ekb.m14832d();
        List<String> m18598a = m14832d.m18598a();
        for (AbstractC12172af<String> abstractC12172af : m14832d.f42340c) {
            String str = (String) ekb.m14831e().m18571a(abstractC12172af);
            if (!TextUtils.isEmpty(str)) {
                m18598a.add(str);
            }
        }
        ArrayList arrayList = new ArrayList();
        C12198av.m18385a(arrayList, C12290cw.f46655a);
        m18598a.addAll(arrayList);
        return m18598a;
    }
}
