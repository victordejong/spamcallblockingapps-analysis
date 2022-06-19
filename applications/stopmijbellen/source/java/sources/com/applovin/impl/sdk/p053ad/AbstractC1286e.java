package com.applovin.impl.sdk.p053ad;

import android.graphics.Point;
import android.graphics.PointF;
import android.net.Uri;
import com.applovin.impl.adview.AbstractC0996i;
import com.applovin.impl.adview.C1024s;
import com.applovin.impl.adview.C1028v;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1554z;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1322a;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.ad.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/e.class */
public abstract class AbstractC1286e extends AppLovinAdImpl {

    /* renamed from: a */
    private final List<Uri> f4589a = CollectionUtils.synchronizedList();

    /* renamed from: b */
    private final AtomicBoolean f4590b = new AtomicBoolean();

    /* renamed from: c */
    private final AtomicBoolean f4591c = new AtomicBoolean();

    /* renamed from: d */
    private final AtomicReference<C1311c> f4592d = new AtomicReference<>();

    /* renamed from: e */
    private boolean f4593e;

    /* renamed from: f */
    private List<C1322a> f4594f;

    /* renamed from: g */
    private List<C1322a> f4595g;

    /* renamed from: h */
    private List<C1322a> f4596h;

    /* renamed from: i */
    private List<C1322a> f4597i;

    /* renamed from: j */
    private C1290c f4598j;

    /* renamed from: com.applovin.impl.sdk.ad.e$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/e$a.class */
    public enum EnumC1288a {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    /* renamed from: com.applovin.impl.sdk.ad.e$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/e$b.class */
    public enum EnumC1289b {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    /* renamed from: com.applovin.impl.sdk.ad.e$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/e$c.class */
    public class C1290c {

        /* renamed from: a */
        public final int f4607a;

        /* renamed from: b */
        public final int f4608b;

        /* renamed from: c */
        public final int f4609c;

        /* renamed from: d */
        public final int f4610d;

        /* renamed from: e */
        public final int f4611e;

        private C1290c() {
            AbstractC1286e.this = r6;
            this.f4607a = AppLovinSdkUtils.dpToPx(r6.sdk.m5532K(), r6.m5973T());
            this.f4608b = AppLovinSdkUtils.dpToPx(r6.sdk.m5532K(), r6.m5972U());
            this.f4609c = AppLovinSdkUtils.dpToPx(r6.sdk.m5532K(), r6.m5971V());
            this.f4610d = AppLovinSdkUtils.dpToPx(r6.sdk.m5532K(), ((Integer) r6.sdk.m5511a(C1314b.f4778bG)).intValue());
            this.f4611e = AppLovinSdkUtils.dpToPx(r6.sdk.m5532K(), ((Integer) r6.sdk.m5511a(C1314b.f4777bF)).intValue());
        }
    }

    /* renamed from: com.applovin.impl.sdk.ad.e$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/e$d.class */
    public enum EnumC1291d {
        RESIZE_ASPECT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public AbstractC1286e(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, C1408l c1408l) {
        super(jSONObject, jSONObject2, enumC1282b, c1408l);
    }

    /* renamed from: b */
    private String m5923b(PointF pointF, boolean z) {
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map<String, String> m5918c = m5918c(pointF, z);
        String str = null;
        if (stringFromAdObject != null) {
            str = StringUtils.replace(stringFromAdObject, m5918c);
        }
        return str;
    }

    /* renamed from: b */
    private List<Integer> m5924b() {
        return getIntegerListFromAdObject("multi_close_style", null);
    }

    /* renamed from: c */
    private AbstractC0996i.EnumC0997a m5915c(boolean z) {
        return z ? AbstractC0996i.EnumC0997a.WHITE_ON_TRANSPARENT : AbstractC0996i.EnumC0997a.WHITE_ON_BLACK;
    }

