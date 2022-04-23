package com.bytedance.sdk.openadsdk.core.h;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.e.m;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.widget.webview.a.d;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.multipro.d.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.z;
import com.google.android.gms.common.ConnectionResult;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/e.class */
public class e implements b {
    private String G;
    private String H;
    private String J;
    private String L;
    private String e;
    private String g;
    private String n;
    private String q;
    private String r;
    private String s;
    private String t;
    private static final String i = af.m();
    private static final String k = null;
    private static final String l = null;
    private static final String m = null;

    /* renamed from: a  reason: collision with root package name */
    public static String f8974a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f8975b = "IABTCF_TCString";

    /* renamed from: c  reason: collision with root package name */
    private Map<String, a> f8976c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private Map<String, f> f8977d = new HashMap();
    private Set<String> f = new HashSet();
    private Set<String> h = Collections.synchronizedSet(new HashSet());
    private Set<String> j = Collections.synchronizedSet(new HashSet());
    private int o = Integer.MAX_VALUE;
    private int p = Integer.MAX_VALUE;
    private int u = Integer.MAX_VALUE;
    private int v = Integer.MAX_VALUE;
    private int w = Integer.MAX_VALUE;
    private long x = 0;
    private Set<String> y = Collections.synchronizedSet(new HashSet());
    private Set<String> z = Collections.synchronizedSet(new HashSet());
    private int A = Integer.MAX_VALUE;
    private int B = Integer.MAX_VALUE;
    private long C = 2147483647L;
    private int D = Integer.MAX_VALUE;
    private int E = Integer.MAX_VALUE;
    private int F = Integer.MAX_VALUE;
    private int I = Integer.MAX_VALUE;
    private int K = Integer.MAX_VALUE;
    private String M = null;
    private String N = null;
    private boolean O = false;
    private int P = Integer.MAX_VALUE;
    private int Q = Integer.MAX_VALUE;
    private int R = Integer.MAX_VALUE;
    private int S = Integer.MAX_VALUE;
    private int T = Integer.MAX_VALUE;
    private int U = Integer.MAX_VALUE;
    private int V = Integer.MAX_VALUE;
    private final Set<String> W = Collections.synchronizedSet(new HashSet());
    private volatile boolean X = false;
    private int Z = Integer.MAX_VALUE;
    private int aa = Integer.MAX_VALUE;
    private final z Y = z.a("tt_sdk_settings", n.a());

    private void B() {
        this.r = null;
        this.q = null;
        if (b.b()) {
            a.b("tt_sdk_settings", "ab_test_version");
            a.b("tt_sdk_settings", "ab_test_param");
            return;
        }
        this.Y.b("ab_test_version");
        this.Y.b("ab_test_param");
    }

    private int a(boolean z) {
        return z ? 20 : 5;
    }

