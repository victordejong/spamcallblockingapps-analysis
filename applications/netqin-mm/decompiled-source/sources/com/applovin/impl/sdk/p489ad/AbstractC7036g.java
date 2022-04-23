package com.applovin.impl.sdk.p489ad;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.net.Uri;
import com.applovin.impl.adview.AbstractC6929h;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p138b.C2108p;
import p131c.p135b.p136a.p138b.C2112s;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p149a.C2238c;
import p131c.p135b.p136a.p148e.p151e.C2260a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: com.applovin.impl.sdk.ad.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/g.class */
public abstract class AbstractC7036g extends AppLovinAdBase {

    /* renamed from: e */
    public final List<Uri> f21690e = C2386e.m29985a();

    /* renamed from: f */
    public final AtomicBoolean f21691f = new AtomicBoolean();

    /* renamed from: g */
    public final AtomicBoolean f21692g = new AtomicBoolean();

    /* renamed from: h */
    public final AtomicReference<C2238c> f21693h = new AtomicReference<>();

    /* renamed from: i */
    public boolean f21694i;

    /* renamed from: j */
    public List<C2260a> f21695j;

    /* renamed from: k */
    public List<C2260a> f21696k;

    /* renamed from: l */
    public List<C2260a> f21697l;

    /* renamed from: m */
    public List<C2260a> f21698m;

    /* renamed from: n */
    public C7041e f21699n;

    /* renamed from: com.applovin.impl.sdk.ad.g$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/g$a.class */
    public enum EnumC7037a {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    /* renamed from: com.applovin.impl.sdk.ad.g$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/g$b.class */
    public enum EnumC7038b {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    /* renamed from: com.applovin.impl.sdk.ad.g$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/g$d.class */
    public enum EnumC7040d {
        RESIZE_ASPECT,
        RESIZE_ASPECT_FILL,
        RESIZE
    }

    /* renamed from: com.applovin.impl.sdk.ad.g$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/g$e.class */
    public class C7041e {

        /* renamed from: a */
        public final int f21712a;

        /* renamed from: b */
        public final int f21713b;

        /* renamed from: c */
        public final int f21714c;

        /* renamed from: d */
        public final int f21715d;

        /* renamed from: e */
        public final int f21716e;

        public C7041e(AbstractC7036g gVar) {
            this.f21712a = AppLovinSdkUtils.dpToPx(gVar.sdk.m30264d(), gVar.m18933X());
            this.f21713b = AppLovinSdkUtils.dpToPx(gVar.sdk.m30264d(), gVar.m18932Y());
            this.f21714c = AppLovinSdkUtils.dpToPx(gVar.sdk.m30264d(), gVar.m18931Z());
            this.f21715d = AppLovinSdkUtils.dpToPx(gVar.sdk.m30264d(), ((Integer) gVar.sdk.m30291a(C2251d.C2256e.f8636a1)).intValue());
            this.f21716e = AppLovinSdkUtils.dpToPx(gVar.sdk.m30264d(), ((Integer) gVar.sdk.m30291a(C2251d.C2256e.f8631Z0)).intValue());
        }
    }

    public AbstractC7036g(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, C2341l lVar) {
        super(jSONObject, jSONObject2, bVar, lVar);
    }

    /* renamed from: I0 */
    private String m18948I0() {
        String str = null;
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject != null) {
            str = stringFromAdObject.replace("{CLCODE}", getClCode());
        }
        return str;
    }

    /* renamed from: A */
    public abstract void mo18965A();

    /* renamed from: A0 */
    public AbstractC6929h.EnumC6930a m18964A0() {
        int intFromAdObject = getIntFromAdObject("close_style", -1);
        return intFromAdObject == -1 ? m18910c(hasVideoUrl()) : m18929a(intFromAdObject);
    }

    /* renamed from: B */
    public Map<String, String> m18963B() {
        HashMap hashMap = new HashMap();
        if (getBooleanFromAdObject("send_webview_http_headers", false)) {
            hashMap.putAll(C2070d.getHttpHeaders());
        }
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", false)) {
            hashMap.put("User-Agent", C2070d.m31130a(0L));
        }
        return hashMap;
    }