    /* renamed from: c */
    private Map<String, String> m5918c(PointF pointF, boolean z) {
        Point m5075a = C1492g.m5075a(this.sdk.m5532K());
        HashMap hashMap = new HashMap(5);
        hashMap.put(Utils.MACRO_CLCODE, getClCode());
        hashMap.put(Utils.MACRO_CLICK_X, String.valueOf(pointF.x));
        hashMap.put(Utils.MACRO_CLICK_Y, String.valueOf(pointF.y));
        hashMap.put(Utils.MACRO_SCREEN_WIDTH, String.valueOf(m5075a.x));
        hashMap.put(Utils.MACRO_SCREEN_HEIGHT, String.valueOf(m5075a.y));
        hashMap.put(Utils.MACRO_IS_VIDEO_CLICK, String.valueOf(z));
        return hashMap;
    }

    /* renamed from: d */
    private String m5914d() {
        String str = null;
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject != null) {
            str = stringFromAdObject.replace(Utils.MACRO_CLCODE, getClCode());
        }
        return str;
    }

    /* renamed from: A */
    public C1024s m5992A() {
        return new C1024s(getJsonObjectFromAdObject("video_button_properties", null), this.sdk);
    }

    /* renamed from: B */
    public boolean mo5991B() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE);
    }

    /* renamed from: C */
    public boolean m5990C() {
        return getBooleanFromAdObject("lock_current_orientation", Boolean.FALSE);
    }

