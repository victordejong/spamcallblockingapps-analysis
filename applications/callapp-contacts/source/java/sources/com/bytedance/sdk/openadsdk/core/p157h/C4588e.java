package com.bytedance.sdk.openadsdk.core.p157h;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4563m;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4788b;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4792d;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5490z;
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
/* renamed from: com.bytedance.sdk.openadsdk.core.h.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/e.class */
public class C4588e implements AbstractC4583b {

    /* renamed from: G */
    private String f16743G;

    /* renamed from: H */
    private String f16744H;

    /* renamed from: J */
    private String f16746J;

    /* renamed from: L */
    private String f16748L;

    /* renamed from: e */
    private String f16766e;

    /* renamed from: g */
    private String f16768g;

    /* renamed from: n */
    private String f16771n;

    /* renamed from: q */
    private String f16774q;

    /* renamed from: r */
    private String f16775r;

    /* renamed from: s */
    private String f16776s;

    /* renamed from: t */
    private String f16777t;

    /* renamed from: i */
    private static final String f16733i = C5438af.m32249m();

    /* renamed from: k */
    private static final String f16734k = null;

    /* renamed from: l */
    private static final String f16735l = null;

    /* renamed from: m */
    private static final String f16736m = null;

    /* renamed from: a */
    public static String f16731a = null;

    /* renamed from: b */
    public static String f16732b = "IABTCF_TCString";

    /* renamed from: c */
    private Map<String, C4582a> f16764c = new HashMap();

    /* renamed from: d */
    private Map<String, C4589f> f16765d = new HashMap();

    /* renamed from: f */
    private Set<String> f16767f = new HashSet();

    /* renamed from: h */
    private Set<String> f16769h = Collections.synchronizedSet(new HashSet());

    /* renamed from: j */
    private Set<String> f16770j = Collections.synchronizedSet(new HashSet());

    /* renamed from: o */
    private int f16772o = Integer.MAX_VALUE;

    /* renamed from: p */
    private int f16773p = Integer.MAX_VALUE;

    /* renamed from: u */
    private int f16778u = Integer.MAX_VALUE;

    /* renamed from: v */
    private int f16779v = Integer.MAX_VALUE;

    /* renamed from: w */
    private int f16780w = Integer.MAX_VALUE;

    /* renamed from: x */
    private long f16781x = 0;

    /* renamed from: y */
    private Set<String> f16782y = Collections.synchronizedSet(new HashSet());

    /* renamed from: z */
    private Set<String> f16783z = Collections.synchronizedSet(new HashSet());

    /* renamed from: A */
    private int f16737A = Integer.MAX_VALUE;

    /* renamed from: B */
    private int f16738B = Integer.MAX_VALUE;

    /* renamed from: C */
    private long f16739C = 2147483647L;

    /* renamed from: D */
    private int f16740D = Integer.MAX_VALUE;

    /* renamed from: E */
    private int f16741E = Integer.MAX_VALUE;

    /* renamed from: F */
    private int f16742F = Integer.MAX_VALUE;

    /* renamed from: I */
    private int f16745I = Integer.MAX_VALUE;

    /* renamed from: K */
    private int f16747K = Integer.MAX_VALUE;

    /* renamed from: M */
    private String f16749M = null;

    /* renamed from: N */
    private String f16750N = null;

    /* renamed from: O */
    private boolean f16751O = false;

    /* renamed from: P */
    private int f16752P = Integer.MAX_VALUE;

    /* renamed from: Q */
    private int f16753Q = Integer.MAX_VALUE;

    /* renamed from: R */
    private int f16754R = Integer.MAX_VALUE;

    /* renamed from: S */
    private int f16755S = Integer.MAX_VALUE;

    /* renamed from: T */
    private int f16756T = Integer.MAX_VALUE;

    /* renamed from: U */
    private int f16757U = Integer.MAX_VALUE;

    /* renamed from: V */
    private int f16758V = Integer.MAX_VALUE;

    /* renamed from: W */
    private final Set<String> f16759W = Collections.synchronizedSet(new HashSet());

    /* renamed from: X */
    private volatile boolean f16760X = false;

    /* renamed from: Z */
    private int f16762Z = Integer.MAX_VALUE;

    /* renamed from: aa */
    private int f16763aa = Integer.MAX_VALUE;

    /* renamed from: Y */
    private final C5490z f16761Y = C5490z.m32028a("tt_sdk_settings", C4600n.m34815a());

    /* renamed from: B */
    private void m34916B() {
        this.f16775r = null;
        this.f16774q = null;
        if (C5094b.m33091b()) {
            C5106a.m33036b("tt_sdk_settings", "ab_test_version");
            C5106a.m33036b("tt_sdk_settings", "ab_test_param");
            return;
        }
        this.f16761Y.m32024b("ab_test_version");
        this.f16761Y.m32024b("ab_test_param");
    }

    /* renamed from: a */
    private int m34908a(boolean z) {
        return z ? 20 : 5;
    }