    private void a(String str, String str2) {
        if (b.b()) {
            a.a("tt_sdk_settings", "xpath", this.n);
            a.a("tt_sdk_settings", VastIconXmlManager.DURATION, Long.valueOf(this.C));
            a.a("tt_sdk_settings", "max", Integer.valueOf(this.D));
            a.a("tt_sdk_settings", "download_config_dl_network", Integer.valueOf(this.o));
            a.a("tt_sdk_settings", "download_config_dl_size", Integer.valueOf(this.p));
            a.a("tt_sdk_settings", "vbtt", Integer.valueOf(this.E));
            a.a("tt_sdk_settings", "fetch_template", Integer.valueOf(this.F));
            a.a("tt_sdk_settings", "splash_load_type", Integer.valueOf(this.u));
            a.a("tt_sdk_settings", "splash_check_type", Integer.valueOf(this.v));
            a.a("tt_sdk_settings", "if_both_open", Integer.valueOf(this.A));
            a.a("tt_sdk_settings", "support_tnc", Integer.valueOf(this.B));
            a.a("tt_sdk_settings", "pyload_h5", this.s);
            a.a("tt_sdk_settings", "playableLoadH5Url", this.t);
            a.a("tt_sdk_settings", "app_list_control", Integer.valueOf(this.w));
            a.a("tt_sdk_settings", "max_tpl_cnts", Integer.valueOf(this.Q));
            a.a("tt_sdk_settings", "fetch_tpl_timeout_ctrl", Integer.valueOf(this.P));
            a.a("tt_sdk_settings", "hit_app_list_time", Long.valueOf(this.x));
            a.a("tt_sdk_settings", "hit_app_list_data", this.y);
            a.a("tt_sdk_settings", "scheme_list_data", this.z);
            a.a("tt_sdk_settings", "ads_url", this.G);
            a.a("tt_sdk_settings", "app_log_url", this.H);
            a.a("tt_sdk_settings", VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, Integer.valueOf(this.I));
            a.a("tt_sdk_settings", "policy_url", this.J);
            a.a("tt_sdk_settings", "consent_url", this.L);
            a.a("tt_sdk_settings", "dyn_draw_engine_url", this.M);
            a.a("tt_sdk_settings", "dc", this.N);
            a.a("tt_sdk_settings", "isGdprUser", Integer.valueOf(this.K));
            String str3 = this.q;
            if (str3 != null) {
                a.a("tt_sdk_settings", "ab_test_version", str3);
            }
            String str4 = this.r;
            if (str4 != null) {
                a.a("tt_sdk_settings", "ab_test_param", str4);
            }
            if (!TextUtils.isEmpty(str)) {
                a.a("tt_sdk_settings", "ad_slot_conf", str);
            }
            if (!TextUtils.isEmpty(this.g)) {
                a.a("tt_sdk_settings", "template_ids", this.g);
            }
            if (!TextUtils.isEmpty(this.e)) {
                a.a("tt_sdk_settings", "tpl_infos", this.e);
            }
            a.a("tt_sdk_settings", "privacy_ad_enable", Integer.valueOf(this.R));
            a.a("tt_sdk_settings", "privacy_personalized_ad", Integer.valueOf(this.S));
            a.a("tt_sdk_settings", "privacy_sladar_enable", Integer.valueOf(this.T));
            a.a("tt_sdk_settings", "privacy_app_log_enable", Integer.valueOf(this.U));
            a.a("tt_sdk_settings", "privacy_sec_enable", Integer.valueOf(this.V));
            a.a("tt_sdk_settings", "gecko_hosts", this.j);
            if (this.W.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (String str5 : this.W) {
                    jSONArray.put(str5);
                }
                a.a("tt_sdk_settings", "privacy_fields_allowed", jSONArray.toString());
            } else {
                a.a("tt_sdk_settings", "privacy_fields_allowed", "");
            }
            a.a("tt_sdk_settings", "read_video_from_cache", Integer.valueOf(this.Z));
            return;
        }
        this.Y.a("xpath", this.n);
        this.Y.a(VastIconXmlManager.DURATION, this.C);
        this.Y.a("max", this.D);
        this.Y.a("download_config_dl_network", this.o);
        this.Y.a("download_config_dl_size", this.p);
        this.Y.a("fetch_template", this.F);
        this.Y.a("pyload_h5", this.s);
        this.Y.a("playableLoadH5Url", this.t);
        this.Y.a("splash_load_type", this.u);
        this.Y.a("splash_check_type", this.v);
        this.Y.a("if_both_open", this.A);
        this.Y.a("support_tnc", this.B);
        this.Y.a("app_list_control", this.w);
        this.Y.a("max_tpl_cnts", this.Q);
        this.Y.a("fetch_tpl_timeout_ctrl", this.P);
        this.Y.a("hit_app_list_time", this.x);
        this.Y.a("hit_app_list_data", this.y);
        this.Y.a("scheme_list_data", this.z);
        this.Y.a("ads_url", this.G);
        this.Y.a("app_log_url", this.H);
        this.Y.a(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, this.I);
        this.Y.a("policy_url", this.J);
        this.Y.a("consent_url", this.L);
        this.Y.a("dyn_draw_engine_url", this.M);
        this.Y.a("dc", this.N);
        this.Y.a("isGdprUser", this.K);
        String str6 = this.q;
        if (str6 != null) {
            this.Y.a("ab_test_version", str6);
        }
        String str7 = this.r;
        if (str7 != null) {
            this.Y.a("ab_test_param", str7);
        }
        this.Y.a("vbtt", this.E);
        if (!TextUtils.isEmpty(str)) {
            this.Y.a("ad_slot_conf", str);
        }
        if (!TextUtils.isEmpty(this.g)) {
            this.Y.a("template_ids", this.g);
        }
        if (!TextUtils.isEmpty(this.e)) {
            this.Y.a("tpl_infos", this.e);
        }
        this.Y.a("privacy_ad_enable", this.R);
        this.Y.a("privacy_personalized_ad", this.S);
        this.Y.a("privacy_sladar_enable", this.T);
        this.Y.a("privacy_app_log_enable", this.U);
        this.Y.a("privacy_sec_enable", this.V);
        this.Y.a("gecko_hosts", this.j);
        if (this.W.size() > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str8 : this.W) {
                jSONArray2.put(str8);
            }
            this.Y.a("privacy_fields_allowed", jSONArray2.toString());
        } else {
            this.Y.a("privacy_fields_allowed", "");
        }
        this.Y.a("read_video_from_cache", this.Z);
    }

    private static a b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("code_id");
        int optInt = jSONObject.optInt("auto_play", 1);
        int optInt2 = jSONObject.optInt("voice_control", 1);
        int optInt3 = jSONObject.optInt("rv_preload", 2);
        int optInt4 = jSONObject.optInt("nv_preload", 1);
        int optInt5 = jSONObject.optInt("proportion_watching", 100);
        int optInt6 = jSONObject.optInt("skip_time_displayed", 0);
        int optInt7 = jSONObject.optInt("video_skip_result", 2);
        int optInt8 = jSONObject.optInt("reg_creative_control", 1);
        int optInt9 = jSONObject.optInt("play_bar_show_time", 3);
        int optInt10 = jSONObject.optInt("rv_skip_time", -1);
        int optInt11 = jSONObject.optInt("endcard_close_time", -1);
        int optInt12 = jSONObject.optInt("playable_endcard_close_time", -1);
        int optInt13 = jSONObject.optInt("voice_control", 2);
        int optInt14 = jSONObject.optInt("if_show_win", 1);
        int optInt15 = jSONObject.optInt("sp_preload", 0);
        int optInt16 = jSONObject.optInt("stop_time", ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        int optInt17 = jSONObject.optInt("native_playable_delay", 2);
        int optInt18 = jSONObject.optInt("time_out_control", -1);
        int optInt19 = jSONObject.optInt("playable_duration_time", 20);
        int optInt20 = jSONObject.optInt("playable_close_time", -1);
        int optInt21 = jSONObject.optInt("playable_reward_type", 0);
        int optInt22 = jSONObject.optInt("reward_is_callback", 0);
        int optInt23 = jSONObject.optInt("iv_skip_time", 5);
        JSONArray optJSONArray = jSONObject.optJSONArray("parent_tpl_ids");
        int optInt24 = jSONObject.optInt("slot_type", 2);
        int i2 = optInt2;
        if (!f(optInt2)) {
            i2 = 1;
        }
        int i3 = optInt13;
        if (!f(optInt13)) {
            i3 = 1;
        }
        return a.a().a(optString).n(optInt).o(i2).p(optInt3).q(optInt4).r(optInt5).s(optInt6).t(optInt7).u(optInt8).m(optInt9).l(optInt10).j(optInt11).i(i3).k(optInt12).v(optInt14).f(optInt15).g(optInt16).h(optInt17).e(optInt18).a(optInt20).d(optInt19).b(optInt21).c(optInt22).w(optInt24).x(optInt23).a(optJSONArray);
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject != null) {
            String b2 = b.b() ? a.b("tt_sdk_settings", "dyn_draw_engine_url", i) : this.Y.b("dyn_draw_engine_url", i);
            this.M = jSONObject.optString("dyn_draw_engine_url", i);
            q.e("TemplateManager", "settinng---TTDynamic.init().....oldDynDrawEngineUrl=".concat(String.valueOf(b2)));
            q.e("TemplateManager", "settinng---TTDynamic.init().....newmDynDrawEngineUrl=" + this.M);
            if (!TextUtils.isEmpty(b2) && !TextUtils.isEmpty(this.M) && !this.M.equals(b2)) {
                q.b("TemplateManager", "重新初始化模板TTDynamic.init().....");
                try {
                    Thread.sleep(5000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                d.a().c();
                d.a().a(false);
                com.bytedance.sdk.openadsdk.core.widget.webview.a.b.a().g();
                com.bytedance.sdk.openadsdk.core.widget.webview.a.b.a().b(false);
                com.bytedance.sdk.openadsdk.core.widget.webview.a.a.b();
                d.a().b();
                com.bytedance.sdk.openadsdk.core.widget.webview.a.b.a().b();
            }
        }
    }

    private void d(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("is_gdpr_user", -1);
        this.K = optInt;
        if (optInt != -1 && optInt != 1 && optInt != 0) {
            this.K = -1;
        }
    }

    private int e(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("splash_load_type", 1);
        this.u = optInt;
        if (optInt == 0 || optInt == 1 || optInt == 2 || optInt == 3) {
            return optInt;
        }
        return 1;
    }

    private int f(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("splash_check_type", 1);
        this.v = optInt;
        if (optInt == 0 || optInt == 1) {
            return optInt;
        }
        return 1;
    }

    private static boolean f(int i2) {
        return i2 == 1 || i2 == 2;
    }

    private a t(String str) {
        return a.a().a(str).n(1).o(!this.f.contains(str) ? 1 : 0).p(2).q(1).r(100).s(0).u(1).m(3).l(-1).j(-1).i(2).k(-1).v(1).e(-1).a(-1).d(20).w(2).x(5).a((JSONArray) null);
    }

    public boolean A() {
        if (this.Z == Integer.MAX_VALUE) {
            if (b.b()) {
                this.Z = a.a("tt_sdk_settings", "read_video_from_cache", 1);
            } else {
                this.Z = this.Y.b("read_video_from_cache", 1);
            }
        }
        return this.Z == 1;
    }

    public int a(String str) {
        if (str == null) {
            return 0;
        }
        return n.h().q(String.valueOf(str)).v;
    }

    public int a(String str, boolean z) {
        if (str == null) {
            return a(z);
        }
        a q = n.h().q(String.valueOf(str));
        return q.u != -1 ? q.u : a(z);
    }

    public Set<String> a(Set<String> set) {
        try {
            if (set == null) {
                return new HashSet();
            }
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            return hashSet;
        } catch (Throwable th) {
            return new HashSet();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h.b
    public void a() {
        synchronized (this) {
            this.X = true;
            if (b.b()) {
                this.n = a.b("tt_sdk_settings", "xpath", "");
                this.C = a.a("tt_sdk_settings", VastIconXmlManager.DURATION, 10000L);
                this.D = a.a("tt_sdk_settings", "max", 50);
                this.o = a.a("tt_sdk_settings", "download_config_dl_network", 1);
                this.p = a.a("tt_sdk_settings", "download_config_dl_size", 30);
                this.E = a.a("tt_sdk_settings", "vbtt", 5);
                this.F = a.a("tt_sdk_settings", "fetch_template", 3600);
                this.g = a.b("tt_sdk_settings", "template_ids", (String) null);
                this.q = a.b("tt_sdk_settings", "ab_test_version", (String) null);
                this.r = a.b("tt_sdk_settings", "ab_test_param", (String) null);
                this.s = a.b("tt_sdk_settings", "pyload_h5", (String) null);
                this.t = a.b("tt_sdk_settings", "playableLoadH5Url", (String) null);
                this.u = a.a("tt_sdk_settings", "splash_load_type", 1);
                this.v = a.a("tt_sdk_settings", "splash_check_type", 1);
                this.A = a.a("tt_sdk_settings", "if_both_open", 0);
                this.B = a.a("tt_sdk_settings", "support_tnc", 1);
                this.P = a.a("tt_sdk_settings", "fetch_tpl_timeout_ctrl", 3000);
                this.Q = a.a("tt_sdk_settings", "max_tpl_cnts", 100);
                this.e = a.b("tt_sdk_settings", "tpl_infos", (String) null);
                this.w = a.a("tt_sdk_settings", "app_list_control", 0);
                this.x = a.a("tt_sdk_settings", "hit_app_list_time", 0L);
                this.G = a.b("tt_sdk_settings", "ads_url", l);
                this.H = a.b("tt_sdk_settings", "app_log_url", k);
                this.I = a.a("tt_sdk_settings", VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, -99);
                g.b().c(this.I);
                this.J = a.b("tt_sdk_settings", "policy_url", m);
                this.L = a.b("tt_sdk_settings", "consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
                this.K = a.a("tt_sdk_settings", "isGdprUser", -1);
                this.M = a.b("tt_sdk_settings", "dyn_draw_engine_url", i);
                this.N = a.b("tt_sdk_settings", "dc", (String) null);
                this.R = a.a("tt_sdk_settings", "privacy_ad_enable", Integer.MAX_VALUE);
                this.S = a.a("tt_sdk_settings", "privacy_personalized_ad", Integer.MAX_VALUE);
                this.T = a.a("tt_sdk_settings", "privacy_sladar_enable", Integer.MAX_VALUE);
                this.U = a.a("tt_sdk_settings", "privacy_app_log_enable", Integer.MAX_VALUE);
                this.V = a.a("tt_sdk_settings", "privacy_sec_enable", Integer.MAX_VALUE);
                String b2 = a.b("tt_sdk_settings", "privacy_fields_allowed", (String) null);
                Set<String> set = this.j;
                if (set != null) {
                    set.clear();
                }
                Set<String> b3 = a.b("tt_sdk_settings", "gecko_hosts", (Set<String>) null);
                this.j = b3;
                this.j = a(b3);
                this.aa = a.a("tt_sdk_settings", "global_rate", 1);
                if (!TextUtils.isEmpty(b2)) {
                    try {
                        JSONArray jSONArray = new JSONArray(b2);
                        int length = jSONArray.length();
                        this.W.clear();
                        for (int i2 = 0; i2 < length; i2++) {
                            this.W.add(jSONArray.getString(i2));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                this.y.clear();
                Set<String> b4 = a.b("tt_sdk_settings", "hit_app_list_data", (Set<String>) null);
                if (b4 != null && !b4.isEmpty()) {
                    for (String str : b4) {
                        this.y.add(str);
                    }
                }
                this.z.clear();
                Set<String> b5 = a.b("tt_sdk_settings", "scheme_list_data", (Set<String>) null);
                if (b5 != null && !b5.isEmpty()) {
                    for (String str2 : b5) {
                        this.z.add(str2);
                    }
                }
                String b6 = a.b("tt_sdk_settings", "ad_slot_conf", (String) null);
                if (!TextUtils.isEmpty(b6)) {
                    try {
                        JSONArray jSONArray2 = new JSONArray(b6);
                        int length2 = jSONArray2.length();
                        if (length2 > 0) {
                            this.f8976c.clear();
                            for (int i3 = 0; i3 < length2; i3++) {
                                a b7 = b(jSONArray2.optJSONObject(i3));
                                if (b7 != null) {
                                    this.f8976c.put(b7.f8963a, b7);
                                }
                            }
                        }
                    } catch (Exception e2) {
                    }
                }
                this.Z = a.a("tt_sdk_settings", "read_video_from_cache", 1);
                return;
            }
            this.n = this.Y.b("xpath", "");
            this.C = this.Y.b(VastIconXmlManager.DURATION, 10000L);
            this.D = this.Y.b("max", 50);
            this.o = this.Y.b("download_config_dl_network", 1);
            this.p = this.Y.b("download_config_dl_size", 30);
            this.F = this.Y.b("fetch_template", 3600);
            this.q = this.Y.a("ab_test_version");
            this.r = this.Y.a("ab_test_param");
            this.E = this.Y.b("vbtt", 5);
            this.g = this.Y.b("template_ids", (String) null);
            this.s = this.Y.b("pyload_h5", (String) null);
            this.t = this.Y.b("playableLoadH5Url", (String) null);
            this.u = this.Y.b("splash_load_type", 1);
            this.v = this.Y.b("splash_check_type", 1);
            this.A = this.Y.b("if_both_open", 0);
            this.B = this.Y.b("support_tnc", 1);
            this.e = this.Y.b("tpl_infos", (String) null);
            this.w = this.Y.b("app_list_control", 0);
            this.P = this.Y.b("fetch_tpl_timeout_ctrl", 3000);
            this.Q = this.Y.b("max_tpl_cnts", 100);
            this.x = this.Y.b("hit_app_list_time", 0L);
            this.G = this.Y.a("ads_url");
            this.H = this.Y.a("app_log_url");
            this.I = this.Y.b(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, -99);
            g.b().c(this.I);
            this.J = this.Y.b("policy_url", m);
            this.L = this.Y.b("consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
            this.M = this.Y.b("dyn_draw_engine_url", i);
            this.N = this.Y.a("dc");
            this.K = this.Y.b("isGdprUser", -1);
            this.R = this.Y.b("privacy_ad_enable", Integer.MAX_VALUE);
            this.S = this.Y.b("privacy_personalized_ad", Integer.MAX_VALUE);
            this.T = this.Y.b("privacy_sladar_enable", Integer.MAX_VALUE);
            this.U = this.Y.b("privacy_app_log_enable", Integer.MAX_VALUE);
            this.V = this.Y.b("privacy_sec_enable", Integer.MAX_VALUE);
            Set<String> set2 = this.j;
            if (set2 != null) {
                set2.clear();
            }
            Set<String> b8 = this.Y.b("gecko_hosts", (Set<String>) null);
            this.j = b8;
            this.j = a(b8);
            this.aa = this.Y.b("global_rate", 1);
            String b9 = this.Y.b("privacy_fields_allowed", (String) null);
            if (!TextUtils.isEmpty(b9)) {
                try {
                    JSONArray jSONArray3 = new JSONArray(b9);
                    int length3 = jSONArray3.length();
                    this.W.clear();
                    for (int i4 = 0; i4 < length3; i4++) {
                        this.W.add(jSONArray3.getString(i4));
                    }
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
            this.y.clear();
            Set<String> b10 = this.Y.b("hit_app_list_data", (Set<String>) null);
            if (b10 != null && !b10.isEmpty()) {
                for (String str3 : b10) {
                    this.y.add(str3);
                }
            }
            this.z.clear();
            Set<String> b11 = this.Y.b("scheme_list_data", (Set<String>) null);
            if (b11 != null && !b11.isEmpty()) {
                for (String str4 : b11) {
                    this.z.add(str4);
                }
            }
            String b12 = this.Y.b("ad_slot_conf", (String) null);
            if (!TextUtils.isEmpty(b12)) {
                try {
                    JSONArray jSONArray4 = new JSONArray(b12);
                    int length4 = jSONArray4.length();
                    if (length4 > 0) {
                        this.f8976c.clear();
                        for (int i5 = 0; i5 < length4; i5++) {
                            a b13 = b(jSONArray4.optJSONObject(i5));
                            if (b13 != null) {
                                this.f8976c.put(b13.f8963a, b13);
                            }
                        }
                    }
                } catch (Exception e4) {
                }
            }
            this.Z = this.Y.b("read_video_from_cache", 1);
            return;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h.b
    public void a(JSONObject jSONObject) {
        String str;
        this.n = jSONObject.optString("xpath");
        JSONObject optJSONObject = jSONObject.optJSONObject("feq_policy");
        if (optJSONObject != null) {
            this.C = optJSONObject.optLong(VastIconXmlManager.DURATION) * 1000;
            this.D = optJSONObject.optInt("max");
        }
        this.E = jSONObject.optInt("vbtt", 5);
        this.F = jSONObject.optInt("fetch_tpl_interval", 3600);
        JSONObject optJSONObject2 = jSONObject.optJSONObject("abtest");
        if (optJSONObject2 != null) {
            this.q = optJSONObject2.optString("version");
            this.r = optJSONObject2.optString("param");
        } else {
            B();
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("log_rate_conf");
        if (optJSONObject3 != null) {
            this.aa = optJSONObject3.optInt("global_rate", 1);
        }
        this.s = jSONObject.optString("pyload_h5");
        this.t = jSONObject.optString("pure_pyload_h5");
        this.G = jSONObject.optString("ads_url");
        this.H = jSONObject.optString("app_log_url");
        this.I = jSONObject.optInt(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, -99);
        g.b().c(this.I);
        this.J = jSONObject.optString("privacy_url", m);
        this.L = jSONObject.optString("consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
        this.N = jSONObject.optString("dc");
        c(jSONObject);
        d(jSONObject);
        this.u = e(jSONObject);
        q.e("splashLoad", "setting-》mSplashLoadType=" + this.u);
        this.v = f(jSONObject);
        q.e("splashLoad", "setting-》mSplashCheckType=" + this.v);
        this.A = jSONObject.optInt("if_both_open", 0);
        this.B = jSONObject.optInt("support_tnc", 1);
        this.w = jSONObject.optInt("al", 0);
        this.Q = jSONObject.optInt("max_tpl_cnts", 100);
        JSONObject optJSONObject4 = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject4 != null) {
            this.P = optJSONObject4.optInt("fetch_tpl_timeout_ctrl", 3000);
            try {
                this.j.clear();
                JSONArray optJSONArray = optJSONObject4.optJSONArray("gecko_hosts");
                if (!(optJSONArray == null || optJSONArray.length() == 0)) {
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        this.j.add(optJSONArray.getString(i2));
                    }
                }
                this.j = a(this.j);
            } catch (Throwable th) {
                q.b("GeckoLog: settings json error ".concat(String.valueOf(th)));
            }
        }
        this.x = System.currentTimeMillis();
        this.y.clear();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("spam_app_list");
        if (optJSONArray2 != null) {
            int length = optJSONArray2.length();
            for (int i3 = 0; i3 < length; i3++) {
                String optString = optJSONArray2.optString(i3);
                if (!TextUtils.isEmpty(optString)) {
                    this.y.add(optString);
                }
            }
        }
        this.z.clear();
        JSONArray optJSONArray3 = jSONObject.optJSONArray("scheme_check_list");
        if (optJSONArray3 != null) {
            int length2 = optJSONArray3.length();
            for (int i4 = 0; i4 < length2; i4++) {
                String optString2 = optJSONArray3.optString(i4);
                if (!TextUtils.isEmpty(optString2)) {
                    this.z.add(optString2);
                }
            }
        }
        JSONObject optJSONObject5 = jSONObject.optJSONObject("download_config");
        if (optJSONObject5 != null) {
            this.o = optJSONObject5.optInt("dl_network", 1);
            this.p = optJSONObject5.optInt("dl_size", 30);
        }
        this.Z = jSONObject.optInt("read_video_from_cache", 1);
        JSONArray optJSONArray4 = jSONObject.optJSONArray("ad_slot_conf_list");
        if (optJSONArray4 != null) {
            String jSONArray = optJSONArray4.toString();
            int length3 = optJSONArray4.length();
            str = jSONArray;
            if (length3 > 0) {
                this.f8976c.clear();
                int i5 = 0;
                while (true) {
                    str = jSONArray;
                    if (i5 >= length3) {
                        break;
                    }
                    a b2 = b(optJSONArray4.optJSONObject(i5));
                    if (b2 != null) {
                        this.f8976c.put(b2.f8963a, b2);
                    }
                    i5++;
                }
            }
        } else {
            str = null;
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("privacy");
        if (optJSONObject6 != null) {
            this.R = optJSONObject6.optInt("ad_enable", Integer.MAX_VALUE);
            this.S = optJSONObject6.optInt("personalized_ad", Integer.MAX_VALUE);
            this.T = optJSONObject6.optInt("sladar_enable", Integer.MAX_VALUE);
            this.U = optJSONObject6.optInt("app_log_enable", Integer.MAX_VALUE);
            this.V = optJSONObject6.optInt("sec_enable", Integer.MAX_VALUE);
            String optString3 = optJSONObject6.optString("fields_allowed", "");
            if (!TextUtils.isEmpty(optString3)) {
                try {
                    JSONArray jSONArray2 = new JSONArray(optString3);
                    int length4 = jSONArray2.length();
                    this.W.clear();
                    for (int i6 = 0; i6 < length4; i6++) {
                        this.W.add(jSONArray2.getString(i6));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {
                this.W.clear();
            }
        } else {
            this.R = Integer.MAX_VALUE;
            this.S = Integer.MAX_VALUE;
            this.T = Integer.MAX_VALUE;
            this.U = Integer.MAX_VALUE;
            this.V = Integer.MAX_VALUE;
            this.W.clear();
        }
        a(str, (String) null);
        this.O = true;
    }

    public boolean a(int i2) {
        return q(String.valueOf(i2)).f8965c == 1;
    }

    public int b() {
        if (this.Q == Integer.MAX_VALUE) {
            if (b.b()) {
                this.Q = a.a("tt_sdk_settings", "max_tpl_cnts", 100);
            } else {
                this.Q = this.Y.b("max_tpl_cnts", 100);
            }
        }
        return this.Q;
    }

    public boolean b(int i2) {
        return i2 != 0 && n.h().q(String.valueOf(i2)).n == 1;
    }

    public boolean b(String str) {
        int i2 = n.h().q(String.valueOf(str)).e;
        return i2 != 1 ? i2 == 2 && t.c(n.a()) != 0 : t.d(n.a());
    }

    public int c(int i2) {
        return q(String.valueOf(i2)).f8964b;
    }

    public boolean c() {
        if (this.A == Integer.MAX_VALUE) {
            if (b.b()) {
                this.A = a.a("tt_sdk_settings", "if_both_open", 0);
            } else {
                this.A = this.Y.b("if_both_open", 0);
            }
        }
        return this.A == 1;
    }

    public boolean c(String str) {
        return q(String.valueOf(str)).g == 1;
    }

    public int d(int i2) {
        return q(String.valueOf(i2)).i;
    }

    public int d(String str) {
        return q(String.valueOf(str)).s;
    }

    public boolean d() {
        if (this.B == Integer.MAX_VALUE) {
            if (b.b()) {
                this.B = a.a("tt_sdk_settings", "support_tnc", 1);
            } else {
                this.B = this.Y.b("support_tnc", 1);
            }
        }
        return this.B == 1;
    }

    public int e(int i2) {
        return q(String.valueOf(i2)).w;
    }

    public String e() {
        if (TextUtils.isEmpty(this.q)) {
            if (b.b()) {
                this.q = a.b("tt_sdk_settings", "ab_test_version", (String) null);
            } else {
                this.q = this.Y.a("ab_test_version");
            }
        }
        return this.q;
    }

    public boolean e(String str) {
        return str == null || n.h().q(String.valueOf(str)).o == 1;
    }

    public int f(String str) {
        return str == null ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : n.h().q(String.valueOf(str)).q;
    }

    public String f() {
        if (TextUtils.isEmpty(this.r)) {
            if (b.b()) {
                this.r = a.b("tt_sdk_settings", "ab_test_param", (String) null);
            } else {
                this.r = this.Y.a("ab_test_param");
            }
        }
        return this.r;
    }

    public int g(String str) {
        return n.h().q(String.valueOf(str)).k;
    }

    public long g() {
        if (this.C == 2147483647L) {
            if (b.b()) {
                this.C = a.a("tt_sdk_settings", VastIconXmlManager.DURATION, 10000L);
            } else {
                this.C = this.Y.b(VastIconXmlManager.DURATION, 10000L);
            }
        }
        return this.C;
    }

    public int h() {
        if (this.D == Integer.MAX_VALUE) {
            if (b.b()) {
                this.D = a.a("tt_sdk_settings", "max", 50);
            } else {
                this.D = this.Y.b("max", 50);
            }
        }
        return this.D;
    }

    public JSONArray h(String str) {
        try {
            Set<String> b2 = com.bytedance.sdk.openadsdk.core.widget.webview.a.a.b(str);
            if (!(b2 == null || b2.size() == 0)) {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : b2) {
                    m a2 = com.bytedance.sdk.openadsdk.core.widget.webview.a.a.a(str2);
                    if (a2 != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", a2.b());
                        jSONObject.put("md5", a2.c());
                        jSONArray.put(jSONObject);
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public String i() {
        if (TextUtils.isEmpty(this.s)) {
            if (b.b()) {
                this.s = a.b("tt_sdk_settings", "pyload_h5", (String) null);
            } else {
                this.s = this.Y.b("pyload_h5", (String) null);
            }
        }
        return this.s;
    }

    public boolean i(String str) {
        try {
            a q = n.h().q(String.valueOf(str));
            if (q != null) {
                return q.y != null;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public String j() {
        if (TextUtils.isEmpty(this.t)) {
            if (b.b()) {
                this.t = a.b("tt_sdk_settings", "playableLoadH5Url", (String) null);
            } else {
                this.t = this.Y.b("playableLoadH5Url", (String) null);
            }
        }
        return this.t;
    }

    public boolean j(String str) {
        try {
            a q = n.h().q(String.valueOf(str));
            if (q != null) {
                return q.z == 8;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public int k() {
        if (this.P == Integer.MAX_VALUE) {
            if (b.b()) {
                this.P = a.a("tt_sdk_settings", "fetch_tpl_timeout_ctrl", 3000);
            } else {
                this.P = this.Y.b("fetch_tpl_timeout_ctrl", 3000);
            }
        }
        if (this.P <= 0) {
            this.P = 3000;
        }
        return this.P;
    }

    public int k(String str) {
        return q(String.valueOf(str)).h;
    }

    public int l(String str) {
        return q(str).j;
    }

    public boolean l() {
        return this.O;
    }

    public int m(String str) {
        if (str == null) {
            return -1;
        }
        return n.h().q(String.valueOf(str)).l;
    }

    public String m() {
        if (TextUtils.isEmpty(this.G)) {
            if (b.b()) {
                this.G = a.b("tt_sdk_settings", "ads_url", l);
            } else {
                this.G = this.Y.b("ads_url", l);
            }
            if (TextUtils.isEmpty(this.G)) {
                this.G = l;
            }
        }
        return this.G;
    }

    public String n() {
        if (TextUtils.isEmpty(this.H)) {
            if (b.b()) {
                this.H = a.b("tt_sdk_settings", "app_log_url", k);
            } else {
                this.H = this.Y.a("app_log_url");
            }
            if (TextUtils.isEmpty(this.H)) {
                this.H = k;
            }
        }
        return this.H;
    }

    public boolean n(String str) {
        return q(String.valueOf(str)).x == 0;
    }

    public int o(String str) {
        if (str == null) {
            return 20;
        }
        return n.h().q(String.valueOf(str)).t;
    }

    public String o() {
        if (TextUtils.isEmpty(this.J)) {
            if (b.b()) {
                this.J = a.b("tt_sdk_settings", "policy_url", m);
            } else {
                this.J = this.Y.b("policy_url", m);
            }
        }
        return this.J;
    }

    public int p(String str) {
        if (str == null) {
            return -1;
        }
        return n.h().q(String.valueOf(str)).m;
    }

    public String p() {
        if (TextUtils.isEmpty(this.L)) {
            if (b.b()) {
                this.L = a.b("tt_sdk_settings", "consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
            } else {
                this.L = this.Y.b("consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
            }
        }
        return this.L;
    }

    public a q(String str) {
        a aVar = this.f8976c.get(str);
        return aVar == null ? t(str) : aVar;
    }

    public String q() {
        if (TextUtils.isEmpty(this.M)) {
            if (b.b()) {
                this.M = a.b("tt_sdk_settings", "dyn_draw_engine_url", i);
            } else {
                this.M = this.Y.b("dyn_draw_engine_url", i);
            }
        }
        return this.M;
    }

    public String r() {
        if (TextUtils.isEmpty(this.N)) {
            if (b.b()) {
                this.N = a.b("tt_sdk_settings", "dc", (String) null);
            } else {
                this.N = this.Y.a("dc");
            }
        }
        return this.N;
    }

    public void r(String str) {
        this.f.add(str);
    }

    public int s() {
        if (this.K == Integer.MAX_VALUE) {
            if (b.b()) {
                this.K = a.a("tt_sdk_settings", "isGdprUser", -1);
            } else {
                this.K = this.Y.b("isGdprUser", -1);
            }
        }
        return this.K;
    }

    public boolean s(String str) {
        if (this.W.size() != 0) {
            return this.W.contains(str);
        }
        int o = af.o();
        if (o == 1) {
            return true;
        }
        if (o == 2) {
            return "mcc".equals(str) || "mnc".equals(str);
        }
        if (o != 3) {
            return false;
        }
        return "mcc".equals(str) || "mnc".equals(str);
    }

    public int t() {
        if (this.E == Integer.MAX_VALUE) {
            if (b.b()) {
                this.E = a.a("tt_sdk_settings", "vbtt", 5);
            } else {
                this.E = this.Y.b("vbtt", 5);
            }
        }
        return this.E;
    }

    public boolean u() {
        if (this.R == Integer.MAX_VALUE) {
            if (b.b()) {
                this.R = a.a("tt_sdk_settings", "privacy_ad_enable", Integer.MAX_VALUE);
            } else {
                this.R = this.Y.b("privacy_ad_enable", Integer.MAX_VALUE);
            }
        }
        int i2 = this.R;
        if (i2 == 1) {
            return true;
        }
        if (i2 == 0) {
            return false;
        }
        int o = af.o();
        return o == 1 || o == 2 || o == 3;
    }

    public int v() {
        if (this.S == Integer.MAX_VALUE) {
            if (b.b()) {
                this.S = a.a("tt_sdk_settings", "privacy_personalized_ad", Integer.MAX_VALUE);
            } else {
                this.S = this.Y.b("privacy_personalized_ad", Integer.MAX_VALUE);
            }
        }
        int i2 = this.S;
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        int o = af.o();
        if (o == 1 || o == 2) {
            return 2;
        }
        return o != 3 ? 0 : 1;
    }

    public boolean w() {
        if (this.V == Integer.MAX_VALUE) {
            if (b.b()) {
                this.V = a.a("tt_sdk_settings", "privacy_sec_enable", Integer.MAX_VALUE);
            } else {
                this.V = this.Y.b("privacy_sec_enable", Integer.MAX_VALUE);
            }
        }
        if ("VA".equalsIgnoreCase(r()) || af.o() == 3) {
            return false;
        }
        int i2 = this.V;
        if (i2 == 1) {
            return true;
        }
        if (i2 == 0) {
            return false;
        }
        int o = af.o();
        return o == 1 || o == 2 || o == 3;
    }

    public String[] x() {
        try {
            Set<String> set = this.j;
            if (set == null || set.size() == 0) {
                if (b.b()) {
                    this.j = a.b("tt_sdk_settings", "gecko_hosts", (Set<String>) null);
                } else {
                    this.j = this.Y.b("gecko_hosts", (Set<String>) null);
                }
                Set<String> a2 = a(this.j);
                this.j = a2;
                if (a2 == null) {
                    return null;
                }
                if (a2.size() == 0) {
                    return null;
                }
            }
            return (String[]) this.j.toArray(new String[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public boolean y() {
        return this.X;
    }

    public boolean z() {
        if (this.aa == Integer.MAX_VALUE) {
            if (b.b()) {
                this.aa = a.a("tt_sdk_settings", "global_rate", 1);
            } else {
                this.aa = this.Y.b("global_rate", 1);
            }
        }
        return this.aa == 1;
    }
}
