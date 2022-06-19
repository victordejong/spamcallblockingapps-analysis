package com.applovin.impl.sdk.p055c;

import java.util.concurrent.TimeUnit;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.c.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/a.class */
public class C1313a<T> extends C1314b<T> {

    /* renamed from: A */
    public static final C1314b<Boolean> f4666A;

    /* renamed from: B */
    public static final C1314b<Boolean> f4667B;

    /* renamed from: D */
    public static final C1314b<Boolean> f4669D;

    /* renamed from: G */
    public static final C1314b<Boolean> f4672G;

    /* renamed from: H */
    public static final C1314b<Long> f4673H;

    /* renamed from: I */
    public static final C1314b<Boolean> f4674I;

    /* renamed from: K */
    public static final C1314b<Boolean> f4676K;

    /* renamed from: P */
    public static final C1314b<Boolean> f4681P;

    /* renamed from: Q */
    public static final C1314b<Boolean> f4682Q;

    /* renamed from: R */
    public static final C1314b<Boolean> f4683R;

    /* renamed from: S */
    public static final C1314b<Boolean> f4684S;

    /* renamed from: T */
    public static final C1314b<Boolean> f4685T;

    /* renamed from: U */
    public static final C1314b<Boolean> f4686U;

    /* renamed from: V */
    public static final C1314b<Boolean> f4687V;

    /* renamed from: b */
    public static final C1314b<Long> f4689b;

    /* renamed from: e */
    public static final C1314b<Long> f4692e;

    /* renamed from: f */
    public static final C1314b<Long> f4693f;

    /* renamed from: g */
    public static final C1314b<Long> f4694g;

    /* renamed from: h */
    public static final C1314b<Boolean> f4695h;

    /* renamed from: j */
    public static final C1314b<Boolean> f4697j;

    /* renamed from: k */
    public static final C1314b<Long> f4698k;

    /* renamed from: l */
    public static final C1314b<Long> f4699l;

    /* renamed from: m */
    public static final C1314b<Long> f4700m;

    /* renamed from: n */
    public static final C1314b<Long> f4701n;

    /* renamed from: q */
    public static final C1314b<Boolean> f4704q;

    /* renamed from: r */
    public static final C1314b<Boolean> f4705r;

    /* renamed from: s */
    public static final C1314b<Boolean> f4706s;

    /* renamed from: t */
    public static final C1314b<Boolean> f4707t;

    /* renamed from: u */
    public static final C1314b<Boolean> f4708u;

    /* renamed from: z */
    public static final C1314b<Boolean> f4713z;

    /* renamed from: a */
    public static final C1314b<String> f4688a = C1314b.m5830a("afi", "");

    /* renamed from: c */
    public static final C1314b<String> f4690c = C1314b.m5830a("mediation_endpoint", "https://ms.applovin.com/");

    /* renamed from: d */
    public static final C1314b<String> f4691d = C1314b.m5830a("mediation_backup_endpoint", "https://ms.applvn.com/");

    /* renamed from: i */
    public static final C1314b<String> f4696i = C1314b.m5830a("postback_macros", "{\"{MCODE}\":\"mcode\",\"{BCODE}\":\"bcode\",\"{ICODE}\":\"icode\",\"{SCODE}\":\"scode\"}");

    /* renamed from: o */
    public static final C1314b<String> f4702o = C1314b.m5830a("ad_load_failure_refresh_ignore_error_codes", "204");

    /* renamed from: p */
    public static final C1314b<Long> f4703p = C1314b.m5830a("refresh_ad_on_app_resume_elapsed_threshold_ms", 0L);

    /* renamed from: v */
    public static final C1314b<Long> f4709v = C1314b.m5830a("fullscreen_display_delay_ms", 600L);

    /* renamed from: w */
    public static final C1314b<Long> f4710w = C1314b.m5830a("ahdm", 500L);

    /* renamed from: x */
    public static final C1314b<Integer> f4711x = C1314b.m5830a("ad_load_reminder_delay_seconds", 5);