    /* renamed from: a */
    private void m34912a(String str, String str2) {
        if (C5094b.m33091b()) {
            C5106a.m33041a("tt_sdk_settings", "xpath", this.f16771n);
            C5106a.m33042a("tt_sdk_settings", VastIconXmlManager.DURATION, Long.valueOf(this.f16739C));
            C5106a.m33043a("tt_sdk_settings", "max", Integer.valueOf(this.f16740D));
            C5106a.m33043a("tt_sdk_settings", "download_config_dl_network", Integer.valueOf(this.f16772o));
            C5106a.m33043a("tt_sdk_settings", "download_config_dl_size", Integer.valueOf(this.f16773p));
            C5106a.m33043a("tt_sdk_settings", "vbtt", Integer.valueOf(this.f16741E));
            C5106a.m33043a("tt_sdk_settings", "fetch_template", Integer.valueOf(this.f16742F));
            C5106a.m33043a("tt_sdk_settings", "splash_load_type", Integer.valueOf(this.f16778u));
            C5106a.m33043a("tt_sdk_settings", "splash_check_type", Integer.valueOf(this.f16779v));
            C5106a.m33043a("tt_sdk_settings", "if_both_open", Integer.valueOf(this.f16737A));
            C5106a.m33043a("tt_sdk_settings", "support_tnc", Integer.valueOf(this.f16738B));
            C5106a.m33041a("tt_sdk_settings", "pyload_h5", this.f16776s);
            C5106a.m33041a("tt_sdk_settings", "playableLoadH5Url", this.f16777t);
            C5106a.m33043a("tt_sdk_settings", "app_list_control", Integer.valueOf(this.f16780w));
            C5106a.m33043a("tt_sdk_settings", "max_tpl_cnts", Integer.valueOf(this.f16753Q));
            C5106a.m33043a("tt_sdk_settings", "fetch_tpl_timeout_ctrl", Integer.valueOf(this.f16752P));
            C5106a.m33042a("tt_sdk_settings", "hit_app_list_time", Long.valueOf(this.f16781x));
            C5106a.m33040a("tt_sdk_settings", "hit_app_list_data", this.f16782y);
            C5106a.m33040a("tt_sdk_settings", "scheme_list_data", this.f16783z);
            C5106a.m33041a("tt_sdk_settings", "ads_url", this.f16743G);
            C5106a.m33041a("tt_sdk_settings", "app_log_url", this.f16744H);
            C5106a.m33043a("tt_sdk_settings", VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, Integer.valueOf(this.f16745I));
            C5106a.m33041a("tt_sdk_settings", "policy_url", this.f16746J);
            C5106a.m33041a("tt_sdk_settings", "consent_url", this.f16748L);
            C5106a.m33041a("tt_sdk_settings", "dyn_draw_engine_url", this.f16749M);
            C5106a.m33041a("tt_sdk_settings", "dc", this.f16750N);
            C5106a.m33043a("tt_sdk_settings", "isGdprUser", Integer.valueOf(this.f16747K));
            String str3 = this.f16774q;
            if (str3 != null) {
                C5106a.m33041a("tt_sdk_settings", "ab_test_version", str3);
            }
            String str4 = this.f16775r;
            if (str4 != null) {
                C5106a.m33041a("tt_sdk_settings", "ab_test_param", str4);
            }
            if (!TextUtils.isEmpty(str)) {
                C5106a.m33041a("tt_sdk_settings", "ad_slot_conf", str);
            }
            if (!TextUtils.isEmpty(this.f16768g)) {
                C5106a.m33041a("tt_sdk_settings", "template_ids", this.f16768g);
            }
            if (!TextUtils.isEmpty(this.f16766e)) {
                C5106a.m33041a("tt_sdk_settings", "tpl_infos", this.f16766e);
            }
            C5106a.m33043a("tt_sdk_settings", "privacy_ad_enable", Integer.valueOf(this.f16754R));
            C5106a.m33043a("tt_sdk_settings", "privacy_personalized_ad", Integer.valueOf(this.f16755S));
            C5106a.m33043a("tt_sdk_settings", "privacy_sladar_enable", Integer.valueOf(this.f16756T));
            C5106a.m33043a("tt_sdk_settings", "privacy_app_log_enable", Integer.valueOf(this.f16757U));
            C5106a.m33043a("tt_sdk_settings", "privacy_sec_enable", Integer.valueOf(this.f16758V));
            C5106a.m33040a("tt_sdk_settings", "gecko_hosts", this.f16770j);
            if (this.f16759W.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (String str5 : this.f16759W) {
                    jSONArray.put(str5);
                }
                C5106a.m33041a("tt_sdk_settings", "privacy_fields_allowed", jSONArray.toString());
            } else {
                C5106a.m33041a("tt_sdk_settings", "privacy_fields_allowed", "");
            }
            C5106a.m33043a("tt_sdk_settings", "read_video_from_cache", Integer.valueOf(this.f16762Z));
            return;
        }
        this.f16761Y.m32027a("xpath", this.f16771n);
        this.f16761Y.m32029a(VastIconXmlManager.DURATION, this.f16739C);
        this.f16761Y.m32030a("max", this.f16740D);
        this.f16761Y.m32030a("download_config_dl_network", this.f16772o);
        this.f16761Y.m32030a("download_config_dl_size", this.f16773p);
        this.f16761Y.m32030a("fetch_template", this.f16742F);
        this.f16761Y.m32027a("pyload_h5", this.f16776s);
        this.f16761Y.m32027a("playableLoadH5Url", this.f16777t);
        this.f16761Y.m32030a("splash_load_type", this.f16778u);
        this.f16761Y.m32030a("splash_check_type", this.f16779v);
        this.f16761Y.m32030a("if_both_open", this.f16737A);
        this.f16761Y.m32030a("support_tnc", this.f16738B);
        this.f16761Y.m32030a("app_list_control", this.f16780w);
        this.f16761Y.m32030a("max_tpl_cnts", this.f16753Q);
        this.f16761Y.m32030a("fetch_tpl_timeout_ctrl", this.f16752P);
        this.f16761Y.m32029a("hit_app_list_time", this.f16781x);
        this.f16761Y.m32026a("hit_app_list_data", this.f16782y);
        this.f16761Y.m32026a("scheme_list_data", this.f16783z);
        this.f16761Y.m32027a("ads_url", this.f16743G);
        this.f16761Y.m32027a("app_log_url", this.f16744H);
        this.f16761Y.m32030a(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, this.f16745I);
        this.f16761Y.m32027a("policy_url", this.f16746J);
        this.f16761Y.m32027a("consent_url", this.f16748L);
        this.f16761Y.m32027a("dyn_draw_engine_url", this.f16749M);
        this.f16761Y.m32027a("dc", this.f16750N);
        this.f16761Y.m32030a("isGdprUser", this.f16747K);
        String str6 = this.f16774q;
        if (str6 != null) {
            this.f16761Y.m32027a("ab_test_version", str6);
        }
        String str7 = this.f16775r;
        if (str7 != null) {
            this.f16761Y.m32027a("ab_test_param", str7);
        }
        this.f16761Y.m32030a("vbtt", this.f16741E);
        if (!TextUtils.isEmpty(str)) {
            this.f16761Y.m32027a("ad_slot_conf", str);
        }
        if (!TextUtils.isEmpty(this.f16768g)) {
            this.f16761Y.m32027a("template_ids", this.f16768g);
        }
        if (!TextUtils.isEmpty(this.f16766e)) {
            this.f16761Y.m32027a("tpl_infos", this.f16766e);
        }
        this.f16761Y.m32030a("privacy_ad_enable", this.f16754R);
        this.f16761Y.m32030a("privacy_personalized_ad", this.f16755S);
        this.f16761Y.m32030a("privacy_sladar_enable", this.f16756T);
        this.f16761Y.m32030a("privacy_app_log_enable", this.f16757U);
        this.f16761Y.m32030a("privacy_sec_enable", this.f16758V);
        this.f16761Y.m32026a("gecko_hosts", this.f16770j);
        if (this.f16759W.size() > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str8 : this.f16759W) {
                jSONArray2.put(str8);
            }
            this.f16761Y.m32027a("privacy_fields_allowed", jSONArray2.toString());
        } else {
            this.f16761Y.m32027a("privacy_fields_allowed", "");
        }
        this.f16761Y.m32030a("read_video_from_cache", this.f16762Z);
    }

    /* renamed from: b */
    private static C4582a m34904b(JSONObject jSONObject) {
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
        int i = optInt2;
        if (!m34890f(optInt2)) {
            i = 1;
        }
        int i2 = optInt13;
        if (!m34890f(optInt13)) {
            i2 = 1;
        }
        return C4582a.m34963a().m34961a(optString).m34947n(optInt).m34946o(i).m34945p(optInt3).m34944q(optInt4).m34943r(optInt5).m34942s(optInt6).m34941t(optInt7).m34940u(optInt8).m34948m(optInt9).m34949l(optInt10).m34951j(optInt11).m34952i(i2).m34950k(optInt12).m34939v(optInt14).m34955f(optInt15).m34954g(optInt16).m34953h(optInt17).m34956e(optInt18).m34962a(optInt20).m34957d(optInt19).m34959b(optInt21).m34958c(optInt22).m34938w(optInt24).m34937x(optInt23).m34960a(optJSONArray);
    }

    /* renamed from: c */
    private void m34900c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String m33035b = C5094b.m33091b() ? C5106a.m33035b("tt_sdk_settings", "dyn_draw_engine_url", f16733i) : this.f16761Y.m32021b("dyn_draw_engine_url", f16733i);
        this.f16749M = jSONObject.optString("dyn_draw_engine_url", f16733i);
        C5478q.m32106e("TemplateManager", "settinng---TTDynamic.init().....oldDynDrawEngineUrl=".concat(String.valueOf(m33035b)));
        C5478q.m32106e("TemplateManager", "settinng---TTDynamic.init().....newmDynDrawEngineUrl=" + this.f16749M);
        if (TextUtils.isEmpty(m33035b) || TextUtils.isEmpty(this.f16749M) || this.f16749M.equals(m33035b)) {
            return;
        }
        C5478q.m32112b("TemplateManager", "重新初始化模板TTDynamic.init().....");
        try {
            Thread.sleep(5000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        C4792d.m33948a().m33935c();
        C4792d.m33948a().m33939a(false);
        C4788b.m33974a().m33962g();
        C4788b.m33974a().m33967b(false);
        C4786a.m33980b();
        C4792d.m33948a().m33938b();
        C4788b.m33974a().m33969b();
    }

    /* renamed from: d */
    private void m34896d(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("is_gdpr_user", -1);
        this.f16747K = optInt;
        if (optInt == -1 || optInt == 1 || optInt == 0) {
            return;
        }
        this.f16747K = -1;
    }

    /* renamed from: e */
    private int m34892e(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("splash_load_type", 1);
        this.f16778u = optInt;
        if (optInt == 0 || optInt == 1 || optInt == 2 || optInt == 3) {
            return optInt;
        }
        return 1;
    }

    /* renamed from: f */
    private int m34888f(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("splash_check_type", 1);
        this.f16779v = optInt;
        if (optInt == 0 || optInt == 1) {
            return optInt;
        }
        return 1;
    }

    /* renamed from: f */
    private static boolean m34890f(int i) {
        return i == 1 || i == 2;
    }

    /* renamed from: t */
    private C4582a m34860t(String str) {
        return C4582a.m34963a().m34961a(str).m34947n(1).m34946o(!this.f16767f.contains(str) ? 1 : 0).m34945p(2).m34944q(1).m34943r(100).m34942s(0).m34940u(1).m34948m(3).m34949l(-1).m34951j(-1).m34952i(2).m34950k(-1).m34939v(1).m34956e(-1).m34962a(-1).m34957d(20).m34938w(2).m34937x(5).m34960a((JSONArray) null);
    }

    /* renamed from: A */
    public boolean m34917A() {
        if (this.f16762Z == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16762Z = C5106a.m33047a("tt_sdk_settings", "read_video_from_cache", 1);
            } else {
                this.f16762Z = this.f16761Y.m32023b("read_video_from_cache", 1);
            }
        }
        return this.f16762Z == 1;
    }

    /* renamed from: a */
    public int m34913a(String str) {
        if (str == null) {
            return 0;
        }
        return C4600n.m34805h().m34866q(String.valueOf(str)).f16716v;
    }

    /* renamed from: a */
    public int m34911a(String str, boolean z) {
        if (str == null) {
            return m34908a(z);
        }
        C4582a m34866q = C4600n.m34805h().m34866q(String.valueOf(str));
        return m34866q.f16715u != -1 ? m34866q.f16715u : m34908a(z);
    }

    /* renamed from: a */
    public Set<String> m34910a(Set<String> set) {
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

    @Override // com.bytedance.sdk.openadsdk.core.p157h.AbstractC4583b
    /* renamed from: a */
    public void mo34915a() {
        synchronized (this) {
            this.f16760X = true;
            if (C5094b.m33091b()) {
                this.f16771n = C5106a.m33035b("tt_sdk_settings", "xpath", "");
                this.f16739C = C5106a.m33046a("tt_sdk_settings", VastIconXmlManager.DURATION, 10000L);
                this.f16740D = C5106a.m33047a("tt_sdk_settings", "max", 50);
                this.f16772o = C5106a.m33047a("tt_sdk_settings", "download_config_dl_network", 1);
                this.f16773p = C5106a.m33047a("tt_sdk_settings", "download_config_dl_size", 30);
                this.f16741E = C5106a.m33047a("tt_sdk_settings", "vbtt", 5);
                this.f16742F = C5106a.m33047a("tt_sdk_settings", "fetch_template", 3600);
                this.f16768g = C5106a.m33035b("tt_sdk_settings", "template_ids", (String) null);
                this.f16774q = C5106a.m33035b("tt_sdk_settings", "ab_test_version", (String) null);
                this.f16775r = C5106a.m33035b("tt_sdk_settings", "ab_test_param", (String) null);
                this.f16776s = C5106a.m33035b("tt_sdk_settings", "pyload_h5", (String) null);
                this.f16777t = C5106a.m33035b("tt_sdk_settings", "playableLoadH5Url", (String) null);
                this.f16778u = C5106a.m33047a("tt_sdk_settings", "splash_load_type", 1);
                this.f16779v = C5106a.m33047a("tt_sdk_settings", "splash_check_type", 1);
                this.f16737A = C5106a.m33047a("tt_sdk_settings", "if_both_open", 0);
                this.f16738B = C5106a.m33047a("tt_sdk_settings", "support_tnc", 1);
                this.f16752P = C5106a.m33047a("tt_sdk_settings", "fetch_tpl_timeout_ctrl", 3000);
                this.f16753Q = C5106a.m33047a("tt_sdk_settings", "max_tpl_cnts", 100);
                this.f16766e = C5106a.m33035b("tt_sdk_settings", "tpl_infos", (String) null);
                this.f16780w = C5106a.m33047a("tt_sdk_settings", "app_list_control", 0);
                this.f16781x = C5106a.m33046a("tt_sdk_settings", "hit_app_list_time", 0L);
                this.f16743G = C5106a.m33035b("tt_sdk_settings", "ads_url", f16735l);
                this.f16744H = C5106a.m33035b("tt_sdk_settings", "app_log_url", f16734k);
                this.f16745I = C5106a.m33047a("tt_sdk_settings", VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, -99);
                C4570g.m35020b().m35015c(this.f16745I);
                this.f16746J = C5106a.m33035b("tt_sdk_settings", "policy_url", f16736m);
                this.f16748L = C5106a.m33035b("tt_sdk_settings", "consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
                this.f16747K = C5106a.m33047a("tt_sdk_settings", "isGdprUser", -1);
                this.f16749M = C5106a.m33035b("tt_sdk_settings", "dyn_draw_engine_url", f16733i);
                this.f16750N = C5106a.m33035b("tt_sdk_settings", "dc", (String) null);
                this.f16754R = C5106a.m33047a("tt_sdk_settings", "privacy_ad_enable", Integer.MAX_VALUE);
                this.f16755S = C5106a.m33047a("tt_sdk_settings", "privacy_personalized_ad", Integer.MAX_VALUE);
                this.f16756T = C5106a.m33047a("tt_sdk_settings", "privacy_sladar_enable", Integer.MAX_VALUE);
                this.f16757U = C5106a.m33047a("tt_sdk_settings", "privacy_app_log_enable", Integer.MAX_VALUE);
                this.f16758V = C5106a.m33047a("tt_sdk_settings", "privacy_sec_enable", Integer.MAX_VALUE);
                String m33035b = C5106a.m33035b("tt_sdk_settings", "privacy_fields_allowed", (String) null);
                Set<String> set = this.f16770j;
                if (set != null) {
                    set.clear();
                }
                Set<String> m33034b = C5106a.m33034b("tt_sdk_settings", "gecko_hosts", (Set<String>) null);
                this.f16770j = m33034b;
                this.f16770j = m34910a(m33034b);
                this.f16763aa = C5106a.m33047a("tt_sdk_settings", "global_rate", 1);
                if (!TextUtils.isEmpty(m33035b)) {
                    try {
                        JSONArray jSONArray = new JSONArray(m33035b);
                        int length = jSONArray.length();
                        this.f16759W.clear();
                        for (int i = 0; i < length; i++) {
                            this.f16759W.add(jSONArray.getString(i));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                this.f16782y.clear();
                Set<String> m33034b2 = C5106a.m33034b("tt_sdk_settings", "hit_app_list_data", (Set<String>) null);
                if (m33034b2 != null && !m33034b2.isEmpty()) {
                    for (String str : m33034b2) {
                        this.f16782y.add(str);
                    }
                }
                this.f16783z.clear();
                Set<String> m33034b3 = C5106a.m33034b("tt_sdk_settings", "scheme_list_data", (Set<String>) null);
                if (m33034b3 != null && !m33034b3.isEmpty()) {
                    for (String str2 : m33034b3) {
                        this.f16783z.add(str2);
                    }
                }
                String m33035b2 = C5106a.m33035b("tt_sdk_settings", "ad_slot_conf", (String) null);
                if (!TextUtils.isEmpty(m33035b2)) {
                    try {
                        JSONArray jSONArray2 = new JSONArray(m33035b2);
                        int length2 = jSONArray2.length();
                        if (length2 > 0) {
                            this.f16764c.clear();
                            for (int i2 = 0; i2 < length2; i2++) {
                                C4582a m34904b = m34904b(jSONArray2.optJSONObject(i2));
                                if (m34904b != null) {
                                    this.f16764c.put(m34904b.f16695a, m34904b);
                                }
                            }
                        }
                    } catch (Exception e2) {
                    }
                }
                this.f16762Z = C5106a.m33047a("tt_sdk_settings", "read_video_from_cache", 1);
                return;
            }
            this.f16771n = this.f16761Y.m32021b("xpath", "");
            this.f16739C = this.f16761Y.m32022b(VastIconXmlManager.DURATION, 10000L);
            this.f16740D = this.f16761Y.m32023b("max", 50);
            this.f16772o = this.f16761Y.m32023b("download_config_dl_network", 1);
            this.f16773p = this.f16761Y.m32023b("download_config_dl_size", 30);
            this.f16742F = this.f16761Y.m32023b("fetch_template", 3600);
            this.f16774q = this.f16761Y.m32031a("ab_test_version");
            this.f16775r = this.f16761Y.m32031a("ab_test_param");
            this.f16741E = this.f16761Y.m32023b("vbtt", 5);
            this.f16768g = this.f16761Y.m32021b("template_ids", (String) null);
            this.f16776s = this.f16761Y.m32021b("pyload_h5", (String) null);
            this.f16777t = this.f16761Y.m32021b("playableLoadH5Url", (String) null);
            this.f16778u = this.f16761Y.m32023b("splash_load_type", 1);
            this.f16779v = this.f16761Y.m32023b("splash_check_type", 1);
            this.f16737A = this.f16761Y.m32023b("if_both_open", 0);
            this.f16738B = this.f16761Y.m32023b("support_tnc", 1);
            this.f16766e = this.f16761Y.m32021b("tpl_infos", (String) null);
            this.f16780w = this.f16761Y.m32023b("app_list_control", 0);
            this.f16752P = this.f16761Y.m32023b("fetch_tpl_timeout_ctrl", 3000);
            this.f16753Q = this.f16761Y.m32023b("max_tpl_cnts", 100);
            this.f16781x = this.f16761Y.m32022b("hit_app_list_time", 0L);
            this.f16743G = this.f16761Y.m32031a("ads_url");
            this.f16744H = this.f16761Y.m32031a("app_log_url");
            this.f16745I = this.f16761Y.m32023b(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, -99);
            C4570g.m35020b().m35015c(this.f16745I);
            this.f16746J = this.f16761Y.m32021b("policy_url", f16736m);
            this.f16748L = this.f16761Y.m32021b("consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
            this.f16749M = this.f16761Y.m32021b("dyn_draw_engine_url", f16733i);
            this.f16750N = this.f16761Y.m32031a("dc");
            this.f16747K = this.f16761Y.m32023b("isGdprUser", -1);
            this.f16754R = this.f16761Y.m32023b("privacy_ad_enable", Integer.MAX_VALUE);
            this.f16755S = this.f16761Y.m32023b("privacy_personalized_ad", Integer.MAX_VALUE);
            this.f16756T = this.f16761Y.m32023b("privacy_sladar_enable", Integer.MAX_VALUE);
            this.f16757U = this.f16761Y.m32023b("privacy_app_log_enable", Integer.MAX_VALUE);
            this.f16758V = this.f16761Y.m32023b("privacy_sec_enable", Integer.MAX_VALUE);
            Set<String> set2 = this.f16770j;
            if (set2 != null) {
                set2.clear();
            }
            Set<String> m32020b = this.f16761Y.m32020b("gecko_hosts", (Set<String>) null);
            this.f16770j = m32020b;
            this.f16770j = m34910a(m32020b);
            this.f16763aa = this.f16761Y.m32023b("global_rate", 1);
            String m32021b = this.f16761Y.m32021b("privacy_fields_allowed", (String) null);
            if (!TextUtils.isEmpty(m32021b)) {
                try {
                    JSONArray jSONArray3 = new JSONArray(m32021b);
                    int length3 = jSONArray3.length();
                    this.f16759W.clear();
                    for (int i3 = 0; i3 < length3; i3++) {
                        this.f16759W.add(jSONArray3.getString(i3));
                    }
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
            this.f16782y.clear();
            Set<String> m32020b2 = this.f16761Y.m32020b("hit_app_list_data", (Set<String>) null);
            if (m32020b2 != null && !m32020b2.isEmpty()) {
                for (String str3 : m32020b2) {
                    this.f16782y.add(str3);
                }
            }
            this.f16783z.clear();
            Set<String> m32020b3 = this.f16761Y.m32020b("scheme_list_data", (Set<String>) null);
            if (m32020b3 != null && !m32020b3.isEmpty()) {
                for (String str4 : m32020b3) {
                    this.f16783z.add(str4);
                }
            }
            String m32021b2 = this.f16761Y.m32021b("ad_slot_conf", (String) null);
            if (!TextUtils.isEmpty(m32021b2)) {
                try {
                    JSONArray jSONArray4 = new JSONArray(m32021b2);
                    int length4 = jSONArray4.length();
                    if (length4 > 0) {
                        this.f16764c.clear();
                        for (int i4 = 0; i4 < length4; i4++) {
                            C4582a m34904b2 = m34904b(jSONArray4.optJSONObject(i4));
                            if (m34904b2 != null) {
                                this.f16764c.put(m34904b2.f16695a, m34904b2);
                            }
                        }
                    }
                } catch (Exception e4) {
                }
            }
            this.f16762Z = this.f16761Y.m32023b("read_video_from_cache", 1);
            return;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p157h.AbstractC4583b
    /* renamed from: a */
    public void mo34909a(JSONObject jSONObject) {
        String str;
        this.f16771n = jSONObject.optString("xpath");
        JSONObject optJSONObject = jSONObject.optJSONObject("feq_policy");
        if (optJSONObject != null) {
            this.f16739C = optJSONObject.optLong(VastIconXmlManager.DURATION) * 1000;
            this.f16740D = optJSONObject.optInt("max");
        }
        this.f16741E = jSONObject.optInt("vbtt", 5);
        this.f16742F = jSONObject.optInt("fetch_tpl_interval", 3600);
        JSONObject optJSONObject2 = jSONObject.optJSONObject("abtest");
        if (optJSONObject2 != null) {
            this.f16774q = optJSONObject2.optString("version");
            this.f16775r = optJSONObject2.optString("param");
        } else {
            m34916B();
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("log_rate_conf");
        if (optJSONObject3 != null) {
            this.f16763aa = optJSONObject3.optInt("global_rate", 1);
        }
        this.f16776s = jSONObject.optString("pyload_h5");
        this.f16777t = jSONObject.optString("pure_pyload_h5");
        this.f16743G = jSONObject.optString("ads_url");
        this.f16744H = jSONObject.optString("app_log_url");
        this.f16745I = jSONObject.optInt(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, -99);
        C4570g.m35020b().m35015c(this.f16745I);
        this.f16746J = jSONObject.optString("privacy_url", f16736m);
        this.f16748L = jSONObject.optString("consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
        this.f16750N = jSONObject.optString("dc");
        m34900c(jSONObject);
        m34896d(jSONObject);
        this.f16778u = m34892e(jSONObject);
        C5478q.m32106e("splashLoad", "setting-》mSplashLoadType=" + this.f16778u);
        this.f16779v = m34888f(jSONObject);
        C5478q.m32106e("splashLoad", "setting-》mSplashCheckType=" + this.f16779v);
        this.f16737A = jSONObject.optInt("if_both_open", 0);
        this.f16738B = jSONObject.optInt("support_tnc", 1);
        this.f16780w = jSONObject.optInt("al", 0);
        this.f16753Q = jSONObject.optInt("max_tpl_cnts", 100);
        JSONObject optJSONObject4 = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject4 != null) {
            this.f16752P = optJSONObject4.optInt("fetch_tpl_timeout_ctrl", 3000);
            try {
                this.f16770j.clear();
                JSONArray optJSONArray = optJSONObject4.optJSONArray("gecko_hosts");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        this.f16770j.add(optJSONArray.getString(i));
                    }
                }
                this.f16770j = m34910a(this.f16770j);
            } catch (Throwable th) {
                C5478q.m32113b("GeckoLog: settings json error ".concat(String.valueOf(th)));
            }
        }
        this.f16781x = System.currentTimeMillis();
        this.f16782y.clear();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("spam_app_list");
        if (optJSONArray2 != null) {
            int length = optJSONArray2.length();
            for (int i2 = 0; i2 < length; i2++) {
                String optString = optJSONArray2.optString(i2);
                if (!TextUtils.isEmpty(optString)) {
                    this.f16782y.add(optString);
                }
            }
        }
        this.f16783z.clear();
        JSONArray optJSONArray3 = jSONObject.optJSONArray("scheme_check_list");
        if (optJSONArray3 != null) {
            int length2 = optJSONArray3.length();
            for (int i3 = 0; i3 < length2; i3++) {
                String optString2 = optJSONArray3.optString(i3);
                if (!TextUtils.isEmpty(optString2)) {
                    this.f16783z.add(optString2);
                }
            }
        }
        JSONObject optJSONObject5 = jSONObject.optJSONObject("download_config");
        if (optJSONObject5 != null) {
            this.f16772o = optJSONObject5.optInt("dl_network", 1);
            this.f16773p = optJSONObject5.optInt("dl_size", 30);
        }
        this.f16762Z = jSONObject.optInt("read_video_from_cache", 1);
        JSONArray optJSONArray4 = jSONObject.optJSONArray("ad_slot_conf_list");
        if (optJSONArray4 != null) {
            String jSONArray = optJSONArray4.toString();
            int length3 = optJSONArray4.length();
            str = jSONArray;
            if (length3 > 0) {
                this.f16764c.clear();
                int i4 = 0;
                while (true) {
                    str = jSONArray;
                    if (i4 >= length3) {
                        break;
                    }
                    C4582a m34904b = m34904b(optJSONArray4.optJSONObject(i4));
                    if (m34904b != null) {
                        this.f16764c.put(m34904b.f16695a, m34904b);
                    }
                    i4++;
                }
            }
        } else {
            str = null;
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("privacy");
        if (optJSONObject6 != null) {
            this.f16754R = optJSONObject6.optInt("ad_enable", Integer.MAX_VALUE);
            this.f16755S = optJSONObject6.optInt("personalized_ad", Integer.MAX_VALUE);
            this.f16756T = optJSONObject6.optInt("sladar_enable", Integer.MAX_VALUE);
            this.f16757U = optJSONObject6.optInt("app_log_enable", Integer.MAX_VALUE);
            this.f16758V = optJSONObject6.optInt("sec_enable", Integer.MAX_VALUE);
            String optString3 = optJSONObject6.optString("fields_allowed", "");
            if (!TextUtils.isEmpty(optString3)) {
                try {
                    JSONArray jSONArray2 = new JSONArray(optString3);
                    int length4 = jSONArray2.length();
                    this.f16759W.clear();
                    for (int i5 = 0; i5 < length4; i5++) {
                        this.f16759W.add(jSONArray2.getString(i5));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {
                this.f16759W.clear();
            }
        } else {
            this.f16754R = Integer.MAX_VALUE;
            this.f16755S = Integer.MAX_VALUE;
            this.f16756T = Integer.MAX_VALUE;
            this.f16757U = Integer.MAX_VALUE;
            this.f16758V = Integer.MAX_VALUE;
            this.f16759W.clear();
        }
        m34912a(str, (String) null);
        this.f16751O = true;
    }

    /* renamed from: a */
    public boolean m34914a(int i) {
        return m34866q(String.valueOf(i)).f16697c == 1;
    }

    /* renamed from: b */
    public int m34907b() {
        if (this.f16753Q == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16753Q = C5106a.m33047a("tt_sdk_settings", "max_tpl_cnts", 100);
            } else {
                this.f16753Q = this.f16761Y.m32023b("max_tpl_cnts", 100);
            }
        }
        return this.f16753Q;
    }

    /* renamed from: b */
    public boolean m34906b(int i) {
        return i != 0 && C4600n.m34805h().m34866q(String.valueOf(i)).f16708n == 1;
    }

    /* renamed from: b */
    public boolean m34905b(String str) {
        int i = C4600n.m34805h().m34866q(String.valueOf(str)).f16699e;
        return i != 1 ? i == 2 && C5482t.m32088c(C4600n.m34815a()) != 0 : C5482t.m32087d(C4600n.m34815a());
    }

    /* renamed from: c */
    public int m34902c(int i) {
        return m34866q(String.valueOf(i)).f16696b;
    }

    /* renamed from: c */
    public boolean m34903c() {
        if (this.f16737A == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16737A = C5106a.m33047a("tt_sdk_settings", "if_both_open", 0);
            } else {
                this.f16737A = this.f16761Y.m32023b("if_both_open", 0);
            }
        }
        return this.f16737A == 1;
    }

    /* renamed from: c */
    public boolean m34901c(String str) {
        return m34866q(String.valueOf(str)).f16701g == 1;
    }

    /* renamed from: d */
    public int m34898d(int i) {
        return m34866q(String.valueOf(i)).f16703i;
    }

    /* renamed from: d */
    public int m34897d(String str) {
        return m34866q(String.valueOf(str)).f16713s;
    }

    /* renamed from: d */
    public boolean m34899d() {
        if (this.f16738B == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16738B = C5106a.m33047a("tt_sdk_settings", "support_tnc", 1);
            } else {
                this.f16738B = this.f16761Y.m32023b("support_tnc", 1);
            }
        }
        return this.f16738B == 1;
    }

    /* renamed from: e */
    public int m34894e(int i) {
        return m34866q(String.valueOf(i)).f16717w;
    }

    /* renamed from: e */
    public String m34895e() {
        if (TextUtils.isEmpty(this.f16774q)) {
            if (C5094b.m33091b()) {
                this.f16774q = C5106a.m33035b("tt_sdk_settings", "ab_test_version", (String) null);
            } else {
                this.f16774q = this.f16761Y.m32031a("ab_test_version");
            }
        }
        return this.f16774q;
    }

    /* renamed from: e */
    public boolean m34893e(String str) {
        return str == null || C4600n.m34805h().m34866q(String.valueOf(str)).f16709o == 1;
    }

    /* renamed from: f */
    public int m34889f(String str) {
        return str == null ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : C4600n.m34805h().m34866q(String.valueOf(str)).f16711q;
    }

    /* renamed from: f */
    public String m34891f() {
        if (TextUtils.isEmpty(this.f16775r)) {
            if (C5094b.m33091b()) {
                this.f16775r = C5106a.m33035b("tt_sdk_settings", "ab_test_param", (String) null);
            } else {
                this.f16775r = this.f16761Y.m32031a("ab_test_param");
            }
        }
        return this.f16775r;
    }

    /* renamed from: g */
    public int m34886g(String str) {
        return C4600n.m34805h().m34866q(String.valueOf(str)).f16705k;
    }

    /* renamed from: g */
    public long m34887g() {
        if (this.f16739C == 2147483647L) {
            if (C5094b.m33091b()) {
                this.f16739C = C5106a.m33046a("tt_sdk_settings", VastIconXmlManager.DURATION, 10000L);
            } else {
                this.f16739C = this.f16761Y.m32022b(VastIconXmlManager.DURATION, 10000L);
            }
        }
        return this.f16739C;
    }

    /* renamed from: h */
    public int m34885h() {
        if (this.f16740D == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16740D = C5106a.m33047a("tt_sdk_settings", "max", 50);
            } else {
                this.f16740D = this.f16761Y.m32023b("max", 50);
            }
        }
        return this.f16740D;
    }

    /* renamed from: h */
    public JSONArray m34884h(String str) {
        try {
            Set<String> m33978b = C4786a.m33978b(str);
            if (m33978b != null && m33978b.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : m33978b) {
                    C4563m m33982a = C4786a.m33982a(str2);
                    if (m33982a != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", m33982a.m35080b());
                        jSONObject.put("md5", m33982a.m35078c());
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

    /* renamed from: i */
    public String m34883i() {
        if (TextUtils.isEmpty(this.f16776s)) {
            if (C5094b.m33091b()) {
                this.f16776s = C5106a.m33035b("tt_sdk_settings", "pyload_h5", (String) null);
            } else {
                this.f16776s = this.f16761Y.m32021b("pyload_h5", (String) null);
            }
        }
        return this.f16776s;
    }

    /* renamed from: i */
    public boolean m34882i(String str) {
        try {
            C4582a m34866q = C4600n.m34805h().m34866q(String.valueOf(str));
            if (m34866q == null) {
                return false;
            }
            return m34866q.f16719y != null;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: j */
    public String m34881j() {
        if (TextUtils.isEmpty(this.f16777t)) {
            if (C5094b.m33091b()) {
                this.f16777t = C5106a.m33035b("tt_sdk_settings", "playableLoadH5Url", (String) null);
            } else {
                this.f16777t = this.f16761Y.m32021b("playableLoadH5Url", (String) null);
            }
        }
        return this.f16777t;
    }

    /* renamed from: j */
    public boolean m34880j(String str) {
        try {
            C4582a m34866q = C4600n.m34805h().m34866q(String.valueOf(str));
            if (m34866q == null) {
                return false;
            }
            return m34866q.f16720z == 8;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: k */
    public int m34879k() {
        if (this.f16752P == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16752P = C5106a.m33047a("tt_sdk_settings", "fetch_tpl_timeout_ctrl", 3000);
            } else {
                this.f16752P = this.f16761Y.m32023b("fetch_tpl_timeout_ctrl", 3000);
            }
        }
        if (this.f16752P <= 0) {
            this.f16752P = 3000;
        }
        return this.f16752P;
    }

    /* renamed from: k */
    public int m34878k(String str) {
        return m34866q(String.valueOf(str)).f16702h;
    }

    /* renamed from: l */
    public int m34876l(String str) {
        return m34866q(str).f16704j;
    }

    /* renamed from: l */
    public boolean m34877l() {
        return this.f16751O;
    }

    /* renamed from: m */
    public int m34874m(String str) {
        if (str == null) {
            return -1;
        }
        return C4600n.m34805h().m34866q(String.valueOf(str)).f16706l;
    }

    /* renamed from: m */
    public String m34875m() {
        if (TextUtils.isEmpty(this.f16743G)) {
            if (C5094b.m33091b()) {
                this.f16743G = C5106a.m33035b("tt_sdk_settings", "ads_url", f16735l);
            } else {
                this.f16743G = this.f16761Y.m32021b("ads_url", f16735l);
            }
            if (TextUtils.isEmpty(this.f16743G)) {
                this.f16743G = f16735l;
            }
        }
        return this.f16743G;
    }

    /* renamed from: n */
    public String m34873n() {
        if (TextUtils.isEmpty(this.f16744H)) {
            if (C5094b.m33091b()) {
                this.f16744H = C5106a.m33035b("tt_sdk_settings", "app_log_url", f16734k);
            } else {
                this.f16744H = this.f16761Y.m32031a("app_log_url");
            }
            if (TextUtils.isEmpty(this.f16744H)) {
                this.f16744H = f16734k;
            }
        }
        return this.f16744H;
    }

    /* renamed from: n */
    public boolean m34872n(String str) {
        return m34866q(String.valueOf(str)).f16718x == 0;
    }

    /* renamed from: o */
    public int m34870o(String str) {
        if (str == null) {
            return 20;
        }
        return C4600n.m34805h().m34866q(String.valueOf(str)).f16714t;
    }

    /* renamed from: o */
    public String m34871o() {
        if (TextUtils.isEmpty(this.f16746J)) {
            if (C5094b.m33091b()) {
                this.f16746J = C5106a.m33035b("tt_sdk_settings", "policy_url", f16736m);
            } else {
                this.f16746J = this.f16761Y.m32021b("policy_url", f16736m);
            }
        }
        return this.f16746J;
    }

    /* renamed from: p */
    public int m34868p(String str) {
        if (str == null) {
            return -1;
        }
        return C4600n.m34805h().m34866q(String.valueOf(str)).f16707m;
    }

    /* renamed from: p */
    public String m34869p() {
        if (TextUtils.isEmpty(this.f16748L)) {
            if (C5094b.m33091b()) {
                this.f16748L = C5106a.m33035b("tt_sdk_settings", "consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
            } else {
                this.f16748L = this.f16761Y.m32021b("consent_url", "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html");
            }
        }
        return this.f16748L;
    }

    /* renamed from: q */
    public C4582a m34866q(String str) {
        C4582a c4582a = this.f16764c.get(str);
        return c4582a == null ? m34860t(str) : c4582a;
    }

    /* renamed from: q */
    public String m34867q() {
        if (TextUtils.isEmpty(this.f16749M)) {
            if (C5094b.m33091b()) {
                this.f16749M = C5106a.m33035b("tt_sdk_settings", "dyn_draw_engine_url", f16733i);
            } else {
                this.f16749M = this.f16761Y.m32021b("dyn_draw_engine_url", f16733i);
            }
        }
        return this.f16749M;
    }

    /* renamed from: r */
    public String m34865r() {
        if (TextUtils.isEmpty(this.f16750N)) {
            if (C5094b.m33091b()) {
                this.f16750N = C5106a.m33035b("tt_sdk_settings", "dc", (String) null);
            } else {
                this.f16750N = this.f16761Y.m32031a("dc");
            }
        }
        return this.f16750N;
    }

    /* renamed from: r */
    public void m34864r(String str) {
        this.f16767f.add(str);
    }

    /* renamed from: s */
    public int m34863s() {
        if (this.f16747K == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16747K = C5106a.m33047a("tt_sdk_settings", "isGdprUser", -1);
            } else {
                this.f16747K = this.f16761Y.m32023b("isGdprUser", -1);
            }
        }
        return this.f16747K;
    }

    /* renamed from: s */
    public boolean m34862s(String str) {
        if (this.f16759W.size() == 0) {
            int m32246o = C5438af.m32246o();
            if (m32246o == 1) {
                return true;
            }
            if (m32246o == 2) {
                return "mcc".equals(str) || "mnc".equals(str);
            } else if (m32246o != 3) {
                return false;
            } else {
                return "mcc".equals(str) || "mnc".equals(str);
            }
        }
        return this.f16759W.contains(str);
    }

    /* renamed from: t */
    public int m34861t() {
        if (this.f16741E == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16741E = C5106a.m33047a("tt_sdk_settings", "vbtt", 5);
            } else {
                this.f16741E = this.f16761Y.m32023b("vbtt", 5);
            }
        }
        return this.f16741E;
    }

    /* renamed from: u */
    public boolean m34859u() {
        if (this.f16754R == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16754R = C5106a.m33047a("tt_sdk_settings", "privacy_ad_enable", Integer.MAX_VALUE);
            } else {
                this.f16754R = this.f16761Y.m32023b("privacy_ad_enable", Integer.MAX_VALUE);
            }
        }
        int i = this.f16754R;
        if (i == 1) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int m32246o = C5438af.m32246o();
        return m32246o == 1 || m32246o == 2 || m32246o == 3;
    }

    /* renamed from: v */
    public int m34858v() {
        if (this.f16755S == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16755S = C5106a.m33047a("tt_sdk_settings", "privacy_personalized_ad", Integer.MAX_VALUE);
            } else {
                this.f16755S = this.f16761Y.m32023b("privacy_personalized_ad", Integer.MAX_VALUE);
            }
        }
        int i = this.f16755S;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int m32246o = C5438af.m32246o();
        if (m32246o == 1 || m32246o == 2) {
            return 2;
        }
        return m32246o != 3 ? 0 : 1;
    }

    /* renamed from: w */
    public boolean m34857w() {
        if (this.f16758V == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16758V = C5106a.m33047a("tt_sdk_settings", "privacy_sec_enable", Integer.MAX_VALUE);
            } else {
                this.f16758V = this.f16761Y.m32023b("privacy_sec_enable", Integer.MAX_VALUE);
            }
        }
        if ("VA".equalsIgnoreCase(m34865r()) || C5438af.m32246o() == 3) {
            return false;
        }
        int i = this.f16758V;
        if (i == 1) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int m32246o = C5438af.m32246o();
        return m32246o == 1 || m32246o == 2 || m32246o == 3;
    }

    /* renamed from: x */
    public String[] m34856x() {
        try {
            Set<String> set = this.f16770j;
            if (set == null || set.size() == 0) {
                if (C5094b.m33091b()) {
                    this.f16770j = C5106a.m33034b("tt_sdk_settings", "gecko_hosts", (Set<String>) null);
                } else {
                    this.f16770j = this.f16761Y.m32020b("gecko_hosts", (Set<String>) null);
                }
                Set<String> m34910a = m34910a(this.f16770j);
                this.f16770j = m34910a;
                if (m34910a == null) {
                    return null;
                }
                if (m34910a.size() == 0) {
                    return null;
                }
            }
            return (String[]) this.f16770j.toArray(new String[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: y */
    public boolean m34855y() {
        return this.f16760X;
    }

    /* renamed from: z */
    public boolean m34854z() {
        if (this.f16763aa == Integer.MAX_VALUE) {
            if (C5094b.m33091b()) {
                this.f16763aa = C5106a.m33047a("tt_sdk_settings", "global_rate", 1);
            } else {
                this.f16763aa = this.f16761Y.m32023b("global_rate", 1);
            }
        }
        return this.f16763aa == 1;
    }
}
