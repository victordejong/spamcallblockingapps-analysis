package com.bytedance.sdk.openadsdk.i.a;

import android.os.Build;
import android.text.TextUtils;
import com.a.a.a.a.b.a;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.i.a.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.h;
import com.bytedance.sdk.openadsdk.utils.t;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.network.ImpressionData;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/a/b.class */
public class b<T extends b> implements a {

    /* renamed from: a  reason: collision with root package name */
    private String f9598a;

    /* renamed from: b  reason: collision with root package name */
    private String f9599b;

    /* renamed from: c  reason: collision with root package name */
    private String f9600c;
    private String e;
    private String h;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;

    /* renamed from: d  reason: collision with root package name */
    private String f9601d = "3.5.0.5";
    private long f = System.currentTimeMillis() / 1000;
    private int g = 0;
    private int i = 0;

    public static b<b> b() {
        return new b<>();
    }

    private JSONObject q() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("os", 1);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", af.d());
            jSONObject.put("ua", af.b());
            jSONObject.put("ip", h.a(true));
            jSONObject.put("gaid", a.a().b());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    private T r() {
        return this;
    }

    public T a(int i) {
        this.g = i;
        return r();
    }

    public T a(long j) {
        this.f = j;
        return r();
    }

    public T a(String str) {
        this.f9598a = str;
        return r();
    }

    @Override // com.bytedance.sdk.openadsdk.i.a.a
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(c())) {
                jSONObject.put("type", c());
            }
            if (!TextUtils.isEmpty(e())) {
                jSONObject.put("rit", e());
            }
            if (!TextUtils.isEmpty(f())) {
                jSONObject.put(Reporting.Key.CREATIVE_ID, f());
            }
            if (!TextUtils.isEmpty(g())) {
                jSONObject.put("ad_sdk_version", g());
            }
            if (!TextUtils.isEmpty(h())) {
                jSONObject.put(ImpressionData.APP_VERSION, h());
            } else {
                jSONObject.put(ImpressionData.APP_VERSION, af.f());
            }
            if (i() > 0) {
                jSONObject.put(Reporting.Key.TIMESTAMP, i());
            }
            if (j() > 0) {
                jSONObject.put("adtype", j());
            }
            if (!TextUtils.isEmpty(k())) {
                jSONObject.put("req_id", k());
            }
            jSONObject.put("error_code", l());
            if (!TextUtils.isEmpty(m())) {
                jSONObject.put("error_msg", m());
            }
            if (!TextUtils.isEmpty(n())) {
                jSONObject.put("extra", n());
            }
            if (!TextUtils.isEmpty(o())) {
                jSONObject.put("image_url", o());
            }
            if (!TextUtils.isEmpty(d())) {
                jSONObject.put("event_extra", d());
            }
            if (!TextUtils.isEmpty(p())) {
                jSONObject.put(VastIconXmlManager.DURATION, p());
            }
            if (!TextUtils.isEmpty(g.b().d())) {
                jSONObject.put(AppsFlyerProperties.APP_ID, g.b().d());
            }
            jSONObject.put("conn_type", t.b(n.a()));
            jSONObject.put("device_info", q());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public T b(int i) {
        this.i = i;
        return r();
    }

    public T b(String str) {
        this.m = str;
        return r();
    }

    public T c(String str) {
        this.f9599b = str;
        return r();
    }

    public String c() {
        return this.f9598a;
    }

    public T d(String str) {
        this.f9600c = str;
        return r();
    }

    public String d() {
        return this.m;
    }

    public T e(String str) {
        this.h = str;
        return r();
    }

    public String e() {
        return this.f9599b;
    }

    public T f(String str) {
        this.j = str;
        return r();
    }

    public String f() {
        return this.f9600c;
    }

    public T g(String str) {
        this.k = str;
        return r();
    }

    public String g() {
        return this.f9601d;
    }

    public T h(String str) {
        this.n = str;
        return r();
    }

    public String h() {
        return this.e;
    }

    public long i() {
        return this.f;
    }

    public int j() {
        return this.g;
    }

    public String k() {
        return this.h;
    }

    public int l() {
        return this.i;
    }

    public String m() {
        return this.j;
    }

    public String n() {
        return this.k;
    }

    public String o() {
        return this.l;
    }

    public String p() {
        return this.n;
    }
}
