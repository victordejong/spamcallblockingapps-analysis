package com.bytedance.sdk.openadsdk.core.p154e;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4799d;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.pubnative.lite.sdk.models.APIAsset;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/i.class */
public class C4557i {

    /* renamed from: A */
    private C4565o f16530A;

    /* renamed from: B */
    private boolean f16531B;

    /* renamed from: C */
    private boolean f16532C;

    /* renamed from: D */
    private int f16533D;

    /* renamed from: E */
    private Map<String, Object> f16534E;

    /* renamed from: F */
    private C4558a f16535F;

    /* renamed from: G */
    private boolean f16536G;

    /* renamed from: H */
    private int f16537H;

    /* renamed from: I */
    private String f16538I;

    /* renamed from: N */
    private AdSlot f16543N;

    /* renamed from: O */
    private int f16544O;

    /* renamed from: Q */
    private String f16546Q;

    /* renamed from: U */
    private JSONObject f16550U;

    /* renamed from: W */
    private int f16552W;

    /* renamed from: X */
    private String f16553X;

    /* renamed from: Y */
    private String f16554Y;

    /* renamed from: Z */
    private C4552f f16555Z;

    /* renamed from: a */
    private int f16556a;

    /* renamed from: b */
    private C4556h f16557b;

    /* renamed from: c */
    private C4556h f16558c;

    /* renamed from: d */
    private String f16559d;

    /* renamed from: f */
    private String f16561f;

    /* renamed from: j */
    private String f16565j;

    /* renamed from: k */
    private String f16566k;

    /* renamed from: l */
    private String f16567l;

    /* renamed from: n */
    private C4546b f16569n;

    /* renamed from: o */
    private C4551e f16570o;

    /* renamed from: p */
    private int f16571p;

    /* renamed from: q */
    private String f16572q;

    /* renamed from: r */
    private String f16573r;

    /* renamed from: x */
    private long f16579x;

    /* renamed from: y */
    private int f16580y;

    /* renamed from: z */
    private int f16581z;

    /* renamed from: e */
    private List<C4556h> f16560e = new ArrayList();

    /* renamed from: g */
    private List<String> f16562g = new ArrayList();

    /* renamed from: h */
    private List<String> f16563h = new ArrayList();

    /* renamed from: i */
    private List<String> f16564i = new ArrayList();

    /* renamed from: m */
    private String f16568m = "0";

    /* renamed from: s */
    private String f16574s = "";

    /* renamed from: t */
    private int f16575t = 0;

    /* renamed from: u */
    private int f16576u = 2;

    /* renamed from: v */
    private List<FilterWord> f16577v = new ArrayList();

    /* renamed from: w */
    private int f16578w = 0;

    /* renamed from: J */
    private String f16539J = "";

    /* renamed from: K */
    private C4547c f16540K = new C4547c();

    /* renamed from: L */
    private int f16541L = -200;

    /* renamed from: M */
    private int f16542M = 0;

    /* renamed from: P */
    private int f16545P = 1;

    /* renamed from: R */
    private int f16547R = 0;

    /* renamed from: S */
    private int f16548S = 0;

    /* renamed from: T */
    private int f16549T = 0;

    /* renamed from: V */
    private int f16551V = 1;

    /* renamed from: com.bytedance.sdk.openadsdk.core.e.i$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/i$a.class */
    public static class C4558a {

        /* renamed from: a */
        private String f16582a;

        /* renamed from: b */
        private String f16583b;

        /* renamed from: c */
        private String f16584c;

        /* renamed from: d */
        private String f16585d;

        /* renamed from: e */
        private String f16586e;

        /* renamed from: f */
        private String f16587f;

        /* renamed from: g */
        private String f16588g;

        /* renamed from: a */
        public String m35133a() {
            return this.f16587f;
        }

        /* renamed from: a */
        public void m35132a(String str) {
            this.f16587f = str;
        }

        /* renamed from: b */
        public String m35131b() {
            return this.f16582a;
        }

        /* renamed from: b */
        public void m35130b(String str) {
            this.f16582a = str;
        }

        /* renamed from: c */
        public String m35129c() {
            return this.f16583b;
        }