    /* renamed from: D */
    public EnumC1288a m5989D() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            if ("dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC1288a.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC1288a.DO_NOT_DISMISS;
            }
        }
        return EnumC1288a.UNSPECIFIED;
    }

    /* renamed from: E */
    public List<String> m5988E() {
        String stringFromAdObject = getStringFromAdObject("required_html_resources", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : Collections.emptyList();
    }

    /* renamed from: F */
    public List<String> m5987F() {
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : this.sdk.m5480b(C1314b.f4814bq);
    }

    /* renamed from: G */
    public String m5986G() {
        return getStringFromAdObject("cache_prefix", null);
    }

    /* renamed from: H */
    public boolean m5985H() {
        return getBooleanFromAdObject("sscomt", Boolean.FALSE);
    }

    /* renamed from: I */
    public String m5984I() {
        return getStringFromFullResponse("event_id", null);
    }

    /* renamed from: J */
    public boolean m5983J() {
        return getBooleanFromAdObject("progress_bar_enabled", Boolean.FALSE);
    }

    /* renamed from: K */
    public int m5982K() {
        return getColorFromAdObject("progress_bar_color", -922746881);
    }

    /* renamed from: L */
    public int m5981L() {
        int videoCompletionPercent;
        synchronized (this.adObjectLock) {
            videoCompletionPercent = Utils.getVideoCompletionPercent(this.adObject);
        }
        return videoCompletionPercent;
    }

    /* renamed from: M */
    public int m5980M() {
        synchronized (this.adObjectLock) {
            int i = JsonUtils.getInt(this.adObject, "graphic_completion_percent", -1);
            if (i < 0 || i > 100) {
                return 90;
            }
            return i;
        }
    }

    /* renamed from: N */
    public int m5979N() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    /* renamed from: O */
    public int m5978O() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    /* renamed from: P */
    public boolean m5977P() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", Boolean.FALSE);
    }

    /* renamed from: Q */
    public boolean m5976Q() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", Boolean.FALSE);
    }

    /* renamed from: R */
    public boolean m5975R() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", Boolean.FALSE);
    }

    /* renamed from: S */
    public C1290c m5974S() {
        if (this.f4598j == null) {
            this.f4598j = new C1290c();
        }
        return this.f4598j;
    }

    /* renamed from: T */
    public int m5973T() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.m5511a(C1314b.f4859cj)).intValue());
    }

    /* renamed from: U */
    public int m5972U() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.m5511a(C1314b.f4860ck)).intValue());
    }

    /* renamed from: V */
    public int m5971V() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.m5511a(C1314b.f4858ci)).intValue());
    }

    /* renamed from: W */
    public boolean m5970W() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.m5511a(C1314b.f4857ch));
    }

    /* renamed from: X */
    public boolean m5969X() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.m5511a(C1314b.f4864co));
    }

    /* renamed from: Y */
    public long m5968Y() {
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject >= 0) {
            return TimeUnit.SECONDS.toMillis(longFromAdObject);
        }
        return -1L;
    }

    /* renamed from: Z */
    public int m5967Z() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    /* renamed from: a */
    public AbstractC0996i.EnumC0997a m5965a(int i) {
        return i == 1 ? AbstractC0996i.EnumC0997a.WHITE_ON_TRANSPARENT : i == 2 ? AbstractC0996i.EnumC0997a.INVISIBLE : i == 3 ? AbstractC0996i.EnumC0997a.TRANSPARENT_SKIP : AbstractC0996i.EnumC0997a.WHITE_ON_BLACK;
    }

    /* renamed from: a */
    public List<C1322a> m5964a(PointF pointF) {
        List<C1322a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("video_click_tracking_urls", this.adObject, m5918c(pointF, true), null, m5934aq(), m5895w(), this.sdk);
        }
        List<C1322a> list = postbacks;
        if (postbacks.isEmpty()) {
            list = m5963a(pointF, true);
        }
        return list;
    }

    /* renamed from: a */
    public List<C1322a> m5963a(PointF pointF, boolean z) {
        List<C1322a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("click_tracking_urls", this.adObject, m5918c(pointF, z), m5923b(pointF, z), m5934aq(), m5895w(), this.sdk);
        }
        return postbacks;
    }

    /* renamed from: a */
    public abstract void mo5966a();

    /* renamed from: a */
    public void m5961a(C1311c c1311c) {
        this.f4592d.set(c1311c);
    }

    /* renamed from: a */
    public void m5960a(boolean z) {
        try {
            synchronized (this.adObjectLock) {
                this.adObject.put("html_resources_cached", z);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: aA */
    public boolean m5959aA() {
        return this.f4591c.get();
    }

    /* renamed from: aB */
    public void m5958aB() {
        this.f4591c.set(true);
    }

    /* renamed from: aC */
    public C1311c m5957aC() {
        return this.f4592d.getAndSet(null);
    }

    /* renamed from: aD */
    public boolean m5956aD() {
        Boolean bool = Boolean.FALSE;
        return getBooleanFromAdObject("suep", bool) || (getBooleanFromAdObject("suepfs", bool) && mo5911e());
    }

    /* renamed from: aE */
    public boolean m5955aE() {
        return getBooleanFromAdObject("rwvbv", Boolean.FALSE);
    }

    /* renamed from: aF */
    public long m5954aF() {
        return getLongFromAdObject("vrsbt_ms", TimeUnit.SECONDS.toMillis(3L));
    }

    /* renamed from: aG */
    public boolean m5953aG() {
        return getBooleanFromAdObject("upiosp", Boolean.FALSE);
    }

    /* renamed from: aH */
    public boolean m5952aH() {
        return getBooleanFromAdObject("web_video", Boolean.FALSE);
    }

    /* renamed from: aI */
    public EnumC1291d m5951aI() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        return "top".equals(stringFromAdObject) ? EnumC1291d.TOP : "bottom".equals(stringFromAdObject) ? EnumC1291d.BOTTOM : "left".equals(stringFromAdObject) ? EnumC1291d.LEFT : "right".equals(stringFromAdObject) ? EnumC1291d.RIGHT : EnumC1291d.RESIZE_ASPECT;
    }

    /* renamed from: aa */
    public boolean m5950aa() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", Boolean.TRUE);
    }

    /* renamed from: ab */
    public AtomicBoolean m5949ab() {
        return this.f4590b;
    }

    /* renamed from: ac */
    public boolean m5948ac() {
        return getBooleanFromAdObject("show_nia", Boolean.FALSE);
    }

    /* renamed from: ad */
    public String m5947ad() {
        return getStringFromAdObject("nia_title", "");
    }

    /* renamed from: ae */
    public String m5946ae() {
        return getStringFromAdObject("nia_message", "");
    }

    /* renamed from: af */
    public String m5945af() {
        return getStringFromAdObject("nia_button_title", "");
    }

    /* renamed from: ag */
    public boolean m5944ag() {
        return getBooleanFromAdObject("avoms", Boolean.FALSE);
    }

    /* renamed from: ah */
    public boolean m5943ah() {
        return this.f4593e;
    }

    /* renamed from: ai */
    public boolean m5942ai() {
        return getBooleanFromAdObject("show_rewarded_interstitial_overlay_alert", Boolean.valueOf(AppLovinAdType.AUTO_INCENTIVIZED == getType()));
    }

    /* renamed from: aj */
    public String m5941aj() {
        return getStringFromAdObject("text_rewarded_inter_alert_title", "Watch a video to earn a reward!");
    }

    /* renamed from: ak */
    public String m5940ak() {
        return getStringFromAdObject("text_rewarded_inter_alert_body", "");
    }

    /* renamed from: al */
    public String m5939al() {
        return getStringFromAdObject("text_rewarded_inter_alert_ok_action", "OK!");
    }

    /* renamed from: am */
    public List<C1322a> m5938am() {
        List<C1322a> postbacks;
        List<C1322a> list = this.f4594f;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("video_end_urls", this.adObject, getClCode(), m5914d(), this.sdk);
            this.f4594f = postbacks;
        }
        return postbacks;
    }

    /* renamed from: an */
    public List<C1322a> m5937an() {
        List<C1322a> postbacks;
        List<C1322a> list = this.f4595g;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("ad_closed_urls", this.adObject, getClCode(), (String) null, this.sdk);
            this.f4595g = postbacks;
        }
        return postbacks;
    }

    /* renamed from: ao */
    public List<C1322a> m5936ao() {
        List<C1322a> postbacks;
        List<C1322a> list = this.f4596h;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("app_killed_urls", this.adObject, getClCode(), (String) null, this.sdk);
            this.f4596h = postbacks;
        }
        return postbacks;
    }

    /* renamed from: ap */
    public List<C1322a> mo5935ap() {
        List<C1322a> postbacks;
        List<C1322a> list = this.f4597i;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("imp_urls", this.adObject, getClCode(), CollectionUtils.map(Utils.SHOWN_OUT_OF_CONTEXT_MACRO, String.valueOf(m5943ah())), null, m5934aq(), m5895w(), this.sdk);
            this.f4597i = postbacks;
        }
        return postbacks;
    }

    /* renamed from: aq */
    public Map<String, String> m5934aq() {
        HashMap hashMap = new HashMap();
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", Boolean.FALSE)) {
            hashMap.put("User-Agent", C1554z.m4893a());
        }
        return hashMap;
    }

    /* renamed from: ar */
    public boolean m5933ar() {
        return getBooleanFromAdObject("playback_requires_user_action", Boolean.TRUE);
    }

    /* renamed from: as */
    public String m5932as() {
        String stringFromAdObject = getStringFromAdObject("base_url", "/");
        String str = stringFromAdObject;
        if ("null".equalsIgnoreCase(stringFromAdObject)) {
            str = null;
        }
        return str;
    }

    /* renamed from: at */
    public boolean m5931at() {
        return getBooleanFromAdObject("web_contents_debugging_enabled", Boolean.FALSE);
    }

    /* renamed from: au */
    public C1028v m5930au() {
        C1028v c1028v = null;
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject != null) {
            c1028v = new C1028v(jsonObjectFromAdObject);
        }
        return c1028v;
    }

    /* renamed from: av */
    public int m5929av() {
        return getIntFromAdObject("whalt", Utils.isBML(getSize()) ? 1 : ((Boolean) this.sdk.m5511a(C1314b.f4939eL)).booleanValue() ? 0 : -1);
    }

    /* renamed from: aw */
    public List<String> m5928aw() {
        return CollectionUtils.explode(getStringFromAdObject("wls", ""));
    }

    /* renamed from: ax */
    public List<String> m5927ax() {
        return CollectionUtils.explode(getStringFromAdObject("wlh", null));
    }

    /* renamed from: ay */
    public Uri m5926ay() {
        Uri uri = null;
        String stringFromAdObject = getStringFromAdObject("mute_image", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            uri = Uri.parse(stringFromAdObject);
        }
        return uri;
    }

    /* renamed from: az */
    public Uri m5925az() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "");
        return StringUtils.isValidString(stringFromAdObject) ? Uri.parse(stringFromAdObject) : null;
    }

    /* renamed from: b */
    public void m5922b(Uri uri) {
        this.f4589a.add(uri);
    }

    /* renamed from: b */
    public void m5920b(boolean z) {
        this.f4593e = z;
    }

    /* renamed from: c */
    public abstract String mo5919c();

    /* renamed from: c */
    public void m5917c(Uri uri) {
        synchronized (this.adObjectLock) {
            JsonUtils.putObject(this.adObject, "mute_image", uri);
        }
    }

    /* renamed from: d */
    public void m5913d(Uri uri) {
        synchronized (this.adObjectLock) {
            JsonUtils.putObject(this.adObject, "unmute_image", uri);
        }
    }

    /* renamed from: e */
    public boolean mo5911e() {
        this.sdk.m5542A().m5111e("DirectAd", "Attempting to invoke isVideoStream() from base ad class");
        return false;
    }

    /* renamed from: g */
    public Uri mo5908g() {
        this.sdk.m5542A().m5111e("DirectAd", "Attempting to invoke getVideoUri() from base ad class");
        return null;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources() {
        return Collections.emptyList();
    }

    /* renamed from: i */
    public Uri mo5906i() {
        this.sdk.m5542A().m5111e("DirectAd", "Attempting to invoke getClickDestinationUri() from base ad class");
        return null;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public abstract boolean isOpenMeasurementEnabled();

    /* renamed from: j */
    public Uri mo5905j() {
        this.sdk.m5542A().m5111e("DirectAd", "Attempting to invoke getVideoClickDestinationUri() from base ad class");
        return null;
    }

    /* renamed from: n */
    public EnumC1289b m5904n() {
        EnumC1289b enumC1289b = EnumC1289b.DEFAULT;
        String upperCase = getStringFromAdObject("ad_target", enumC1289b.toString()).toUpperCase(Locale.ENGLISH);
        if ("ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase)) {
            return EnumC1289b.ACTIVITY_PORTRAIT;
        }
        if ("ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase)) {
            enumC1289b = EnumC1289b.ACTIVITY_LANDSCAPE;
        }
        return enumC1289b;
    }

    /* renamed from: o */
    public long m5903o() {
        return getLongFromAdObject("close_delay", 0L);
    }

    /* renamed from: p */
    public long m5902p() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* renamed from: q */
    public long m5901q() {
        List<Integer> m5900r = m5900r();
        ?? longFromAdObject = getLongFromAdObject("close_delay_graphic", ((m5900r == null || m5900r.size() <= 0) ? false : (long) m5900r.get(0).intValue()) == true ? 1L : 0L);
        ?? r9 = 0;
        if (longFromAdObject != -1) {
            r9 = longFromAdObject == -2 ? (char) 0 : longFromAdObject;
        }
        return r9;
    }

    /* renamed from: r */
    public List<Integer> m5900r() {
        return getIntegerListFromAdObject("multi_close_delay_graphic", null);
    }

    /* renamed from: s */
    public AbstractC0996i.EnumC0997a m5899s() {
        List<Integer> m5924b = m5924b();
        int intFromAdObject = getIntFromAdObject("close_style", (m5924b == null || m5924b.size() <= 0) ? -1 : m5924b.get(0).intValue());
        return intFromAdObject == -1 ? m5915c(hasVideoUrl()) : m5965a(intFromAdObject);
    }

    /* renamed from: t */
    public List<AbstractC0996i.EnumC0997a> m5898t() {
        List<Integer> m5924b = m5924b();
        if (m5924b != null) {
            ArrayList arrayList = new ArrayList(m5924b.size());
            for (Integer num : m5924b) {
                arrayList.add(m5965a(num.intValue()));
            }
            return arrayList;
        }
        return null;
    }

    /* renamed from: u */
    public AbstractC0996i.EnumC0997a m5897u() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        return intFromAdObject == -1 ? m5899s() : m5965a(intFromAdObject);
    }

    /* renamed from: v */
    public boolean m5896v() {
        return getBooleanFromAdObject("dismiss_on_skip", Boolean.FALSE);
    }

    /* renamed from: w */
    public boolean m5895w() {
        return getBooleanFromAdObject("fire_postbacks_from_webview", Boolean.FALSE);
    }

    /* renamed from: x */
    public boolean m5894x() {
        return getBooleanFromAdObject("html_resources_cached", Boolean.FALSE);
    }

    /* renamed from: y */
    public List<Uri> m5893y() {
        return this.f4589a;
    }

    /* renamed from: z */
    public String m5892z() {
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("video_button_properties", null);
        return jsonObjectFromAdObject != null ? JsonUtils.getString(jsonObjectFromAdObject, "video_button_html", "") : "";
    }
}
