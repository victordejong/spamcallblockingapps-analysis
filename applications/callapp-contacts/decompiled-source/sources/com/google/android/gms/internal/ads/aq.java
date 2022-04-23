package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.d;
import com.google.android.gms.common.d.c;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aq.class */
public final class aq {
    private static final af<String> fP;

    /* renamed from: a  reason: collision with root package name */
    public static final af<String> f23740a = af.a("gads:sdk_core_location:client:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");
    private static final af<String> fl = af.a("gads:active_view_location:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");
    private static final bz<Boolean> fm = cq.f26248c;
    private static final af<Integer> fn = af.a("gads:http_url_connection_factory:timeout_millis", 10000);

    /* renamed from: b  reason: collision with root package name */
    public static final af<String> f23741b = af.a("gads:video_exo_player:version", "3");

    /* renamed from: c  reason: collision with root package name */
    public static final af<Integer> f23742c = af.a("gads:video_exo_player:connect_timeout", 8000);

    /* renamed from: d  reason: collision with root package name */
    public static final af<Integer> f23743d = af.a("gads:video_exo_player:read_timeout", 8000);
    public static final af<Integer> e = af.a("gads:video_exo_player:loading_check_interval", 1048576);
    public static final af<Integer> f = af.a("gads:video_exo_player:exo_player_precache_limit", Integer.MAX_VALUE);
    public static final af<Integer> g = af.a("gads:video_exo_player:byte_buffer_precache_limit", Integer.MAX_VALUE);
    public static final af<Integer> h = af.a("gads:video_exo_player_socket_receive_buffer_size", 0);
    public static final af<String> i = af.a("gads:video_exo_player:precache_exceptions", "");
    public static final af<Integer> j = af.a("gads:video_exo_player:min_retry_count", -1);
    public static final af<Boolean> k = af.a(1, "gads:video_exo_player:fmp4_extractor_enabled", Boolean.TRUE);
    public static final af<Boolean> l = af.a(1, "gads:video_exo_player:use_play_back_info_for_should_start_play_back", Boolean.FALSE);
    public static final af<Boolean> m = af.a(1, "gads:video_exo_player:treat_load_exception_as_non_fatal", Boolean.FALSE);
    public static final af<Integer> n = af.a("gads:video_stream_cache:limit_count", 5);
    public static final af<Integer> o = af.a("gads:video_stream_cache:limit_space", 8388608);
    public static final af<Integer> p = af.a("gads:video_stream_exo_cache:buffer_size", 8388608);
    public static final af<Long> q = af.a("gads:video_stream_cache:limit_time_sec", 300L);
    public static final af<Long> r = af.a("gads:video_stream_cache:notify_interval_millis", 125L);
    public static final af<Integer> s = af.a("gads:video_stream_cache:connect_timeout_millis", 10000);
    public static final af<String> t = af.a("gads:video:metric_frame_hash_times", "");
    public static final af<Long> u = af.a("gads:video:metric_frame_hash_time_leniency", 500L);
    public static final af<Boolean> v = af.a(1, "gads:video:force_watermark", Boolean.FALSE);
    public static final af<Long> w = af.a("gads:video:surface_update_min_spacing_ms", 1000L);
    public static final af<Boolean> x = af.a(1, "gads:video:spinner:enabled", Boolean.FALSE);
    public static final af<Integer> y = af.a("gads:video:spinner:scale", 4);
    public static final af<Long> z = af.a("gads:video:spinner:jank_threshold_ms", 50L);
    public static final af<Boolean> A = af.a(1, "gads:video:aggressive_media_codec_release", Boolean.FALSE);
    public static final af<Boolean> B = af.a(1, "gads:memory_bundle:debug_info", Boolean.FALSE);
    public static final af<String> C = af.a("gads:video:codec_query_mime_types", "");
    public static final af<Integer> D = af.a("gads:video:codec_query_minimum_version", 16);
    public static final af<Boolean> E = af.a(1, "gads:video:set_black_background", Boolean.FALSE);
    public static final af<String> F = af.a("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js");
    public static final af<String> G = af.a("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js");
    public static final af<String> H = af.a("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js");
    public static final af<String> I = af.a("gad:mraid:version", "3.0");
    public static final af<Boolean> J = af.a(1, "gads:mraid:expanded_interstitial_fix", Boolean.FALSE);
    public static final af<Boolean> K = af.a(1, "gads:mraid:initial_size_fallback", Boolean.FALSE);
    public static final af<Integer> L = af.a("gads:content_vertical_fingerprint_number", 100);
    public static final af<Integer> M = af.a("gads:content_vertical_fingerprint_bits", 23);
    public static final af<Integer> N = af.a("gads:content_vertical_fingerprint_ngram", 3);
    public static final af<String> O = af.a("gads:content_fetch_view_tag_id", "googlebot");
    public static final af<String> P = af.a("gads:content_fetch_exclude_view_tag", "none");
    public static final af<Boolean> Q = af.a(1, "gads:content_fetch_disable_get_title_from_webview", Boolean.FALSE);
    public static final af<Boolean> R = af.a(1, "gads:content_fetch_enable_new_content_score", Boolean.FALSE);
    public static final af<Boolean> S = af.a(1, "gads:content_fetch_enable_serve_once", Boolean.FALSE);
    public static final af<Boolean> T = af.a(1, "gads:sai:enabled", Boolean.TRUE);
    public static final af<String> U = af.a("gads:sai:click_ping_schema_v2", "^[^?]*(/aclk\\?|/pcs/click\\?).*");
    public static final af<String> V = af.a("gads:sai:impression_ping_schema_v2", "^[^?]*(/adview|/pcs/view).*");
    public static final af<Boolean> W = af.a(1, "gads:sai:using_macro:enabled", Boolean.FALSE);
    public static final af<String> X = af.a("gads:sai:ad_event_id_macro_name", "[gw_fbsaeid]");
    public static final af<Long> Y = af.a("gads:sai:timeout_ms", -1L);
    public static final af<Integer> Z = af.a("gads:sai:scion_thread_pool_size", 5);
    public static final af<Boolean> aa = af.a(1, "gads:sai:app_measurement_enabled3", Boolean.FALSE);
    public static final af<Integer> ab = af.a("gads:sai:app_measurement_min_client_dynamite_version", 20290);
    public static final af<Boolean> ac = af.a(1, "gads:sai:force_through_reflection", Boolean.TRUE);
    public static final af<Boolean> ad = af.a(1, "gads:sai:gmscore_availability_check_disabled", Boolean.FALSE);
    public static final af<Boolean> ae = af.a(1, "gads:sai:logging_disabled_for_drx", Boolean.FALSE);
    public static final af<Boolean> af = af.a(1, "gads:sai:app_measurement_npa_enabled", Boolean.FALSE);
    public static final af<Boolean> ag = af.a(1, "gads:idless:idless_disables_attestation", Boolean.TRUE);
    public static final af<Boolean> ah = af.a(1, "gads:idless:app_measurement_idless_enabled", Boolean.TRUE);
    public static final af<Boolean> ai = af.a(1, "gads:sai:server_side_npa:disable_writing", Boolean.FALSE);
    public static final af<Boolean> aj = af.a(1, "gads:sai:server_side_npa:enabled", Boolean.FALSE);
    public static final af<String> ak = af.a("gads:sai:server_side_npa:shared_preference_key_list", "{  \"__default__\": [    \"IABTCF_TCString\"  ],  \"mobileads_consent\": [    \"consent_string\"  ]}");
    public static final af<Boolean> al = af.a(1, "gads:idless:internal_state_enabled", Boolean.TRUE);
    public static final af<Boolean> am = af.a(1, "gads:idless:idless_disables_offline_ads_signalling", Boolean.TRUE);
    public static final af<String> an = af.a("gads:idless:cookie_modification", "=; Max-Age=-1; path=/; domain=.doubleclick.net");
    public static final af<Boolean> ao = af.a(1, "gads:interstitial:app_must_be_foreground:enabled", Boolean.FALSE);
    public static final af<Boolean> ap = af.a(1, "gads:interstitial:foreground_report:enabled", Boolean.FALSE);
    public static final af<Boolean> aq = af.a(1, "gads:interstitial:default_immersive", Boolean.FALSE);
    public static final af<Integer> ar = af.a("gads:show_interstitial_with_context:min_version", 999999999);
    public static final af<Boolean> as = af.a(1, "gads:webview:error_web_response:enabled", Boolean.FALSE);
    public static final af<Boolean> at = af.a(1, "gads:webview:pause_interstitial:enabled", Boolean.TRUE);
    private static final af<Boolean> fo = af.a(1, "gads:rsku:webviewgone:kill_process:enabled", Boolean.FALSE);
    public static final af<Boolean> au = af.a(1, "gads:webviewgone:kill_process:enabled", Boolean.FALSE);
    private static final af<Boolean> fp = af.a(1, "gads:rsku:webviewgone:new_onshow:enabled", Boolean.TRUE);
    public static final af<Boolean> av = af.a(1, "gads:webviewgone:new_onshow:enabled", Boolean.FALSE);
    public static final af<Boolean> aw = af.a(1, "gads:webview:pause_resume:enabled", Boolean.TRUE);
    public static final af<String> ax = af.a("gads:webview_cookie_url", "googleads.g.doubleclick.net");
    private static final af<Boolean> fq = af.a(1, "gads:new_rewarded_ad:enabled", Boolean.TRUE);
    public static final af<Boolean> ay = af.a(1, "gads:rewarded:adapter_initialization_enabled", Boolean.FALSE);
    private static final af<Long> fr = af.a("gads:rewarded:adapter_timeout_ms", 20000L);
    public static final af<Boolean> az = af.a(1, "gads:rewarded:ad_metadata_enabled", Boolean.FALSE);
    public static final af<Boolean> aA = af.a(1, "gads:rewarded:ssv_custom_data_enabled", Boolean.TRUE);
    public static final af<Long> aB = af.a("gads:app_activity_tracker:notify_background_listeners_delay_ms", 500L);
    public static final af<Long> aC = af.a("gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5));
    public static final af<Boolean> aD = af.a(1, "gads:adid_values_in_adrequest:enabled", Boolean.FALSE);
    public static final af<Long> aE = af.a("gads:adid_values_in_adrequest:timeout", 2000L);
    public static final af<Boolean> aF = af.a(1, "gads:disable_adid_values_in_ms", Boolean.FALSE);
    public static final af<Long> aG = af.a("gads:ad_overlay:delay_page_close_timeout_ms", 5000L);
    public static final af<Boolean> aH = af.a(1, "gads:custom_close_blocking:enabled", Boolean.FALSE);
    public static final af<Boolean> aI = af.a(1, "gads:disabling_closable_area:enabled", Boolean.FALSE);
    public static final af<Boolean> aJ = af.a(1, "gads:use_system_ui_for_fullscreen:enabled", Boolean.FALSE);
    public static final af<Boolean> aK = af.a(1, "gads:ad_overlay:collect_cutout_info:enabled", Boolean.FALSE);
    private static final af<Boolean> fs = af.a(1, "gads:impression_optimization_enabled", Boolean.FALSE);
    private static final af<String> ft = af.a("gads:banner_ad_pool:schema", "customTargeting");
    private static final af<Integer> fu = af.a("gads:banner_ad_pool:max_queues", 3);
    private static final af<Integer> fv = af.a("gads:banner_ad_pool:max_pools", 3);
    public static final af<Boolean> aL = af.a(1, "gads:delay_banner_renderer:enabled", Boolean.TRUE);
    private static final af<Boolean> fw = af.a(1, "gads:interstitial_ad_pool:enabled", Boolean.FALSE);
    private static final af<Boolean> fx = af.a(1, "gads:interstitial_ad_pool:enabled_for_rewarded", Boolean.FALSE);
    private static final af<String> fy = af.a("gads:interstitial_ad_pool:schema", "customTargeting");
    private static final af<String> fz = af.a("gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");
    private static final af<Integer> fA = af.a("gads:interstitial_ad_pool:max_pools", 3);
    private static final af<Integer> fB = af.a("gads:interstitial_ad_pool:max_pool_depth", 2);
    private static final af<Integer> fC = af.a("gads:interstitial_ad_pool:time_limit_sec", 1200);
    private static final af<String> fD = af.a("gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");
    private static final af<Integer> fE = af.a("gads:interstitial_ad_pool:top_off_latency_min_millis", 0);
    private static final af<Integer> fF = af.a("gads:interstitial_ad_pool:top_off_latency_range_millis", 0);
    private static final af<Long> fG = af.a("gads:interstitial_ad_pool:discard_thresholds", 0L);
    private static final af<Long> fH = af.a("gads:interstitial_ad_pool:miss_thresholds", 0L);
    private static final af<Float> fI = af.a("gads:interstitial_ad_pool:discard_asymptote");
    private static final af<Float> fJ = af.a("gads:interstitial_ad_pool:miss_asymptote");
    public static final af<String> aM = af.a("gads:spherical_video:vertex_shader", "");
    public static final af<String> aN = af.a("gads:spherical_video:fragment_shader", "");
    public static final af<Boolean> aO = af.a(1, "gads:include_local_global_rectangles", Boolean.FALSE);
    public static final af<Long> aP = af.a("gads:position_watcher:throttle_ms", 200L);
    public static final af<Long> aQ = af.a("gads:position_watcher:scroll_aware_throttle_ms", 33L);
    public static final af<Boolean> aR = af.a(1, "gads:position_watcher:enable_scroll_aware_ads", Boolean.FALSE);
    public static final af<Boolean> aS = af.a(1, "gads:position_watcher:send_scroll_data", Boolean.FALSE);
    private static final af<Boolean> fK = af.a(1, "gads:gen204_signals:enabled", Boolean.FALSE);
    public static final af<Boolean> aT = af.a(1, "gads:extra_sdk_versions_for_crash_reports:enabled", Boolean.TRUE);
    public static final af<String> aU = af.a("gads:logged_adapter_version_classes", "");
    public static final af<Long> aV = af.a("gads:rtb_v1_1:signal_timeout_ms", 1000L);
    public static final af<Boolean> aW = af.a(1, "gads:rtb_signal:enabled", Boolean.TRUE);
    public static final af<Boolean> aX = af.a(1, "gads:rtb_v1_1:cld:enabled", Boolean.TRUE);
    public static final af<Boolean> aY = af.a(1, "gads:rtb_v1_1:cld:check_regex:enabled", Boolean.TRUE);
    public static final af<String> aZ = af.a("gads:rtb_logging:regex", "(?!)");
    public static final af<Boolean> ba = af.a(1, "gads:presentation_error:urls_enabled", Boolean.TRUE);
    public static final af<Boolean> bb = af.a(1, "gads:rtb_interstitial:use_fullscreen_monitor", Boolean.TRUE);
    public static final af<Boolean> bc = af.a(1, "gads:native_required_assets:enabled", Boolean.FALSE);
    public static final af<Boolean> bd = af.a(1, "gads:native_required_assets:check_inner_mediaview:enabled", Boolean.TRUE);
    public static final af<Integer> be = af.a("gads:native_ad_options_rtb:min_version", 999999999);
    public static final af<Boolean> bf = af.a(1, "gads:track_view_next_runloop:enabled", Boolean.FALSE);
    public static final af<Boolean> bg = af.a(1, "gads:native_required_assets:viewability:enabled", Boolean.FALSE);
    public static final af<Boolean> bh = af.a(1, "gads:v1_1:adapter_initialization:enabled", Boolean.TRUE);
    public static final af<Integer> bi = af.a("gads:adapter_initialization:min_sdk_version", 15301000);
    public static final af<Long> bj = af.a("gads:adapter_initialization:timeout", 30L);
    public static final af<Long> bk = af.a("gads:adapter_initialization:cld_timeout", 10L);
    public static final af<Boolean> bl = af.a(1, "gads:additional_video_csi:enabled", Boolean.FALSE);
    public static final af<Boolean> bm = af.a(1, "gads:csi:enabled_per_sampling", Boolean.FALSE);
    public static final af<Boolean> bn = af.a(1, "gads:always_set_transfer_listener:enabled", Boolean.FALSE);
    public static final af<Boolean> bo = af.a(1, "gads:initialization_csi:enabled", Boolean.FALSE);
    private static final af<Boolean> fL = af.a(1, "gads:initialization_csi_control:enabled", Boolean.FALSE);
    public static final af<Boolean> bp = af.a(1, "gads:msa:experiments:enabled", Boolean.FALSE);
    public static final af<Boolean> bq = af.a(1, "gads:msa:experiments:ps:enabled", Boolean.FALSE);
    public static final af<Boolean> br = af.a(1, "gads:msa:experiments:fb:enabled", Boolean.TRUE);
    public static final af<Boolean> bs = af.a(1, "gads:msa:experiments:ps:er", Boolean.TRUE);
    private static final af<Integer> fM = af.a("gads:gestures:a2:enabled", 0);
    public static final af<Boolean> bt = af.a(1, "gads:msa:experiments:a2", Boolean.FALSE);
    public static final af<Boolean> bu = af.a(1, "gads:gestures:clearTd:enabled", Boolean.FALSE);
    public static final bz<Boolean> bv = cr.f26286b;
    public static final af<Boolean> bw = af.a(1, "gads:gestures:errorlogging:enabled", Boolean.FALSE);
    public static final af<Long> bx = af.a("gads:gestures:task_timeout", 2000L);
    public static final af<Boolean> by = af.a(1, "gads:gestures:asig:enabled", Boolean.FALSE);
    public static final af<Boolean> bz = af.a(1, "gads:gestures:ans:enabled", Boolean.FALSE);
    public static final af<Boolean> bA = af.a(1, "gads:gestures:tos:enabled", Boolean.FALSE);
    private static final af<Boolean> fN = af.a(1, "gads:gestures:brt:enabled", Boolean.TRUE);
    public static final af<Boolean> bB = af.a(1, "gads:gestures:fpi:enabled", Boolean.FALSE);
    public static final af<Boolean> bC = af.a(1, "gads:signal:app_permissions:disabled", Boolean.FALSE);
    public static final af<Boolean> bD = af.a(1, "gads:gestures:hpk:enabled", Boolean.TRUE);
    public static final af<String> bE = af.a("gads:gestures:pk", "");
    public static final af<Boolean> bF = af.a(1, "gads:gestures:bs:enabled", Boolean.TRUE);
    public static final af<Boolean> bG = af.a(1, "gads:gestures:check_initialization_thread:enabled", Boolean.FALSE);
    public static final af<Boolean> bH = af.a(1, "gads:gestures:init_new_thread:enabled", Boolean.TRUE);
    public static final af<Boolean> bI = af.a(1, "gads:gestures:pds:enabled", Boolean.TRUE);
    private static final af<Integer> fO = af.a("gads:gestures:as2percentage", 0);
    public static final af<Boolean> bJ = af.a(1, "gads:gestures:ns:enabled", Boolean.TRUE);
    public static final af<Boolean> bK = af.a(1, "gads:gestures:vdd:enabled", Boolean.FALSE);
    public static final af<Boolean> bL = af.a(1, "gads:native:asset_view_touch_events", Boolean.FALSE);
    public static final af<Boolean> bM = af.a(1, "gads:native:set_touch_listener_on_asset_views", Boolean.TRUE);
    public static final af<Boolean> bN = af.a(1, "gads:ais:enabled", Boolean.TRUE);
    public static final af<Boolean> bO = af.a(1, "gads:stav:enabled", Boolean.FALSE);
    public static final af<Boolean> bP = af.a(1, "gads:send_available_disk_space:enabled", Boolean.FALSE);
    public static final af<String> bQ = af.a("gads:sdk_core_constants:caps", "");
    private static final af<Boolean> fQ = af.a(1, "gads:js_flags:disable_phenotype", Boolean.FALSE);
    public static final af<String> bR = af.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
    private static final af<String> fR = af.a("gads:native:video_url", "//imasdk.googleapis.com/admob/sdkloader/native_video.html");
    public static final af<String> bS = af.a("gads:native:video_url_with_protocol", "https://imasdk.googleapis.com/admob/sdkloader/native_video.html");
    public static final af<Boolean> bT = af.a(1, "gads:native:get_native_ad_view_signals", Boolean.FALSE);
    public static final af<Integer> bU = af.a("gads:native_video_load_timeout", 10);
    private static final af<Integer> fS = af.a("gads:omid:native_webview_load_timeout", 2000);
    public static final af<Boolean> bV = af.a(1, "gads:omid:native_video_ad_user_action_event:enabled", Boolean.FALSE);
    public static final af<Boolean> bW = af.a(1, "gads:enable_native_media_aspect_ratio", Boolean.TRUE);
    public static final af<Boolean> bX = af.a(1, "gads:native:media_content_main_image:enabled", Boolean.TRUE);
    public static final af<String> bY = af.a("gads:ad_choices_content_description", "Ad Choices Icon");
    private static final af<Boolean> fT = af.a(1, "gads:enable_store_active_view_state", Boolean.FALSE);
    public static final af<Boolean> bZ = af.a(1, "gads:enable_singleton_broadcast_receiver", Boolean.FALSE);
    public static final af<Boolean> ca = af.a(1, "gads:native:media_view_match_parent:enabled", Boolean.FALSE);
    public static final af<Boolean> cb = af.a(1, "gads:native:count_impression_for_assets", Boolean.FALSE);
    private static final af<Boolean> fU = af.a(1, "gads:instream_ad:enabled", Boolean.TRUE);
    public static final af<Boolean> cc = af.a(1, "gads:fluid_ad:use_wrap_content_height", Boolean.FALSE);
    private static final af<Boolean> fV = af.a(1, "gads:auto_location_for_coarse_permission", Boolean.FALSE);
    private static final af<String> fW = af.b("gads:auto_location_for_coarse_permission:experiment_id");
    private static final af<Long> fX = af.a("gads:auto_location_timeout", 2000L);
    private static final af<String> fY = af.b("gads:auto_location_timeout:experiment_id");
    private static final af<Long> fZ = af.a("gads:auto_location_interval", -1L);
    private static final af<String> ga = af.b("gads:auto_location_interval:experiment_id");
    public static final af<Boolean> cd = af.a(1, "gads:rtb_v1_1:fetch_app_settings_using_cld:enabled", Boolean.TRUE);
    public static final af<Boolean> ce = af.a(1, "gads:get_request_signals_cld:enabled", Boolean.TRUE);
    public static final af<Boolean> cf = af.a(1, "gads:get_request_signals_common_cld:enabled", Boolean.FALSE);
    public static final af<Boolean> cg = af.a(1, "gads:rtb_v1_1:use_manifest_appid_cld:enabled", Boolean.TRUE);
    public static final af<Long> ch = af.a("gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000L);
    public static final af<Long> ci = af.a("gads:parental_controls:timeout", 2000L);
    private static final af<Integer> gb = af.a("gads:cache:ad_request_timeout_millis", 250);
    private static final af<Integer> gc = af.a("gads:cache:max_concurrent_downloads", 10);
    private static final af<Boolean> gd = af.a(1, "gads:cache:downloader_use_high_priority", Boolean.FALSE);
    private static final af<Long> ge = af.a("gads:cache:javascript_timeout_millis", 5000L);
    public static final af<Boolean> cj = af.a(1, "gads:cache:bind_on_foreground", Boolean.FALSE);
    public static final af<Boolean> ck = af.a(1, "gads:cache:bind_on_init", Boolean.FALSE);
    public static final af<Boolean> cl = af.a(1, "gads:cache:bind_on_request", Boolean.FALSE);
    public static final af<Long> cm = af.a("gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30));
    public static final af<Boolean> cn = af.a(1, "gads:cache:use_cache_data_source", Boolean.FALSE);
    public static final af<Boolean> co = af.a(1, "gads:cache:connection_per_read", Boolean.FALSE);
    public static final af<Long> cp = af.a("gads:cache:connection_timeout", 5000L);
    public static final af<Long> cq = af.a("gads:cache:read_only_connection_timeout", 5000L);
    public static final af<Boolean> cr = af.a(1, "gads:cache:read_inner_data_source_if_gcache_miss", Boolean.FALSE);
    public static final af<Boolean> cs = af.a(1, "gads:cache:read_inner_data_source_if_gcache_not_downloaded", Boolean.FALSE);
    private static final af<Boolean> gf = af.a(1, "gads:cache:function_call_timeout_v1:enabled", Boolean.FALSE);
    private static final af<Long> gg = af.a("gads:cache:function_call_timeout", 5000L);
    public static final af<Boolean> ct = af.a(1, "gads:http_assets_cache:enabled", Boolean.FALSE);
    public static final af<String> cu = af.a("gads:http_assets_cache:regex", "(?i)https:\\/\\/(tpc\\.googlesyndication\\.com\\/(.*)|lh\\d+\\.googleusercontent\\.com\\/(.*))");
    public static final af<Integer> cv = af.a("gads:http_assets_cache:time_out", 100);
    public static final af<Boolean> cw = af.a(1, "gads:chrome_custom_tabs_browser:enabled", Boolean.FALSE);
    public static final af<Boolean> cx = af.a(1, "gads:chrome_custom_tabs:disabled", Boolean.FALSE);
    public static final af<Boolean> cy = af.a(1, "gads:chrome_custom_tabs_browser_v2:enabled", Boolean.FALSE);
    public static final af<Boolean> cz = af.a(1, "gads:cct_v2_connection:enabled", Boolean.FALSE);
    public static final af<Boolean> cA = af.a(1, "gads:cct_v2_direct_launch:enabled", Boolean.FALSE);
    public static final af<Boolean> cB = af.a(1, "gads:chrome_custom_tabs_for_native_ads:enabled", Boolean.FALSE);
    public static final af<Long> cC = af.a("gads:debug_hold_gesture:time_millis", 2000L);
    public static final af<String> cD = af.a("gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");
    public static final af<String> cE = af.a("gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");
    public static final af<String> cF = af.a("gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");
    public static final af<String> cG = af.a("gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");
    public static final af<Integer> cH = af.a("gads:drx_debug:timeout_ms", 5000);
    public static final af<Integer> cI = af.a("gad:pixel_dp_comparision_multiplier", 1);
    public static final af<Boolean> cJ = af.a(1, "gad:interstitial_for_multi_window", Boolean.FALSE);
    public static final af<Boolean> cK = af.a(1, "gad:interstitial_ad_stay_active_in_multi_window", Boolean.FALSE);
    public static final af<Boolean> cL = af.a(1, "gad:interstitial_multi_window_method", Boolean.FALSE);
    public static final af<Integer> cM = af.a("gad:interstitial:close_button_padding_dip", 0);
    public static final af<Boolean> cN = af.a(1, "gads:clearcut_logging:enabled", Boolean.FALSE);
    public static final af<Boolean> cO = af.a(1, "gads:clearcut_logging:write_to_file", Boolean.FALSE);
    public static final af<Boolean> cP = af.a(1, "gad:publisher_testing:force_local_request:enabled", Boolean.TRUE);
    public static final af<String> cQ = af.a("gad:publisher_testing:force_local_request:enabled_list", "");
    public static final af<String> cR = af.a("gad:publisher_testing:force_local_request:disabled_list", "");
    public static final af<Integer> cS = af.a("gad:http_redirect_max_count:times", 8);
    public static final af<Boolean> cT = af.a(1, "gads:omid:enabled", Boolean.TRUE);
    public static final af<Integer> cU = af.a("gads:omid:destroy_webview_delay", 1000);
    private static final af<Boolean> gh = af.a(1, "gads:omid_1_3_activate:enabled", Boolean.FALSE);
    public static final af<Boolean> cV = af.a(1, "gads:omid_1_3_create_html_session:enabled", Boolean.FALSE);
    public static final af<Boolean> cW = af.a(1, "gads:omid_1_3_create_js_session:enabled", Boolean.FALSE);
    private static final af<Boolean> gi = af.a(1, "gads:omid_1_3_friendly_obstruction:enabled", Boolean.FALSE);
    public static final af<Boolean> cX = af.a(1, "gads:omid_1_3_fire_loaded_event:enabled", Boolean.FALSE);
    private static final af<Boolean> gj = af.a(1, "gads:nonagon:banner:enabled", Boolean.TRUE);
    private static final af<String> gk = af.a("gads:nonagon:banner:ad_unit_exclusions", "(?!)");
    private static final af<Boolean> gl = af.a(1, "gads:nonagon:app_open:enabled", Boolean.TRUE);
    public static final af<Integer> cY = af.a("gads:app_open_beta:min_version", 999999999);
    public static final af<Integer> cZ = af.a("gads:app_open_ad_open_beta_api:min_version", 202490999);
    private static final af<String> gm = af.a("gads:nonagon:app_open:ad_unit_exclusions", "(?!)");
    private static final af<Boolean> gn = af.a(1, "gads:nonagon:interstitial:enabled", Boolean.TRUE);
    private static final af<String> go = af.a("gads:nonagon:interstitial:ad_unit_exclusions", "(?!)");
    private static final af<Boolean> gp = af.a(1, "gads:nonagon:rewardedvideo:enabled", Boolean.TRUE);
    public static final af<Boolean> da = af.a(1, "gads:nonagon:mobile_ads_setting_manager:enabled", Boolean.TRUE);
    public static final af<String> db = af.a("gads:nonagon:rewardedvideo:ad_unit_exclusions", "(?!)");
    private static final af<Boolean> gq = af.a(1, "gads:nonagon:nativead:enabled", Boolean.TRUE);
    private static final af<String> gr = af.a("gads:nonagon:nativead:app_name", "(?!)");
    public static final af<Boolean> dc = af.a(1, "gads:nonagon:banner:check_dp_size", Boolean.TRUE);
    public static final af<Boolean> dd = af.a(1, "gads:nonagon:rewarded:load_multiple_ads", Boolean.TRUE);
    private static final af<Boolean> gs = af.a(1, "gads:nonagon:return_last_error_code", Boolean.FALSE);
    public static final af<Boolean> de = af.a(1, "gads:nonagon:return_no_fill_error_code", Boolean.FALSE);
    public static final af<Boolean> df = af.a(1, "gads:nonagon:continue_on_no_fill", Boolean.FALSE);
    private static final af<Boolean> gt = af.a(1, "gads:nonagon:open_not_loaded_interstitial", Boolean.TRUE);
    public static final af<Boolean> dg = af.a(1, "gads:nonagon:separate_timeout:enabled", Boolean.TRUE);
    public static final af<Integer> dh = af.a("gads:nonagon:request_timeout:seconds", 60);
    public static final af<Boolean> di = af.a(1, "gads:nonagon:banner_recursive_renderer", Boolean.FALSE);
    public static final af<Boolean> dj = af.a(1, "gads:nonagon:app_stats_lock:enabled", Boolean.FALSE);
    public static final af<Boolean> dk = af.a(1, "gads:nonagon:app_stats_main_thread:enabled", Boolean.FALSE);
    public static final af<Boolean> dl = af.a(1, "gads:uri_query_to_map_bg_thread:enabled", Boolean.FALSE);
    public static final af<String> dm = af.a("gads:uri_query_to_map_bg_thread:types", "/result");
    public static final af<Integer> dn = af.a("gads:uri_query_to_map_bg_thread:min_length", 1000);

    /* renamed from: do  reason: not valid java name */
    public static final af<Boolean> f365do = af.a(1, "gads:nonagon:active_view_gmsg_background_thread:enabled", Boolean.TRUE);
    public static final af<Boolean> dp = af.a(1, "gads:active_view_gmsg_separate_pool:enabled", Boolean.TRUE);
    private static final af<Boolean> gu = af.a(1, "gads:nonagon:service:enabled", Boolean.TRUE);
    public static final af<Boolean> dq = af.a(1, "gads:signals:ad_id_info:enabled", Boolean.FALSE);
    public static final af<Boolean> dr = af.a(1, "gads:signals:app_index:enabled", Boolean.FALSE);
    public static final af<Boolean> ds = af.a(1, "gads:signals:attestation_token:enabled", Boolean.FALSE);
    public static final af<Boolean> dt = af.a(1, "gads:signals:cache:enabled", Boolean.FALSE);
    private static final af<Boolean> gv = af.a(1, "gads:signals:doritos:enabled", Boolean.FALSE);
    public static final af<Boolean> du = af.a(1, "gads:signals:doritos:v1:enabled", Boolean.FALSE);
    private static final af<Boolean> gw = af.a(1, "gads:signals:doritos:v2:immediate:enabled", Boolean.FALSE);
    private static final af<Boolean> gx = af.a(1, "gads:signals:network_prediction:enabled", Boolean.FALSE);
    public static final af<Boolean> dv = af.a(1, "gads:signals:parental_control:enabled", Boolean.FALSE);
    public static final af<Boolean> dw = af.a(1, "gads:signals:video_decoder:enabled", Boolean.FALSE);
    public static final af<Boolean> dx = af.a(1, "gads:signals:app_version_name:enabled", Boolean.FALSE);
    public static final af<Boolean> dy = af.a(1, "gads:signals:banner_hardware_acceleration:enabled", Boolean.FALSE);
    public static final af<Boolean> dz = af.a(1, "gads:signals:native_hardware_acceleration:enabled", Boolean.FALSE);
    private static final af<Boolean> gy = af.a(1, "gads:attestation_token:enabled", Boolean.FALSE);
    public static final af<Long> dA = af.a("gads:mobius_linking:sdk_side_cooldown_time_threshold:ms", (long) Constants.HOUR_IN_MILLIS);
    public static final af<Integer> dB = af.a("gads:adoverlay:b68684796:targeting_sdk:lower_bound", 27);
    public static final af<Integer> dC = af.a("gads:adoverlay:b68684796:targeting_sdk:upper_bound", 26);
    public static final af<Integer> dD = af.a("gads:adoverlay:b68684796:sdk_int:lower_bound", 27);
    public static final af<Integer> dE = af.a("gads:adoverlay:b68684796:sdk_int:upper_bound", 26);
    private static final bz<Boolean> gz = cs.f26330a;
    public static final af<Boolean> dF = af.a(1, "gads:consent:shared_preference_reading:enabled", Boolean.TRUE);
    public static final af<Boolean> dG = af.a(1, "gads:consent:iab_consent_info:enabled", Boolean.TRUE);
    public static final af<Boolean> dH = af.a(1, "gads:fc_consent:shared_preference_reading:enabled", Boolean.TRUE);
    public static final af<String> dI = af.a("gads:sp:json_string", "");
    public static final af<Boolean> dJ = af.a(1, "gads:nativeads:image:sample:enabled", Boolean.TRUE);
    public static final af<Integer> dK = af.a("gads:nativeads:image:sample:pixels", 1048576);
    public static final af<Boolean> dL = af.a(1, "gads:nativeads:pub_image_scale_type:enabled", Boolean.TRUE);
    public static final af<Boolean> dM = af.a(1, "gads:offline_signaling:enabled", Boolean.FALSE);
    public static final af<Integer> dN = af.a("gads:offline_signaling:log_maximum", 100);
    public static final af<Boolean> dO = af.a(1, "gads:nativeads:template_signal:enabled", Boolean.TRUE);
    public static final af<Boolean> dP = af.a(1, "gads:nativeads:media_content_aspect_ratio:enabled", Boolean.TRUE);
    public static final af<Boolean> dQ = af.a(1, "gads:nativeads:media_content_metadata:enabled", Boolean.TRUE);
    public static final af<Boolean> dR = af.a(1, "gads:precache_pool:verbose_logging", Boolean.FALSE);
    public static final af<Integer> dS = af.a("gads:rewarded_precache_pool:count", 0);
    public static final af<Integer> dT = af.a("gads:interstitial_precache_pool:count", 0);
    public static final af<String> dU = af.a("gads:rewarded_precache_pool:discard_strategy", "lru");
    public static final af<String> dV = af.a("gads:interstitial_precache_pool:discard_strategy", "lru");
    public static final af<String> dW = af.a("gads:rewarded_precache_pool:cache_start_trigger", "onAdClosed");
    public static final af<String> dX = af.a("gads:interstitial_precache_pool:cache_start_trigger", "onAdClosed");
    public static final af<Integer> dY = af.a("gads:rewarded_precache_pool:size", 1);
    public static final af<Integer> dZ = af.a("gads:interstitial_precache_pool:size", 1);
    public static final af<Integer> ea = af.a("gads:rewarded_precache_pool:ad_time_limit", 1200);
    public static final af<Integer> eb = af.a("gads:interstitial_precache_pool:ad_time_limit", 1200);
    public static final af<String> ec = af.a("gads:rewarded_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");
    public static final af<String> ed = af.a("gads:interstitial_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");
    public static final af<String> ee = af.a("gads:app_open_precache_pool:schema", "orientation,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");
    public static final af<String> ef = af.a("gads:app_open_precache_pool:discard_strategy", "oldest");
    public static final af<Integer> eg = af.a("gads:app_open_precache_pool:count", 0);
    public static final af<String> eh = af.a("gads:app_open_precache_pool:cache_start_trigger", "onAdClosed");
    public static final af<Integer> ei = af.a("gads:app_open_precache_pool:size", 1);
    public static final af<Integer> ej = af.a("gads:app_open_precache_pool:ad_time_limit", 14400);
    public static final af<Boolean> ek = af.a(1, "gads:memory_leak:b129558083", Boolean.FALSE);
    public static final af<Boolean> el = af.a(1, "gads:unhandled_event_reporting:enabled", Boolean.FALSE);
    public static final af<Boolean> em = af.a(1, "gads:response_info:enabled", Boolean.TRUE);
    public static final af<Boolean> en = af.a(1, "gads:csi:interstitial_failed_to_show:enabled", Boolean.FALSE);
    public static final af<Boolean> eo = af.a(1, "gads:csi:mediation_failure:enabled", Boolean.FALSE);
    public static final af<String> ep = af.a("gads:csi:error_parsing:regex", "^(\\d+)");
    public static final af<Boolean> eq = af.a(1, "gads:csi:eids_from_cld:enabled", Boolean.FALSE);
    public static final af<Boolean> er = af.a(1, "gads:request_id_check:enabled", Boolean.FALSE);
    public static final af<Boolean> es = af.a(1, "gads:request_id_int32:enabled", Boolean.TRUE);
    public static final af<Boolean> et = af.a(1, "gads:signal_collection_without_rendering:enabled", Boolean.TRUE);
    public static final af<Integer> eu = af.a("gads:native_ads_signal:timeout", 1000);
    public static final af<Integer> ev = af.a("gads:signal_v2:min_version", 19677000);
    public static final af<Boolean> ew = af.a(2, "DISABLE_CRASH_REPORTING", Boolean.FALSE);
    public static final af<Boolean> ex = af.a(1, "gads:paid_event_listener:enabled", Boolean.FALSE);
    public static final af<Boolean> ey = af.a(1, "gads:interscroller_ad:enabled", Boolean.TRUE);
    public static final af<Boolean> ez = af.a(1, "gads:interscroller_ad:refresh:enabled", Boolean.FALSE);
    public static final af<Integer> eA = af.a("gads:interscroller:min_width", (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
    public static final af<Integer> eB = af.a("gads:interscroller:min_height", 250);
    public static final af<Boolean> eC = af.a(1, "gads:is_in_scroll_view_new_api:enabled", Boolean.TRUE);
    public static final af<Boolean> eD = af.a(1, "gads:policy_validator_for_all_pubs:enabled", Boolean.FALSE);
    public static final af<String> eE = af.a("gad:publisher_testing:policy_validator:enabled_list", "");
    public static final af<Integer> eF = af.a("gads:policy_validator_layoutparam:flags", 808);
    public static final af<Boolean> eG = af.a(2, "NATIVE_AD_DEBUGGER_ENABLED", Boolean.TRUE);
    public static final af<Integer> eH = af.a("gads:policy_validator_overlay_width:dp", 350);
    public static final af<Integer> eI = af.a("gads:policy_validator_overlay_height:dp", (int) TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);
    public static final af<Boolean> eJ = af.a(1, "gads:use_wide_viewport:enabled", Boolean.FALSE);
    public static final af<Boolean> eK = af.a(1, "gads:load_with_overview_mode:enabled", Boolean.FALSE);
    public static final af<Boolean> eL = af.a(1, "gads:wire_banner_listener_after_request:enabled", Boolean.FALSE);
    public static final af<Boolean> eM = af.a(1, "gads:wire_app_open_listener_after_request:enabled", Boolean.FALSE);
    public static final af<Boolean> eN = af.a(1, "gads:wire_interstitial_listener_after_request:enabled", Boolean.FALSE);
    public static final af<String> eO = af.a("gads:server_transaction_source:list", "Network");
    public static final af<Boolean> eP = af.a(1, "gads:can_open_app_and_open_app_action:enabled", Boolean.FALSE);
    public static final af<Boolean> eQ = af.a(1, "gads:open_gmsg:set_uri_data_and_type:enabled", Boolean.FALSE);
    public static final af<Integer> eR = af.a("gads:ad_error_api:min_version", 202006000);
    public static final af<Boolean> eS = af.a(1, "gads:forward_bow_error_string:enabled", Boolean.TRUE);
    public static final af<Boolean> eT = af.a(1, "gads:continue_on_process_response:enabled", Boolean.FALSE);
    public static final af<Boolean> eU = af.a(1, "gads:mediation_status_reporting:enabled", Boolean.TRUE);
    public static final af<Integer> eV = af.a("gads:mediation_no_fill_error:min_version", 999999999);
    public static final af<Integer> eW = af.a("gads:offline_database_version:version", 1);
    public static final af<Boolean> eX = af.a(1, "gads:offline_ads_notification:enabled", Boolean.TRUE);
    public static final af<Boolean> eY = af.a(1, "gads:handle_click_recorded_event:enabled", Boolean.FALSE);
    public static final af<Boolean> eZ = af.a(1, "gads:default_network_type_fine_to_unknown:enabled", Boolean.TRUE);
    public static final af<Boolean> fa = af.a(1, "gads:handle_intent_async:enabled", Boolean.FALSE);
    public static final af<Boolean> fb = af.a(1, "gads:skip_deep_link_validation_native_ads:enabled", Boolean.FALSE);
    public static final af<Boolean> fc = af.a(1, "gads:try_deep_link_fallback_native_ads:enabled", Boolean.FALSE);
    public static final af<Boolean> fd = af.a(1, "gads:in_app_link_handling_for_android_11_enabled:enabled", Boolean.FALSE);
    public static final af<Boolean> fe = af.a(1, "gads:new_remote_logging_utils:enabled", Boolean.FALSE);
    public static final af<Boolean> ff = af.a(1, "gads:remote_logging:enabled", Boolean.FALSE);
    public static final af<Integer> fg = af.a("gads:remote_log_send_rate_ms", 60000);
    public static final af<Integer> fh = af.a("gads:remote_log_queue_max_entries", 500);
    public static final af<Integer> fi = af.a("gads:app_event_queue_size", 20);
    public static final af<Boolean> fj = af.a(1, "gads:hide_grey_title_bar:enabled", Boolean.FALSE);
    public static final af<Boolean> fk = af.a(1, "gads:interstitial_ad_parameter_handler:enabled", Boolean.FALSE);

    static {
        af<String> a2 = af.a("gads:sdk_core_constants:experiment_id", (String) null);
        ekb.d().f23515b.add(a2);
        fP = a2;
    }

    public static List<String> a() {
        return ekb.d().a();
    }

    public static void a(final Context context) {
        zzbr.zza(new cyn(context) { // from class: com.google.android.gms.internal.ads.at

            /* renamed from: a  reason: collision with root package name */
            private final Context f23859a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23859a = context;
            }

            @Override // com.google.android.gms.internal.ads.cyn
            public final Object a() {
                return aq.b(this.f23859a);
            }
        });
    }

    public static void a(Context context, JSONObject jSONObject) {
        ekb.c();
        SharedPreferences.Editor edit = context.getSharedPreferences("google_ads_flags", 0).edit();
        new ak(ekb.d(), edit, jSONObject);
        cg.a();
        ekb.d().a(edit, jSONObject);
        ekb.c();
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Object b(Context context) {
        am e2 = ekb.e();
        if (e2.f23561c) {
            return null;
        }
        synchronized (e2.f23559a) {
            if (e2.f23561c) {
                return null;
            }
            if (!e2.f23562d) {
                e2.f23562d = true;
            }
            e2.g = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                e2.f = c.a(e2.g).a(e2.g.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException e3) {
            }
            Context remoteContext = d.getRemoteContext(context);
            context = remoteContext;
            if (remoteContext == null) {
                context = remoteContext;
                if (context != null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                }
            }
            if (context == null) {
                e2.f23562d = false;
                e2.f23560b.open();
                return null;
            }
            ekb.c();
            e2.e = context.getSharedPreferences("google_ads_flags", 0);
            if (e2.e != null) {
                e2.e.registerOnSharedPreferenceChangeListener(e2);
            }
            dc.a(new ar(e2));
            e2.a();
            e2.f23561c = true;
            e2.f23562d = false;
            e2.f23560b.open();
            return null;
        }
    }

    public static List<String> b() {
        al d2 = ekb.d();
        List<String> a2 = d2.a();
        for (af<String> afVar : d2.f23516c) {
            String str = (String) ekb.e().a(afVar);
            if (!TextUtils.isEmpty(str)) {
                a2.add(str);
            }
        }
        ArrayList arrayList = new ArrayList();
        av.a(arrayList, cw.f26487a);
        a2.addAll(arrayList);
        return a2;
    }
}