        /* renamed from: c */
        public void m35128c(String str) {
            this.f16583b = str;
        }

        /* renamed from: d */
        public String m35127d() {
            return this.f16584c;
        }

        /* renamed from: d */
        public void m35126d(String str) {
            this.f16584c = str;
        }

        /* renamed from: e */
        public String m35125e() {
            return this.f16585d;
        }

        /* renamed from: e */
        public void m35124e(String str) {
            this.f16585d = str;
        }

        /* renamed from: f */
        public String m35123f() {
            return this.f16586e;
        }

        /* renamed from: f */
        public void m35122f(String str) {
            this.f16586e = str;
        }

        /* renamed from: g */
        public String m35121g() {
            return this.f16588g;
        }

        /* renamed from: g */
        public void m35120g(String str) {
            this.f16588g = str;
        }
    }

    /* renamed from: a */
    public static boolean m35209a(C4557i c4557i) {
        return c4557i != null && c4557i.m35137w();
    }

    /* renamed from: a */
    public static boolean m35208a(C4557i c4557i, boolean z, boolean z2) {
        C4565o c4565o;
        if (c4557i == null || (c4565o = c4557i.f16530A) == null || c4565o.m35063a() != 1) {
            C5478q.m32112b("MaterialMeta", "can show end card follow js WebViewClient");
            return z;
        }
        C5478q.m32112b("MaterialMeta", "can show end card follow js");
        return z2;
    }

