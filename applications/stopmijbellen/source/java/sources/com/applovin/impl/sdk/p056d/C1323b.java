package com.applovin.impl.sdk.p056d;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.C1676a;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.applovin.impl.sdk.d.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/b.class */
public class C1323b {

    /* renamed from: E */
    private final String f5060E;

    /* renamed from: F */
    private final String f5061F;

    /* renamed from: G */
    private static final Set<String> f5033G = new HashSet(32);

    /* renamed from: a */
    public static final C1323b f5034a = m5779a("sas", "AD_SOURCE");

    /* renamed from: b */
    public static final C1323b f5035b = m5779a("srt", "AD_RENDER_TIME");

    /* renamed from: c */
    public static final C1323b f5036c = m5779a("sft", "AD_FETCH_TIME");

    /* renamed from: d */
    public static final C1323b f5037d = m5779a("sfs", "AD_FETCH_SIZE");

    /* renamed from: e */
    public static final C1323b f5038e = m5779a("sadb", "AD_DOWNLOADED_BYTES");

    /* renamed from: f */
    public static final C1323b f5039f = m5779a("sacb", "AD_CACHED_BYTES");

    /* renamed from: g */
    public static final C1323b f5040g = m5779a("stdl", "TIME_TO_DISPLAY_FROM_LOAD");

    /* renamed from: h */
    public static final C1323b f5041h = m5779a("stdi", "TIME_TO_DISPLAY_FROM_INIT");

    /* renamed from: i */
    public static final C1323b f5042i = m5779a("snas", "AD_NUMBER_IN_SESSION");

    /* renamed from: j */
    public static final C1323b f5043j = m5779a("snat", "AD_NUMBER_TOTAL");

    /* renamed from: k */
    public static final C1323b f5044k = m5779a("stah", "TIME_AD_HIDDEN_FROM_SHOW");

    /* renamed from: l */
    public static final C1323b f5045l = m5779a("stas", "TIME_TO_SKIP_FROM_SHOW");

    /* renamed from: m */
    public static final C1323b f5046m = m5779a("stac", "TIME_TO_CLICK_FROM_SHOW");

    /* renamed from: n */
    public static final C1323b f5047n = m5779a("stbe", "TIME_TO_EXPAND_FROM_SHOW");

    /* renamed from: o */
    public static final C1323b f5048o = m5779a("stbc", "TIME_TO_CONTRACT_FROM_SHOW");

    /* renamed from: p */
    public static final C1323b f5049p = m5779a("saan", "AD_SHOWN_WITH_ACTIVE_NETWORK");

    /* renamed from: q */
    public static final C1323b f5050q = m5779a("suvs", "INTERSTITIAL_USED_VIDEO_STREAM");

    /* renamed from: r */
    public static final C1323b f5051r = m5779a("sugs", "AD_USED_GRAPHIC_STREAM");

    /* renamed from: s */
    public static final C1323b f5052s = m5779a("svpv", "INTERSTITIAL_VIDEO_PERCENT_VIEWED");

    /* renamed from: t */
    public static final C1323b f5053t = m5779a("stpd", "INTERSTITIAL_PAUSED_DURATION");

    /* renamed from: u */
    public static final C1323b f5054u = m5779a("shsc", "HTML_RESOURCE_CACHE_SUCCESS_COUNT");

    /* renamed from: v */
    public static final C1323b f5055v = m5779a("shfc", "HTML_RESOURCE_CACHE_FAILURE_COUNT");

    /* renamed from: w */
    public static final C1323b f5056w = m5779a("schc", "AD_CANCELLED_HTML_CACHING");

    /* renamed from: x */
    public static final C1323b f5057x = m5779a("smwm", "AD_SHOWN_IN_MULTIWINDOW_MODE");

    /* renamed from: y */
    public static final C1323b f5058y = m5779a("vssc", "VIDEO_STREAM_STALLED_COUNT");

    /* renamed from: z */
    public static final C1323b f5059z = m5779a("wvem", "WEB_VIEW_ERROR_MESSAGES");

    /* renamed from: A */
    public static final C1323b f5029A = m5779a("wvhec", "WEB_VIEW_HTTP_ERROR_COUNT");

    /* renamed from: B */
    public static final C1323b f5030B = m5779a("wvrec", "WEB_VIEW_RENDER_ERROR_COUNT");

    /* renamed from: C */
    public static final C1323b f5031C = m5779a("wvsem", "WEB_VIEW_SSL_ERROR_MESSAGES");

    /* renamed from: D */
    public static final C1323b f5032D = m5779a("wvruc", "WEB_VIEW_RENDERER_UNRESPONSIVE_COUNT");

    static {
        m5779a("sisw", "IS_STREAMING_WEBKIT");
        m5779a("surw", "UNABLE_TO_RETRIEVE_WEBKIT_HTML_STRING");
        m5779a("surp", "UNABLE_TO_PERSIST_WEBKIT_HTML_PLACEMENT_REPLACED_STRING");
        m5779a("swhp", "SUCCESSFULLY_PERSISTED_WEBKIT_HTML_STRING");
        m5779a("skr", "STOREKIT_REDIRECTED");
        m5779a("sklf", "STOREKIT_LOAD_FAILURE");
        m5779a("skps", "STOREKIT_PRELOAD_SKIPPED");
    }

    private C1323b(String str, String str2) {
        this.f5060E = str;
        this.f5061F = str2;
    }

    /* renamed from: a */
    private static C1323b m5779a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            Set<String> set = f5033G;
            if (set.contains(str)) {
                throw new IllegalArgumentException(C1676a.m4789h("Key has already been used: ", str));
            }
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("No debug name specified");
            }
            set.add(str);
            return new C1323b(str, str2);
        }
        throw new IllegalArgumentException("No key name specified");
    }
}