    /* renamed from: y */
    public static final C1314b<Long> f4712y = C1314b.m5830a("ad_view_refresh_precache_request_viewability_undesired_flags", 502L);

    /* renamed from: C */
    public static final C1314b<Long> f4668C = C0033h.m8888i(TimeUnit.HOURS, 4, "ad_expiration_ms");

    /* renamed from: E */
    public static final C1314b<Long> f4670E = C1314b.m5830a("fullscreen_ad_displayed_timeout_ms", -1L);

    /* renamed from: F */
    public static final C1314b<Long> f4671F = C1314b.m5830a("ad_hidden_timeout_ms", -1L);

    /* renamed from: J */
    public static final C1314b<Integer> f4675J = C1314b.m5830a("mute_state", 2);

    /* renamed from: L */
    public static final C1314b<String> f4677L = C1314b.m5830a("saf", "");

    /* renamed from: M */
    public static final C1314b<String> f4678M = C1314b.m5830a("saui", "");

    /* renamed from: N */
    public static final C1314b<Integer> f4679N = C1314b.m5830a("mra", -1);

    /* renamed from: O */
    public static final C1314b<String> f4680O = C1314b.m5830a("mra_af", "INTER,REWARDED,REWARDED_INTER,BANNER,LEADER,MREC");

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f4689b = C0033h.m8888i(timeUnit, 5L, "afi_ms");
        f4692e = C0033h.m8888i(timeUnit, 2L, "fetch_next_ad_retry_delay_ms");
        f4693f = C0033h.m8888i(timeUnit, 5L, "fetch_next_ad_timeout_ms");
        f4694g = C0033h.m8888i(timeUnit, 7L, "fetch_mediation_debugger_info_timeout_ms");
        Boolean bool = Boolean.TRUE;
        f4695h = C1314b.m5830a("auto_init_mediation_debugger", bool);
        Boolean bool2 = Boolean.FALSE;
        f4697j = C1314b.m5830a("persistent_mediated_postbacks", bool2);
        f4698k = C0033h.m8888i(timeUnit, 30L, "max_signal_provider_latency_ms");
        f4699l = C0033h.m8888i(timeUnit, 10L, "default_adapter_timeout_ms");
        f4700m = C0033h.m8888i(timeUnit, 30L, "ad_refresh_ms");
        f4701n = C0033h.m8888i(timeUnit, 30L, "ad_load_failure_refresh_ms");
        f4704q = C1314b.m5830a("refresh_ad_view_timer_responds_to_background", bool);
        f4705r = C1314b.m5830a("refresh_ad_view_timer_responds_to_store_kit", bool);
        f4706s = C1314b.m5830a("refresh_ad_view_timer_responds_to_window_visibility_changed", bool2);
        f4707t = C1314b.m5830a("avrsponse", bool2);
        f4708u = C1314b.m5830a("allow_pause_auto_refresh_immediately", bool2);
        f4713z = C1314b.m5830a("ad_view_refresh_precache_request_enabled", bool);
        f4666A = C1314b.m5830a("fullscreen_ads_block_publisher_load_if_another_showing", bool);
        f4667B = C1314b.m5830a("fabsina", bool2);
        f4669D = C1314b.m5830a("saewib", bool2);
        f4672G = C1314b.m5830a("schedule_ad_hidden_on_ad_dismiss", bool2);
        f4673H = C0033h.m8888i(timeUnit, 1L, "ad_hidden_on_ad_dismiss_callback_delay_ms");
        f4674I = C1314b.m5830a("proe", bool2);
        f4676K = C1314b.m5830a("adapters_to_re_fetch_sdk_version_if_empty", bool);
        f4681P = C1314b.m5830a("pmp", bool2);
        f4682Q = C1314b.m5830a("sai", bool2);
        f4683R = C1314b.m5830a("init_adapter_for_sc", bool);
        f4684S = C1314b.m5830a("init_adapter_for_al", bool);
        f4685T = C1314b.m5830a("fadiafase", bool);
        f4686U = C1314b.m5830a("fetch_mediated_ad_gzip", bool2);
        f4687V = C1314b.m5830a("max_postback_gzip", bool2);
    }
}