    /* renamed from: b */
    private JSONObject m35193b(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (!filterWord.isValid()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", filterWord.getId());
            jSONObject.put("name", filterWord.getName());
            jSONObject.put("is_selected", filterWord.getIsSelected());
            if (filterWord.hasSecondOptions()) {
                JSONArray jSONArray = new JSONArray();
                for (FilterWord filterWord2 : filterWord.getOptions()) {
                    jSONArray.put(m35193b(filterWord2));
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("options", jSONArray);
                }
            }
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m35191b(C4557i c4557i) {
        return c4557i != null && c4557i.m35137w() && c4557i.m35175f() == 1;
    }

    /* renamed from: c */
    public static boolean m35184c(C4557i c4557i) {
        return c4557i != null && c4557i.m35137w() && c4557i.m35175f() == 0;
    }

    /* renamed from: d */
    public static boolean m35180d(C4557i c4557i) {
        if (c4557i == null) {
            return false;
        }
        return c4557i.m35227T() == 5 || c4557i.m35227T() == 15 || c4557i.m35227T() == 50;
    }

    /* renamed from: A */
    public int m35246A() {
        C4552f c4552f = this.f16555Z;
        if (c4552f == null) {
            return 0;
        }
        return c4552f.m35279a();
    }

    /* renamed from: B */
    public C4565o m35245B() {
        return this.f16530A;
    }

    /* renamed from: C */
    public String m35244C() {
        return this.f16572q;
    }

    /* renamed from: D */
    public int m35243D() {
        return this.f16556a;
    }

    /* renamed from: E */
    public C4556h m35242E() {
        return this.f16557b;
    }

    /* renamed from: F */
    public C4556h m35241F() {
        return this.f16558c;
    }

    /* renamed from: G */
    public String m35240G() {
        return this.f16559d;
    }

    /* renamed from: H */
    public List<C4556h> m35239H() {
        return this.f16560e;
    }

    /* renamed from: I */
    public String m35238I() {
        return this.f16561f;
    }

    /* renamed from: J */
    public List<String> m35237J() {
        return this.f16562g;
    }

    /* renamed from: K */
    public List<String> m35236K() {
        return this.f16563h;
    }

    /* renamed from: L */
    public List<String> m35235L() {
        return this.f16564i;
    }

    /* renamed from: M */
    public String m35234M() {
        return this.f16565j;
    }

    /* renamed from: N */
    public String m35233N() {
        return this.f16566k;
    }

    /* renamed from: O */
    public String m35232O() {
        return this.f16567l;
    }

    /* renamed from: P */
    public String m35231P() {
        return this.f16568m;
    }

    /* renamed from: Q */
    public C4546b m35230Q() {
        return this.f16569n;
    }

    /* renamed from: R */
    public C4551e m35229R() {
        return this.f16570o;
    }

    /* renamed from: S */
    public String m35228S() {
        return this.f16573r;
    }

    /* renamed from: T */
    public int m35227T() {
        return this.f16571p;
    }

    /* renamed from: U */
    public List<FilterWord> m35226U() {
        return this.f16577v;
    }

    /* renamed from: V */
    public String m35225V() {
        return this.f16554Y;
    }

    /* renamed from: W */
    public long m35224W() {
        return this.f16579x;
    }

    /* renamed from: X */
    public int m35223X() {
        return this.f16580y;
    }

    /* renamed from: Y */
    public boolean m35222Y() {
        return this.f16531B;
    }

    /* renamed from: Z */
    public boolean m35221Z() {
        return this.f16532C;
    }

    /* renamed from: a */
    public String m35220a() {
        return this.f16574s;
    }

    /* renamed from: a */
    public void m35219a(int i) {
        this.f16575t = i;
    }

    /* renamed from: a */
    public void m35218a(long j) {
        this.f16579x = j;
    }

    /* renamed from: a */
    public void m35217a(AdSlot adSlot) {
        this.f16543N = adSlot;
    }

    /* renamed from: a */
    public void m35216a(FilterWord filterWord) {
        this.f16577v.add(filterWord);
    }

    /* renamed from: a */
    public void m35215a(C4546b c4546b) {
        this.f16569n = c4546b;
    }

    /* renamed from: a */
    public void m35214a(C4547c c4547c) {
        this.f16540K = c4547c;
    }

    /* renamed from: a */
    public void m35213a(C4551e c4551e) {
        this.f16570o = c4551e;
    }

    /* renamed from: a */
    public void m35212a(C4552f c4552f) {
        this.f16555Z = c4552f;
    }

    /* renamed from: a */
    public void m35211a(C4556h c4556h) {
        this.f16557b = c4556h;
    }

    /* renamed from: a */
    public void m35210a(C4558a c4558a) {
        this.f16535F = c4558a;
        C4799d.m33919a().m33916b();
        C4786a.m33984a(this);
    }

    /* renamed from: a */
    public void m35207a(C4565o c4565o) {
        this.f16530A = c4565o;
    }

    /* renamed from: a */
    public void m35206a(String str) {
        this.f16574s = str;
    }

    /* renamed from: a */
    public void m35205a(Map<String, Object> map) {
        this.f16534E = map;
    }

    /* renamed from: a */
    public void m35204a(JSONObject jSONObject) {
        this.f16550U = jSONObject;
    }

    /* renamed from: a */
    public void m35203a(boolean z) {
        this.f16536G = z;
    }

    /* renamed from: aa */
    public Map<String, Object> m35202aa() {
        return this.f16534E;
    }

    /* renamed from: ab */
    public JSONObject m35201ab() {
        return this.f16550U;
    }

    /* renamed from: ac */
    public String m35200ac() {
        return this.f16546Q;
    }

    /* renamed from: ad */
    public boolean m35199ad() {
        if (this.f16560e.isEmpty()) {
            return false;
        }
        if (this.f16571p == 4 && this.f16560e.size() < 3) {
            return false;
        }
        for (C4556h c4556h : this.f16560e) {
            if (!c4556h.m35247d()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ae */
    public boolean m35198ae() {
        return m35197af() == 1;
    }

    /* renamed from: af */
    public int m35197af() {
        return this.f16578w;
    }

    /* renamed from: ag */
    public JSONObject m35196ag() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interaction_type", m35243D());
            jSONObject.put("target_url", m35240G());
            jSONObject.put("ad_id", m35231P());
            jSONObject.put(Payload.SOURCE, m35244C());
            jSONObject.put("screenshot", m35222Y());
            jSONObject.put("dislike_control", m35197af());
            jSONObject.put("play_bar_show_time", m35147p());
            jSONObject.put("is_playable", m35137w());
            jSONObject.put("playable_type", m35175f());
            jSONObject.put("playable_style", m35172g());
            jSONObject.put("play_bar_style", m35157l());
            jSONObject.put("if_block_lp", m35182d());
            jSONObject.put("cache_sort", m35145q());
            jSONObject.put("if_sp_cache", m35143r());
            jSONObject.put("render_control", m35187c());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("reward_name", m35220a());
            jSONObject2.put("reward_amount", m35195b());
            jSONObject.put("reward_data", jSONObject2);
            C4556h m35242E = m35242E();
            if (m35242E != null && !TextUtils.isEmpty(m35242E.m35254a())) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("url", m35242E.m35254a());
                jSONObject3.put("height", m35242E.m35248c());
                jSONObject3.put("width", m35242E.m35250b());
                jSONObject.put(APIAsset.ICON, jSONObject3);
            }
            C4556h m35241F = m35241F();
            if (m35241F != null && !TextUtils.isEmpty(m35241F.m35254a())) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", m35241F.m35254a());
                jSONObject4.put("height", m35241F.m35248c());
                jSONObject4.put("width", m35241F.m35250b());
                jSONObject.put("cover_image", jSONObject4);
            }
            Object m35201ab = m35201ab();
            if (m35201ab != null) {
                jSONObject.put("session_params", m35201ab);
            }
            C4547c m35154m = m35154m();
            if (m35154m != null) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("click_upper_content_area", m35154m.f16467a);
                jSONObject5.put("click_upper_non_content_area", m35154m.f16468b);
                jSONObject5.put("click_lower_content_area", m35154m.f16469c);
                jSONObject5.put("click_lower_non_content_area", m35154m.f16470d);
                jSONObject5.put("click_button_area", m35154m.f16471e);
                jSONObject5.put("click_video_area", m35154m.f16472f);
                jSONObject.put("click_area", jSONObject5);
            }
            AdSlot m35151n = m35151n();
            if (m35151n != null) {
                jSONObject.put("adslot", m35151n.toJsonObj());
            }
            List<C4556h> m35239H = m35239H();
            if (m35239H != null) {
                JSONArray jSONArray = new JSONArray();
                for (C4556h c4556h : m35239H) {
                    JSONObject jSONObject6 = new JSONObject();
                    jSONObject6.put("url", c4556h.m35254a());
                    jSONObject6.put("height", c4556h.m35248c());
                    jSONObject6.put("width", c4556h.m35250b());
                    jSONArray.put(jSONObject6);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> m35237J = m35237J();
            if (m35237J != null) {
                JSONArray jSONArray2 = new JSONArray();
                for (String str : m35237J) {
                    jSONArray2.put(str);
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> m35236K = m35236K();
            if (m35236K != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (String str2 : m35236K) {
                    jSONArray3.put(str2);
                }
                jSONObject.put("click_url", jSONArray3);
            }
            List<String> m35235L = m35235L();
            if (m35235L != null) {
                JSONArray jSONArray4 = new JSONArray();
                for (String str3 : m35235L) {
                    jSONArray4.put(str3);
                }
                jSONObject.put("play_start", jSONArray4);
            }
            jSONObject.put("phone_num", m35238I());
            jSONObject.put("title", m35234M());
            jSONObject.put("description", m35233N());
            jSONObject.put("ext", m35228S());
            jSONObject.put("image_mode", m35227T());
            jSONObject.put("cover_click_area", m35141s());
            jSONObject.put("is_playable", m35137w());
            jSONObject.put("intercept_flag", m35149o());
            jSONObject.put("button_text", m35232O());
            jSONObject.put("ad_logo", m35160k());
            jSONObject.put("video_adaptation", m35163j());
            jSONObject.put("feed_video_opentype", m35169h());
            C4546b m35230Q = m35230Q();
            if (m35230Q != null) {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("app_name", m35230Q.m35335b());
                jSONObject7.put("package_name", m35230Q.m35332c());
                jSONObject7.put("download_url", m35230Q.m35338a());
                jSONObject7.put("score", m35230Q.m35329d());
                jSONObject7.put("comment_num", m35230Q.m35328e());
                jSONObject7.put("app_size", m35230Q.m35327f());
                jSONObject.put("app", jSONObject7);
            }
            C4551e m35229R = m35229R();
            if (m35229R != null) {
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("deeplink_url", m35229R.m35285a());
                jSONObject8.put("fallback_url", m35229R.m35282b());
                jSONObject8.put("fallback_type", m35229R.m35280c());
                jSONObject.put("deep_link", jSONObject8);
            }
            List<FilterWord> m35226U = m35226U();
            if (m35226U != null) {
                JSONArray jSONArray5 = new JSONArray();
                for (FilterWord filterWord : m35226U) {
                    JSONObject m35193b = m35193b(filterWord);
                    if (m35193b != null) {
                        jSONArray5.put(m35193b);
                    }
                }
                jSONObject.put("filter_words", jSONArray5);
            }
            jSONObject.put("count_down", m35223X());
            jSONObject.put("expiration_time", m35224W());
            C4565o m35245B = m35245B();
            if (m35245B != null) {
                jSONObject.put("video", m35245B.m35039l());
            }
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("if_send_click", m35246A());
            jSONObject.put("download_conf", jSONObject9);
            if (m35202aa() != null) {
                JSONObject jSONObject10 = new JSONObject();
                Set<Map.Entry<String, Object>> entrySet = m35202aa().entrySet();
                if (entrySet != null && !entrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : entrySet) {
                        jSONObject10.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject10);
            }
            C4558a m35134z = m35134z();
            if (m35134z != null) {
                JSONObject jSONObject11 = new JSONObject();
                jSONObject11.put("id", m35134z.m35131b());
                jSONObject11.put("md5", m35134z.m35129c());
                jSONObject11.put("url", m35134z.m35127d());
                jSONObject11.put("data", m35134z.m35125e());
                jSONObject11.put("diff_data", m35134z.m35123f());
                jSONObject11.put("version", m35134z.m35133a());
                jSONObject11.put("dynamic_creative", m35134z.m35121g());
                jSONObject.put("tpl_info", jSONObject11);
            }
            jSONObject.put("market_url", m35200ac());
            jSONObject.put("auction_price", m35166i());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    public int m35195b() {
        return this.f16575t;
    }

    /* renamed from: b */
    public void m35194b(int i) {
        this.f16576u = i;
    }

    /* renamed from: b */
    public void m35192b(C4556h c4556h) {
        this.f16558c = c4556h;
    }

    /* renamed from: b */
    public void m35190b(String str) {
        this.f16538I = str;
    }

    /* renamed from: b */
    public void m35189b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f16556a = 4;
        this.f16568m = jSONObject.optString("id");
        this.f16572q = jSONObject.optString(Payload.SOURCE);
        C4546b c4546b = new C4546b();
        this.f16569n = c4546b;
        c4546b.m35330c(jSONObject.optString("pkg_name"));
        this.f16569n.m35333b(jSONObject.optString("name"));
        this.f16569n.m35336a(jSONObject.optString("download_url"));
    }

    /* renamed from: b */
    public void m35188b(boolean z) {
        this.f16531B = z;
    }

    /* renamed from: c */
    public int m35187c() {
        return this.f16576u;
    }

    /* renamed from: c */
    public void m35186c(int i) {
        this.f16547R = i;
    }

    /* renamed from: c */
    public void m35185c(C4556h c4556h) {
        this.f16560e.add(c4556h);
    }

    /* renamed from: c */
    public void m35183c(String str) {
        this.f16553X = str;
    }

    /* renamed from: d */
    public int m35182d() {
        return this.f16547R;
    }

    /* renamed from: d */
    public void m35181d(int i) {
        this.f16537H = i;
    }

    /* renamed from: d */
    public void m35179d(String str) {
        this.f16572q = str;
    }

    /* renamed from: e */
    public void m35177e(int i) {
        this.f16549T = i;
    }

    /* renamed from: e */
    public void m35176e(String str) {
        this.f16559d = str;
    }

    /* renamed from: e */
    public boolean m35178e() {
        return this.f16547R == 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C4557i c4557i = (C4557i) obj;
        return this.f16568m.equals(c4557i.f16568m) && this.f16573r.equals(c4557i.f16573r);
    }

    /* renamed from: f */
    public int m35175f() {
        return this.f16537H;
    }

    /* renamed from: f */
    public void m35174f(int i) {
        this.f16548S = i;
    }

    /* renamed from: f */
    public void m35173f(String str) {
        this.f16561f = str;
    }

    /* renamed from: g */
    public String m35172g() {
        return this.f16538I;
    }

    /* renamed from: g */
    public void m35171g(int i) {
        this.f16545P = i;
    }

    /* renamed from: g */
    public void m35170g(String str) {
        this.f16565j = str;
    }

    /* renamed from: h */
    public int m35169h() {
        return this.f16549T;
    }

    /* renamed from: h */
    public void m35168h(int i) {
        this.f16542M = i;
    }

    /* renamed from: h */
    public void m35167h(String str) {
        this.f16566k = str;
    }

    public int hashCode() {
        return (this.f16568m.hashCode() * 31) + this.f16573r.hashCode();
    }

    /* renamed from: i */
    public String m35166i() {
        return this.f16553X;
    }

    /* renamed from: i */
    public void m35165i(int i) {
        this.f16544O = i;
    }

    /* renamed from: i */
    public void m35164i(String str) {
        this.f16567l = str;
    }

    /* renamed from: j */
    public int m35163j() {
        return this.f16548S;
    }

    /* renamed from: j */
    public void m35162j(int i) {
        this.f16541L = i;
    }

    /* renamed from: j */
    public void m35161j(String str) {
        this.f16568m = str;
    }

    /* renamed from: k */
    public int m35160k() {
        return this.f16545P;
    }

    /* renamed from: k */
    public void m35159k(int i) {
        this.f16551V = i;
    }

    /* renamed from: k */
    public void m35158k(String str) {
        this.f16573r = str;
    }

    /* renamed from: l */
    public int m35157l() {
        return this.f16542M;
    }

    /* renamed from: l */
    public void m35156l(int i) {
        this.f16552W = i;
    }

    /* renamed from: l */
    public void m35155l(String str) {
        this.f16554Y = str;
    }

    /* renamed from: m */
    public C4547c m35154m() {
        return this.f16540K;
    }

    /* renamed from: m */
    public void m35153m(int i) {
        this.f16581z = i;
    }

    /* renamed from: m */
    public void m35152m(String str) {
        this.f16546Q = str;
    }

    /* renamed from: n */
    public AdSlot m35151n() {
        return this.f16543N;
    }

    /* renamed from: n */
    public void m35150n(int i) {
        this.f16533D = i;
    }

    /* renamed from: o */
    public int m35149o() {
        return this.f16544O;
    }

    /* renamed from: o */
    public void m35148o(int i) {
        this.f16556a = i;
    }

    /* renamed from: p */
    public int m35147p() {
        return this.f16541L;
    }

    /* renamed from: p */
    public void m35146p(int i) {
        this.f16571p = i;
    }

    /* renamed from: q */
    public int m35145q() {
        return this.f16551V;
    }

    /* renamed from: q */
    public void m35144q(int i) {
        this.f16580y = i;
    }

    /* renamed from: r */
    public int m35143r() {
        return this.f16552W;
    }

    /* renamed from: r */
    public void m35142r(int i) {
        this.f16578w = i;
    }

    /* renamed from: s */
    public int m35141s() {
        return this.f16581z;
    }

    /* renamed from: t */
    public boolean m35140t() {
        return m35141s() == 100;
    }

    /* renamed from: u */
    public boolean m35139u() {
        C4565o c4565o = this.f16530A;
        return c4565o == null || c4565o.m35038m() != 1;
    }

    /* renamed from: v */
    public boolean m35138v() {
        C4565o c4565o = this.f16530A;
        return c4565o != null && c4565o.m35037n() == 1;
    }

    /* renamed from: w */
    public boolean m35137w() {
        return this.f16536G;
    }

    /* renamed from: x */
    public boolean m35136x() {
        return m35137w() && m35175f() == 1;
    }

    /* renamed from: y */
    public int m35135y() {
        return this.f16533D;
    }

    /* renamed from: z */
    public C4558a m35134z() {
        return this.f16535F;
    }
}