    /* renamed from: B0 */
    public AbstractC6929h.EnumC6930a m18962B0() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        return intFromAdObject == -1 ? m18964A0() : m18929a(intFromAdObject);
    }

    /* renamed from: C */
    public boolean m18961C() {
        return getBooleanFromAdObject("playback_requires_user_action", true);
    }

    /* renamed from: C0 */
    public boolean m18960C0() {
        return getBooleanFromAdObject("dismiss_on_skip", false);
    }

    /* renamed from: D */
    public boolean m18959D() {
        return getBooleanFromAdObject("sanitize_webview", false);
    }

    /* renamed from: D0 */
    public boolean m18958D0() {
        return getBooleanFromAdObject("html_resources_cached", false);
    }

    /* renamed from: E */
    public String m18957E() {
        String stringFromAdObject = getStringFromAdObject("base_url", "/");
        String str = stringFromAdObject;
        if ("null".equalsIgnoreCase(stringFromAdObject)) {
            str = null;
        }
        return str;
    }

    /* renamed from: E0 */
    public List<Uri> m18956E0() {
        return this.f21690e;
    }

    /* renamed from: F */
    public boolean m18955F() {
        return getBooleanFromAdObject("web_contents_debugging_enabled", false);
    }

    /* renamed from: F0 */
    public String m18954F0() {
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("video_button_properties", null);
        return jsonObjectFromAdObject != null ? C2390i.m29913b(jsonObjectFromAdObject, "video_button_html", "", this.sdk) : "";
    }

    /* renamed from: G */
    public C2112s m18953G() {
        C2112s sVar = null;
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject != null) {
            sVar = new C2112s(jsonObjectFromAdObject, this.sdk);
        }
        return sVar;
    }

    /* renamed from: G0 */
    public C2108p m18952G0() {
        return new C2108p(getJsonObjectFromAdObject("video_button_properties", null), this.sdk);
    }

    /* renamed from: H */
    public List<String> m18951H() {
        return C2386e.m29982a(getStringFromAdObject("wls", ""));
    }

    /* renamed from: H0 */
    public boolean mo18950H0() {
        return getBooleanFromAdObject("video_clickable", false);
    }

    /* renamed from: I */
    public List<String> m18949I() {
        return C2386e.m29982a(getStringFromAdObject("wlh", null));
    }

    /* renamed from: J */
    public boolean m18947J() {
        return getBooleanFromAdObject("ibbdfs", false);
    }

    /* renamed from: K */
    public boolean m18946K() {
        return getBooleanFromAdObject("ibbdfc", false);
    }

    /* renamed from: L */
    public Uri m18945L() {
        Uri uri = null;
        String stringFromAdObject = getStringFromAdObject("mute_image", null);
        if (C2422o.m29851b(stringFromAdObject)) {
            uri = Uri.parse(stringFromAdObject);
        }
        return uri;
    }

    /* renamed from: M */
    public Uri m18944M() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "");
        return C2422o.m29851b(stringFromAdObject) ? Uri.parse(stringFromAdObject) : null;
    }

    /* renamed from: N */
    public boolean m18943N() {
        return this.f21692g.get();
    }

    /* renamed from: O */
    public void m18942O() {
        this.f21692g.set(true);
    }

    /* renamed from: P */
    public C2238c m18941P() {
        return this.f21693h.getAndSet(null);
    }

    /* renamed from: Q */
    public EnumC7040d m18940Q() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        return "resize".equals(stringFromAdObject) ? EnumC7040d.RESIZE : "resize_aspect_fill".equals(stringFromAdObject) ? EnumC7040d.RESIZE_ASPECT_FILL : EnumC7040d.RESIZE_ASPECT;
    }

    /* renamed from: R */
    public int m18939R() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    /* renamed from: S */
    public boolean m18938S() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", false);
    }

    /* renamed from: T */
    public boolean m18937T() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", false);
    }

    /* renamed from: U */
    public boolean m18936U() {
        return getBooleanFromAdObject("vkuv", false);
    }

    /* renamed from: V */
    public boolean m18935V() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", false);
    }

    /* renamed from: W */
    public C7041e m18934W() {
        if (this.f21699n == null) {
            this.f21699n = new C7041e();
        }
        return this.f21699n;
    }

    /* renamed from: X */
    public int m18933X() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.m30291a(C2251d.C2256e.f8519C1)).intValue());
    }

    /* renamed from: Y */
    public int m18932Y() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.m30291a(C2251d.C2256e.f8524D1)).intValue());
    }

    /* renamed from: Z */
    public int m18931Z() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.m30291a(C2251d.C2256e.f8514B1)).intValue());
    }

    /* renamed from: a */
    public AbstractC6929h.EnumC6930a m18929a(int i) {
        return i == 1 ? AbstractC6929h.EnumC6930a.WHITE_ON_TRANSPARENT : i == 2 ? AbstractC6929h.EnumC6930a.INVISIBLE : AbstractC6929h.EnumC6930a.WHITE_ON_BLACK;
    }

    /* renamed from: a */
    public List<C2260a> m18928a(PointF pointF) {
        return m18927a(pointF, false);
    }

    /* renamed from: a */
    public final List<C2260a> m18927a(PointF pointF, boolean z) {
        List<C2260a> a;
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29798a("click_tracking_urls", this.adObject, m18913c(pointF, z), m18919b(pointF, z), m18963B(), this.sdk);
        }
        return a;
    }

    /* renamed from: a */
    public void m18926a(Uri uri) {
        this.f21690e.add(uri);
    }

    /* renamed from: a */
    public void m18925a(C2238c cVar) {
        this.f21693h.set(cVar);
    }

    /* renamed from: a */
    public void m18923a(boolean z) {
        try {
            synchronized (this.adObjectLock) {
                this.adObject.put("html_resources_cached", z);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public boolean m18930a() {
        return getBooleanFromAdObject("accelerate_hardware", false);
    }

    /* renamed from: a0 */
    public boolean m18922a0() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.m30291a(C2251d.C2256e.f8509A1));
    }

    /* renamed from: b */
    public final String m18919b(PointF pointF, boolean z) {
        String str = null;
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map<String, String> c = m18913c(pointF, z);
        if (stringFromAdObject != null) {
            str = C2422o.m29854a(stringFromAdObject, c);
        }
        return str;
    }

    /* renamed from: b */
    public List<C2260a> m18920b(PointF pointF) {
        List<C2260a> a;
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29798a("video_click_tracking_urls", this.adObject, m18913c(pointF, true), (String) null, m18963B(), this.sdk);
        }
        List<C2260a> list = a;
        if (a.isEmpty()) {
            list = m18927a(pointF, true);
        }
        return list;
    }

    /* renamed from: b */
    public void m18918b(Uri uri) {
        synchronized (this.adObjectLock) {
            C2390i.m29927a(this.adObject, "mute_image", uri, this.sdk);
        }
    }

    /* renamed from: b */
    public void m18916b(boolean z) {
        this.f21694i = z;
    }

    /* renamed from: b */
    public boolean m18921b() {
        return getBooleanFromAdObject("keep_screen_on", false);
    }

    /* renamed from: b0 */
    public boolean m18915b0() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.m30291a(C2251d.C2256e.f8599S1));
    }

    /* renamed from: c */
    public final AbstractC6929h.EnumC6930a m18910c(boolean z) {
        return z ? AbstractC6929h.EnumC6930a.WHITE_ON_TRANSPARENT : AbstractC6929h.EnumC6930a.WHITE_ON_BLACK;
    }

    /* renamed from: c */
    public final Map<String, String> m18913c(PointF pointF, boolean z) {
        Point a = C2388g.m29975a(this.sdk.m30264d());
        HashMap hashMap = new HashMap(5);
        hashMap.put("{CLCODE}", getClCode());
        hashMap.put("{CLICK_X}", String.valueOf(pointF.x));
        hashMap.put("{CLICK_Y}", String.valueOf(pointF.y));
        hashMap.put("{SCREEN_WIDTH}", String.valueOf(a.x));
        hashMap.put("{SCREEN_HEIGHT}", String.valueOf(a.y));
        hashMap.put("{IS_VIDEO_CLICK}", String.valueOf(z));
        return hashMap;
    }

    /* renamed from: c */
    public void m18912c(Uri uri) {
        synchronized (this.adObjectLock) {
            C2390i.m29927a(this.adObject, "unmute_image", uri, this.sdk);
        }
    }

    /* renamed from: c */
    public boolean m18914c() {
        return getBooleanFromAdObject("hide_close_on_exit_graphic", false);
    }

    /* renamed from: c0 */
    public boolean m18909c0() {
        return getBooleanFromAdObject("unhide_adview_on_render", false);
    }

    /* renamed from: d */
    public boolean m18908d() {
        return getBooleanFromAdObject("hide_close_on_exit", false);
    }

    /* renamed from: d0 */
    public long m18906d0() {
        long j = -1;
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject >= 0) {
            j = TimeUnit.SECONDS.toMillis(longFromAdObject);
        }
        return j;
    }

    /* renamed from: e */
    public boolean m18905e() {
        return getBooleanFromAdObject("lock_current_orientation", false);
    }

    /* renamed from: e0 */
    public int m18903e0() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    /* renamed from: f */
    public int m18902f() {
        return getIntFromAdObject("countdown_length", 0);
    }

    /* renamed from: f0 */
    public boolean m18900f0() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", true);
    }

    /* renamed from: g */
    public int m18899g() {
        int parseColor = Color.parseColor("#C8FFFFFF");
        String stringFromAdObject = getStringFromAdObject("countdown_color", null);
        if (C2422o.m29851b(stringFromAdObject)) {
            parseColor = Color.parseColor(stringFromAdObject);
        }
        return parseColor;
    }

    /* renamed from: g0 */
    public AtomicBoolean m18897g0() {
        return this.f21691f;
    }

    /* renamed from: h */
    public int m18896h() {
        String stringFromAdObject = getStringFromAdObject("video_background_color", null);
        return C2422o.m29851b(stringFromAdObject) ? Color.parseColor(stringFromAdObject) : DrawableConstants.CtaButton.BACKGROUND_COLOR;
    }

    /* renamed from: h0 */
    public boolean m18895h0() {
        return getBooleanFromAdObject("show_nia", false);
    }

    /* renamed from: i */
    public int m18894i() {
        int i = hasVideoUrl() ? DrawableConstants.CtaButton.BACKGROUND_COLOR : -1157627904;
        String stringFromAdObject = getStringFromAdObject("graphic_background_color", null);
        if (C2422o.m29851b(stringFromAdObject)) {
            i = Color.parseColor(stringFromAdObject);
        }
        return i;
    }

    /* renamed from: i0 */
    public String m18893i0() {
        return getStringFromAdObject("nia_title", "");
    }

    /* renamed from: j */
    public EnumC7037a m18892j() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (C2422o.m29851b(stringFromAdObject)) {
            if ("dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC7037a.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC7037a.DO_NOT_DISMISS;
            }
        }
        return EnumC7037a.UNSPECIFIED;
    }

    /* renamed from: j0 */
    public String m18891j0() {
        return getStringFromAdObject("nia_message", "");
    }

    /* renamed from: k */
    public List<String> m18890k() {
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        return stringFromAdObject != null ? C2386e.m29982a(stringFromAdObject) : this.sdk.m30275b(C2251d.C2256e.f8553J0);
    }

    /* renamed from: k0 */
    public String m18889k0() {
        return getStringFromAdObject("nia_button_title", "");
    }

    /* renamed from: l */
    public String m18888l() {
        return getStringFromAdObject("cache_prefix", null);
    }

    /* renamed from: l0 */
    public boolean m18887l0() {
        return getBooleanFromAdObject("avoms", false);
    }

    /* renamed from: m */
    public boolean m18886m() {
        return getBooleanFromAdObject("daome", true);
    }

    /* renamed from: m0 */
    public boolean m18885m0() {
        return this.f21694i;
    }

    /* renamed from: n */
    public boolean m18884n() {
        return getBooleanFromAdObject("utpfc", false);
    }

    /* renamed from: n0 */
    public List<C2260a> m18883n0() {
        List<C2260a> a;
        List<C2260a> list = this.f21695j;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29801a("video_end_urls", this.adObject, getClCode(), m18948I0(), this.sdk);
            this.f21695j = a;
        }
        return a;
    }

    /* renamed from: o */
    public boolean m18882o() {
        return getBooleanFromAdObject("sscomt", false);
    }

    /* renamed from: o0 */
    public List<C2260a> m18881o0() {
        List<C2260a> a;
        List<C2260a> list = this.f21696k;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29801a("ad_closed_urls", this.adObject, getClCode(), null, this.sdk);
            this.f21696k = a;
        }
        return a;
    }

    /* renamed from: p */
    public String m18880p() {
        return getStringFromFullResponse("event_id", null);
    }

    /* renamed from: p0 */
    public List<C2260a> m18879p0() {
        List<C2260a> a;
        List<C2260a> list = this.f21697l;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29801a("app_killed_urls", this.adObject, getClCode(), null, this.sdk);
            this.f21697l = a;
        }
        return a;
    }

    /* renamed from: q */
    public boolean m18878q() {
        return getBooleanFromAdObject("progress_bar_enabled", false);
    }

    /* renamed from: q0 */
    public List<C2260a> mo18877q0() {
        List<C2260a> a;
        List<C2260a> list = this.f21698m;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29799a("imp_urls", this.adObject, getClCode(), C2386e.m29983a("{SOC}", String.valueOf(m18885m0())), null, m18963B(), this.sdk);
            this.f21698m = a;
        }
        return a;
    }

    /* renamed from: r */
    public int m18876r() {
        String stringFromAdObject = getStringFromAdObject("progress_bar_color", "#C8FFFFFF");
        return C2422o.m29851b(stringFromAdObject) ? Color.parseColor(stringFromAdObject) : 0;
    }

    /* renamed from: r0 */
    public abstract String mo18875r0();

    /* renamed from: s */
    public boolean m18874s() {
        return getBooleanFromAdObject("vs_buffer_indicator_enabled", false);
    }

    /* renamed from: s0 */
    public boolean mo18873s0() {
        this.sdk.m30262d0().m30039e("DirectAd", "Attempting to invoke isVideoStream() from base ad class");
        return false;
    }

    /* renamed from: t */
    public boolean m18872t() {
        return getBooleanFromAdObject("vs_buffer_indicator_initial_load_enabled", false);
    }

    /* renamed from: t0 */
    public Uri mo18871t0() {
        this.sdk.m30262d0().m30039e("DirectAd", "Attempting to invoke getVideoUri() from base ad class");
        return null;
    }

    /* renamed from: u */
    public int m18870u() {
        return getIntFromAdObject("vs_buffer_indicator_style", 16842874);
    }

    /* renamed from: u0 */
    public Uri mo18869u0() {
        this.sdk.m30262d0().m30039e("DirectAd", "Attempting to invoke getVideoClickDestinationUri() from base ad class");
        return null;
    }

    /* renamed from: v */
    public int m18868v() {
        String stringFromAdObject = getStringFromAdObject("vs_buffer_indicator_color", null);
        return C2422o.m29851b(stringFromAdObject) ? Color.parseColor(stringFromAdObject) : -1;
    }

    /* renamed from: v0 */
    public boolean m18867v0() {
        return getBooleanFromAdObject("fs_2", false);
    }

    /* renamed from: w */
    public int m18866w() {
        int parseColor = Color.parseColor("#66000000");
        String stringFromAdObject = getStringFromAdObject("vs_buffer_indicator_bg_color", null);
        if (C2422o.m29851b(stringFromAdObject)) {
            parseColor = Color.parseColor(stringFromAdObject);
        }
        return parseColor;
    }

    /* renamed from: w0 */
    public EnumC7038b m18865w0() {
        String upperCase = getStringFromAdObject("ad_target", EnumC7038b.DEFAULT.toString()).toUpperCase(Locale.ENGLISH);
        return "ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase) ? EnumC7038b.ACTIVITY_PORTRAIT : "ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase) ? EnumC7038b.ACTIVITY_LANDSCAPE : EnumC7038b.DEFAULT;
    }

    /* renamed from: x */
    public boolean m18864x() {
        return getBooleanFromAdObject("clear_dismissible", false);
    }

    /* renamed from: x0 */
    public long m18863x0() {
        return getLongFromAdObject("close_delay", 0L);
    }

    /* renamed from: y */
    public int m18862y() {
        int a;
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29794a(this.adObject);
        }
        return a;
    }

    /* renamed from: y0 */
    public long m18861y0() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    /* renamed from: z */
    public int m18860z() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m18859z0() {
        /*
            r5 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            java.lang.String r1 = "close_delay_graphic"
            r2 = 0
            long r0 = r0.getLongFromAdObject(r1, r2)
            r8 = r0
            r0 = r5
            boolean r0 = r0.m18867v0()
            if (r0 == 0) goto L_0x0031
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002e
            r0 = r8
            r1 = -2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002b
            r0 = r6
            r10 = r0
            goto L_0x002e
        L_0x002b:
            r0 = r8
            r10 = r0
        L_0x002e:
            r0 = r10
            return r0
        L_0x0031:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.p489ad.AbstractC7036g.m18859z0():long");
    }
}
