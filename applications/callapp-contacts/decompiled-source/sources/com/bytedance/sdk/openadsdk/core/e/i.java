package com.bytedance.sdk.openadsdk.core.e;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.widget.webview.d;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.pubnative.lite.sdk.models.APIAsset;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/i.class */
public class i {
    private o A;
    private boolean B;
    private boolean C;
    private int D;
    private Map<String, Object> E;
    private a F;
    private boolean G;
    private int H;
    private String I;
    private AdSlot N;
    private int O;
    private String Q;
    private JSONObject U;
    private int W;
    private String X;
    private String Y;
    private f Z;

    /* renamed from: a  reason: collision with root package name */
    private int f8897a;

    /* renamed from: b  reason: collision with root package name */
    private h f8898b;

    /* renamed from: c  reason: collision with root package name */
    private h f8899c;

    /* renamed from: d  reason: collision with root package name */
    private String f8900d;
    private String f;
    private String j;
    private String k;
    private String l;
    private b n;
    private e o;
    private int p;
    private String q;
    private String r;
    private long x;
    private int y;
    private int z;
    private List<h> e = new ArrayList();
    private List<String> g = new ArrayList();
    private List<String> h = new ArrayList();
    private List<String> i = new ArrayList();
    private String m = "0";
    private String s = "";
    private int t = 0;
    private int u = 2;
    private List<FilterWord> v = new ArrayList();
    private int w = 0;
    private String J = "";
    private c K = new c();
    private int L = -200;
    private int M = 0;
    private int P = 1;
    private int R = 0;
    private int S = 0;
    private int T = 0;
    private int V = 1;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/i$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f8901a;

        /* renamed from: b  reason: collision with root package name */
        private String f8902b;

        /* renamed from: c  reason: collision with root package name */
        private String f8903c;

        /* renamed from: d  reason: collision with root package name */
        private String f8904d;
        private String e;
        private String f;
        private String g;

        public String a() {
            return this.f;
        }

        public void a(String str) {
            this.f = str;
        }

        public String b() {
            return this.f8901a;
        }

        public void b(String str) {
            this.f8901a = str;
        }

        public String c() {
            return this.f8902b;
        }

        public void c(String str) {
            this.f8902b = str;
        }

        public String d() {
            return this.f8903c;
        }

        public void d(String str) {
            this.f8903c = str;
        }

        public String e() {
            return this.f8904d;
        }

        public void e(String str) {
            this.f8904d = str;
        }

        public String f() {
            return this.e;
        }

        public void f(String str) {
            this.e = str;
        }

        public String g() {
            return this.g;
        }

