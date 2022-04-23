package p131c.p135b.p136a.p148e.p151e;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;
/* renamed from: c.b.a.e.e.b */
/* loaded from: classes-dex2jar.jar:c/b/a/e/e/b.class */
public class C2261b {

    /* renamed from: a */
    public final String f8855a;

    /* renamed from: b */
    public final String f8856b;

    /* renamed from: c */
    public static final Set<String> f8831c = new HashSet(32);

    /* renamed from: d */
    public static final C2261b f8832d = m30561a("sas", "AD_SOURCE");

    /* renamed from: e */
    public static final C2261b f8833e = m30561a("srt", "AD_RENDER_TIME");

    /* renamed from: f */
    public static final C2261b f8834f = m30561a("sft", "AD_FETCH_TIME");

    /* renamed from: g */
    public static final C2261b f8835g = m30561a("sfs", "AD_FETCH_SIZE");

    /* renamed from: h */
    public static final C2261b f8836h = m30561a("sadb", "AD_DOWNLOADED_BYTES");

    /* renamed from: i */
    public static final C2261b f8837i = m30561a("sacb", "AD_CACHED_BYTES");

    /* renamed from: j */
    public static final C2261b f8838j = m30561a("stdl", "TIME_TO_DISPLAY_FROM_LOAD");

    /* renamed from: k */
    public static final C2261b f8839k = m30561a("stdi", "TIME_TO_DISPLAY_FROM_INIT");

    /* renamed from: l */
    public static final C2261b f8840l = m30561a("snas", "AD_NUMBER_IN_SESSION");

    /* renamed from: m */
    public static final C2261b f8841m = m30561a("snat", "AD_NUMBER_TOTAL");

    /* renamed from: n */
    public static final C2261b f8842n = m30561a("stah", "TIME_AD_HIDDEN_FROM_SHOW");

    /* renamed from: o */
    public static final C2261b f8843o = m30561a("stas", "TIME_TO_SKIP_FROM_SHOW");

    /* renamed from: p */
    public static final C2261b f8844p = m30561a("stac", "TIME_TO_CLICK_FROM_SHOW");

    /* renamed from: q */
    public static final C2261b f8845q = m30561a("stbe", "TIME_TO_EXPAND_FROM_SHOW");

    /* renamed from: r */
    public static final C2261b f8846r = m30561a("stbc", "TIME_TO_CONTRACT_FROM_SHOW");

    /* renamed from: s */
    public static final C2261b f8847s = m30561a("saan", "AD_SHOWN_WITH_ACTIVE_NETWORK");

    /* renamed from: t */
    public static final C2261b f8848t = m30561a("suvs", "INTERSTITIAL_USED_VIDEO_STREAM");

    /* renamed from: u */
    public static final C2261b f8849u = m30561a("sugs", "AD_USED_GRAPHIC_STREAM");

    /* renamed from: v */
    public static final C2261b f8850v = m30561a("svpv", "INTERSTITIAL_VIDEO_PERCENT_VIEWED");

    /* renamed from: w */
    public static final C2261b f8851w = m30561a("stpd", "INTERSTITIAL_PAUSED_DURATION");

    /* renamed from: x */
    public static final C2261b f8852x = m30561a("shsc", "HTML_RESOURCE_CACHE_SUCCESS_COUNT");

    /* renamed from: y */
    public static final C2261b f8853y = m30561a("shfc", "HTML_RESOURCE_CACHE_FAILURE_COUNT");

    /* renamed from: z */
    public static final C2261b f8854z = m30561a("schc", "AD_CANCELLED_HTML_CACHING");

    /* renamed from: A */
    public static final C2261b f8824A = m30561a("smwm", "AD_SHOWN_IN_MULTIWINDOW_MODE");

    /* renamed from: B */
    public static final C2261b f8825B = m30561a("vssc", "VIDEO_STREAM_STALLED_COUNT");

    /* renamed from: C */
    public static final C2261b f8826C = m30561a("wvem", "WEB_VIEW_ERROR_MESSAGES");

    /* renamed from: D */
    public static final C2261b f8827D = m30561a("wvhec", "WEB_VIEW_HTTP_ERROR_COUNT");

    /* renamed from: E */
    public static final C2261b f8828E = m30561a("wvrec", "WEB_VIEW_RENDER_ERROR_COUNT");

    /* renamed from: F */
    public static final C2261b f8829F = m30561a("wvsem", "WEB_VIEW_SSL_ERROR_MESSAGES");

    /* renamed from: G */
    public static final C2261b f8830G = m30561a("wvruc", "WEB_VIEW_RENDERER_UNRESPONSIVE_COUNT");

    static {
        m30561a("sisw", "IS_STREAMING_WEBKIT");
        m30561a("surw", "UNABLE_TO_RETRIEVE_WEBKIT_HTML_STRING");
        m30561a("surp", "UNABLE_TO_PERSIST_WEBKIT_HTML_PLACEMENT_REPLACED_STRING");
        m30561a("swhp", "SUCCESSFULLY_PERSISTED_WEBKIT_HTML_STRING");
        m30561a("skr", "STOREKIT_REDIRECTED");
        m30561a("sklf", "STOREKIT_LOAD_FAILURE");
        m30561a("skps", "STOREKIT_PRELOAD_SKIPPED");
    }

    public C2261b(String str, String str2) {
        this.f8855a = str;
        this.f8856b = str2;
    }

    /* renamed from: a */
    public static C2261b m30561a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No key name specified");
        } else if (f8831c.contains(str)) {
            throw new IllegalArgumentException("Key has already been used: " + str);
        } else if (!TextUtils.isEmpty(str2)) {
            f8831c.add(str);
            return new C2261b(str, str2);
        } else {
            throw new IllegalArgumentException("No debug name specified");
        }
    }

    /* renamed from: a */
    public String m30562a() {
        return this.f8855a;
    }

    /* renamed from: b */
    public String m30560b() {
        return this.f8856b;
    }
}