        public void g(String str) {
            this.g = str;
        }
    }

    public static boolean a(i iVar) {
        return iVar != null && iVar.w();
    }

    public static boolean a(i iVar, boolean z, boolean z2) {
        o oVar;
        if (iVar == null || (oVar = iVar.A) == null || oVar.a() != 1) {
            q.b("MaterialMeta", "can show end card follow js WebViewClient");
            return z;
        }
        q.b("MaterialMeta", "can show end card follow js");
        return z2;
    }

    private JSONObject b(FilterWord filterWord) {
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
                    jSONArray.put(b(filterWord2));
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

    public static boolean b(i iVar) {
        return iVar != null && iVar.w() && iVar.f() == 1;
    }

    public static boolean c(i iVar) {
        return iVar != null && iVar.w() && iVar.f() == 0;
    }

    public static boolean d(i iVar) {
        if (iVar == null) {
            return false;
        }
        return iVar.T() == 5 || iVar.T() == 15 || iVar.T() == 50;
    }

    public int A() {
        f fVar = this.Z;
        if (fVar == null) {
            return 0;
        }
        return fVar.a();
    }

    public o B() {
        return this.A;
    }

    public String C() {
        return this.q;
    }

    public int D() {
        return this.f8897a;
    }

    public h E() {
        return this.f8898b;
    }

    public h F() {
        return this.f8899c;
    }

    public String G() {
        return this.f8900d;
    }

    public List<h> H() {
        return this.e;
    }

    public String I() {
        return this.f;
    }

    public List<String> J() {
        return this.g;
    }

    public List<String> K() {
        return this.h;
    }

    public List<String> L() {
        return this.i;
    }

    public String M() {
        return this.j;
    }

    public String N() {
        return this.k;
    }

    public String O() {
        return this.l;
    }

    public String P() {
        return this.m;
    }

    public b Q() {
        return this.n;
    }

    public e R() {
        return this.o;
    }

    public String S() {
        return this.r;
    }

    public int T() {
        return this.p;
    }

    public List<FilterWord> U() {
        return this.v;
    }

    public String V() {
        return this.Y;
    }

    public long W() {
        return this.x;
    }

    public int X() {
        return this.y;
    }

    public boolean Y() {
        return this.B;
    }

    public boolean Z() {
        return this.C;
    }

    public String a() {
        return this.s;
    }

    public void a(int i) {
        this.t = i;
    }

    public void a(long j) {
        this.x = j;
    }

    public void a(AdSlot adSlot) {
        this.N = adSlot;
    }

    public void a(FilterWord filterWord) {
        this.v.add(filterWord);
    }

    public void a(b bVar) {
        this.n = bVar;
    }

    public void a(c cVar) {
        this.K = cVar;
    }

    public void a(e eVar) {
        this.o = eVar;
    }

    public void a(f fVar) {
        this.Z = fVar;
    }

    public void a(h hVar) {
        this.f8898b = hVar;
    }

    public void a(a aVar) {
        this.F = aVar;
        d.a().b();
        com.bytedance.sdk.openadsdk.core.widget.webview.a.a.a(this);
    }

    public void a(o oVar) {
        this.A = oVar;
    }

    public void a(String str) {
        this.s = str;
    }

    public void a(Map<String, Object> map) {
        this.E = map;
    }

    public void a(JSONObject jSONObject) {
        this.U = jSONObject;
    }

    public void a(boolean z) {
        this.G = z;
    }

    public Map<String, Object> aa() {
        return this.E;
    }

    public JSONObject ab() {
        return this.U;
    }

    public String ac() {
        return this.Q;
    }

    public boolean ad() {
        if (this.e.isEmpty()) {
            return false;
        }
        if (this.p == 4 && this.e.size() < 3) {
            return false;
        }
        for (h hVar : this.e) {
            if (!hVar.d()) {
                return false;
            }
        }
        return true;
    }

    public boolean ae() {
        return af() == 1;
    }

    public int af() {
        return this.w;
    }

    public JSONObject ag() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interaction_type", D());
            jSONObject.put("target_url", G());
            jSONObject.put("ad_id", P());
            jSONObject.put(Payload.SOURCE, C());
            jSONObject.put("screenshot", Y());
            jSONObject.put("dislike_control", af());
            jSONObject.put("play_bar_show_time", p());
            jSONObject.put("is_playable", w());
            jSONObject.put("playable_type", f());
            jSONObject.put("playable_style", g());
            jSONObject.put("play_bar_style", l());
            jSONObject.put("if_block_lp", d());
            jSONObject.put("cache_sort", q());
            jSONObject.put("if_sp_cache", r());
            jSONObject.put("render_control", c());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("reward_name", a());
            jSONObject2.put("reward_amount", b());
            jSONObject.put("reward_data", jSONObject2);
            h E = E();
            if (E != null && !TextUtils.isEmpty(E.a())) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("url", E.a());
                jSONObject3.put("height", E.c());
                jSONObject3.put("width", E.b());
                jSONObject.put(APIAsset.ICON, jSONObject3);
            }
            h F = F();
            if (F != null && !TextUtils.isEmpty(F.a())) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", F.a());
                jSONObject4.put("height", F.c());
                jSONObject4.put("width", F.b());
                jSONObject.put("cover_image", jSONObject4);
            }
            Object ab = ab();
            if (ab != null) {
                jSONObject.put("session_params", ab);
            }
            c m = m();
            if (m != null) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("click_upper_content_area", m.f8868a);
                jSONObject5.put("click_upper_non_content_area", m.f8869b);
                jSONObject5.put("click_lower_content_area", m.f8870c);
                jSONObject5.put("click_lower_non_content_area", m.f8871d);
                jSONObject5.put("click_button_area", m.e);
                jSONObject5.put("click_video_area", m.f);
                jSONObject.put("click_area", jSONObject5);
            }
            AdSlot n = n();
            if (n != null) {
                jSONObject.put("adslot", n.toJsonObj());
            }
            List<h> H = H();
            if (H != null) {
                JSONArray jSONArray = new JSONArray();
                for (h hVar : H) {
                    JSONObject jSONObject6 = new JSONObject();
                    jSONObject6.put("url", hVar.a());
                    jSONObject6.put("height", hVar.c());
                    jSONObject6.put("width", hVar.b());
                    jSONArray.put(jSONObject6);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> J = J();
            if (J != null) {
                JSONArray jSONArray2 = new JSONArray();
                for (String str : J) {
                    jSONArray2.put(str);
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> K = K();
            if (K != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (String str2 : K) {
                    jSONArray3.put(str2);
                }
                jSONObject.put("click_url", jSONArray3);
            }
            List<String> L = L();
            if (L != null) {
                JSONArray jSONArray4 = new JSONArray();
                for (String str3 : L) {
                    jSONArray4.put(str3);
                }
                jSONObject.put("play_start", jSONArray4);
            }
            jSONObject.put("phone_num", I());
            jSONObject.put("title", M());
            jSONObject.put("description", N());
            jSONObject.put("ext", S());
            jSONObject.put("image_mode", T());
            jSONObject.put("cover_click_area", s());
            jSONObject.put("is_playable", w());
            jSONObject.put("intercept_flag", o());
            jSONObject.put("button_text", O());
            jSONObject.put("ad_logo", k());
            jSONObject.put("video_adaptation", j());
            jSONObject.put("feed_video_opentype", h());
            b Q = Q();
            if (Q != null) {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("app_name", Q.b());
                jSONObject7.put("package_name", Q.c());
                jSONObject7.put("download_url", Q.a());
                jSONObject7.put("score", Q.d());
                jSONObject7.put("comment_num", Q.e());
                jSONObject7.put("app_size", Q.f());
                jSONObject.put("app", jSONObject7);
            }
            e R = R();
            if (R != null) {
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("deeplink_url", R.a());
                jSONObject8.put("fallback_url", R.b());
                jSONObject8.put("fallback_type", R.c());
                jSONObject.put("deep_link", jSONObject8);
            }
            List<FilterWord> U = U();
            if (U != null) {
                JSONArray jSONArray5 = new JSONArray();
                for (FilterWord filterWord : U) {
                    JSONObject b2 = b(filterWord);
                    if (b2 != null) {
                        jSONArray5.put(b2);
                    }
                }
                jSONObject.put("filter_words", jSONArray5);
            }
            jSONObject.put("count_down", X());
            jSONObject.put("expiration_time", W());
            o B = B();
            if (B != null) {
                jSONObject.put("video", B.l());
            }
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("if_send_click", A());
            jSONObject.put("download_conf", jSONObject9);
            if (aa() != null) {
                JSONObject jSONObject10 = new JSONObject();
                Set<Map.Entry<String, Object>> entrySet = aa().entrySet();
                if (entrySet != null && !entrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : entrySet) {
                        jSONObject10.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject10);
            }
            a z = z();
            if (z != null) {
                JSONObject jSONObject11 = new JSONObject();
                jSONObject11.put("id", z.b());
                jSONObject11.put("md5", z.c());
                jSONObject11.put("url", z.d());
                jSONObject11.put("data", z.e());
                jSONObject11.put("diff_data", z.f());
                jSONObject11.put("version", z.a());
                jSONObject11.put("dynamic_creative", z.g());
                jSONObject.put("tpl_info", jSONObject11);
            }
            jSONObject.put("market_url", ac());
            jSONObject.put("auction_price", i());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public int b() {
        return this.t;
    }

    public void b(int i) {
        this.u = i;
    }

    public void b(h hVar) {
        this.f8899c = hVar;
    }

    public void b(String str) {
        this.I = str;
    }

    public void b(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f8897a = 4;
            this.m = jSONObject.optString("id");
            this.q = jSONObject.optString(Payload.SOURCE);
            b bVar = new b();
            this.n = bVar;
            bVar.c(jSONObject.optString("pkg_name"));
            this.n.b(jSONObject.optString("name"));
            this.n.a(jSONObject.optString("download_url"));
        }
    }

    public void b(boolean z) {
        this.B = z;
    }

    public int c() {
        return this.u;
    }

    public void c(int i) {
        this.R = i;
    }

    public void c(h hVar) {
        this.e.add(hVar);
    }

    public void c(String str) {
        this.X = str;
    }

    public int d() {
        return this.R;
    }

    public void d(int i) {
        this.H = i;
    }

    public void d(String str) {
        this.q = str;
    }

    public void e(int i) {
        this.T = i;
    }

    public void e(String str) {
        this.f8900d = str;
    }

    public boolean e() {
        return this.R == 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.m.equals(iVar.m) && this.r.equals(iVar.r);
    }

    public int f() {
        return this.H;
    }

    public void f(int i) {
        this.S = i;
    }

    public void f(String str) {
        this.f = str;
    }

    public String g() {
        return this.I;
    }

    public void g(int i) {
        this.P = i;
    }

    public void g(String str) {
        this.j = str;
    }

    public int h() {
        return this.T;
    }

    public void h(int i) {
        this.M = i;
    }

    public void h(String str) {
        this.k = str;
    }

    public int hashCode() {
        return (this.m.hashCode() * 31) + this.r.hashCode();
    }

    public String i() {
        return this.X;
    }

    public void i(int i) {
        this.O = i;
    }

    public void i(String str) {
        this.l = str;
    }

    public int j() {
        return this.S;
    }

    public void j(int i) {
        this.L = i;
    }

    public void j(String str) {
        this.m = str;
    }

    public int k() {
        return this.P;
    }

    public void k(int i) {
        this.V = i;
    }

    public void k(String str) {
        this.r = str;
    }

    public int l() {
        return this.M;
    }

    public void l(int i) {
        this.W = i;
    }

    public void l(String str) {
        this.Y = str;
    }

    public c m() {
        return this.K;
    }

    public void m(int i) {
        this.z = i;
    }

    public void m(String str) {
        this.Q = str;
    }

    public AdSlot n() {
        return this.N;
    }

    public void n(int i) {
        this.D = i;
    }

    public int o() {
        return this.O;
    }

    public void o(int i) {
        this.f8897a = i;
    }

    public int p() {
        return this.L;
    }

    public void p(int i) {
        this.p = i;
    }

    public int q() {
        return this.V;
    }

    public void q(int i) {
        this.y = i;
    }

    public int r() {
        return this.W;
    }

    public void r(int i) {
        this.w = i;
    }

    public int s() {
        return this.z;
    }

    public boolean t() {
        return s() == 100;
    }

    public boolean u() {
        o oVar = this.A;
        return oVar == null || oVar.m() != 1;
    }

    public boolean v() {
        o oVar = this.A;
        return oVar != null && oVar.n() == 1;
    }

    public boolean w() {
        return this.G;
    }

    public boolean x() {
        return w() && f() == 1;
    }

    public int y() {
        return this.D;
    }

    public a z() {
        return this.F;
    }
}
