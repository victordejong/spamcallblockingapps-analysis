package com.bytedance.sdk.openadsdk.p171i.p172a;

import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5461h;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.network.ImpressionData;
import com.p094a.p095a.p096a.p097a.p099b.C3236a;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.i.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/a/b.class */
public class C4931b<T extends C4931b> implements AbstractC4930a {

    /* renamed from: a */
    private String f17944a;

    /* renamed from: b */
    private String f17945b;

    /* renamed from: c */
    private String f17946c;

    /* renamed from: e */
    private String f17948e;

    /* renamed from: h */
    private String f17951h;

    /* renamed from: j */
    private String f17953j;

    /* renamed from: k */
    private String f17954k;

    /* renamed from: l */
    private String f17955l;

    /* renamed from: m */
    private String f17956m;

    /* renamed from: n */
    private String f17957n;

    /* renamed from: d */
    private String f17947d = "3.5.0.5";

    /* renamed from: f */
    private long f17949f = System.currentTimeMillis() / 1000;

    /* renamed from: g */
    private int f17950g = 0;

    /* renamed from: i */
    private int f17952i = 0;

    /* renamed from: b */
    public static C4931b<C4931b> m33530b() {
        return new C4931b<>();
    }

    /* renamed from: q */
    private JSONObject m33507q() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("os", 1);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", C5438af.m32283d());
            jSONObject.put("ua", C5438af.m32295b());
            jSONObject.put("ip", C5461h.m32164a(true));
            jSONObject.put("gaid", C3236a.m39088a().m39084b());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: r */
    private T m33506r() {
        return this;
    }

    /* renamed from: a */
    public T m33533a(int i) {
        this.f17950g = i;
        return m33506r();
    }

    /* renamed from: a */
    public T m33532a(long j) {
        this.f17949f = j;
        return m33506r();
    }

    /* renamed from: a */
    public T m33531a(String str) {
        this.f17944a = str;
        return m33506r();
    }

    @Override // com.bytedance.sdk.openadsdk.p171i.p172a.AbstractC4930a
    /* renamed from: a */
    public JSONObject mo33068a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(m33527c())) {
                jSONObject.put("type", m33527c());
            }
            if (!TextUtils.isEmpty(m33523e())) {
                jSONObject.put("rit", m33523e());
            }
            if (!TextUtils.isEmpty(m33521f())) {
                jSONObject.put(Reporting.Key.CREATIVE_ID, m33521f());
            }
            if (!TextUtils.isEmpty(m33519g())) {
                jSONObject.put("ad_sdk_version", m33519g());
            }
            if (!TextUtils.isEmpty(m33517h())) {
                jSONObject.put(ImpressionData.APP_VERSION, m33517h());
            } else {
                jSONObject.put(ImpressionData.APP_VERSION, C5438af.m32272f());
            }
            if (m33515i() > 0) {
                jSONObject.put(Reporting.Key.TIMESTAMP, m33515i());
            }
            if (m33514j() > 0) {
                jSONObject.put("adtype", m33514j());
            }
            if (!TextUtils.isEmpty(m33513k())) {
                jSONObject.put("req_id", m33513k());
            }
            jSONObject.put("error_code", m33512l());
            if (!TextUtils.isEmpty(m33511m())) {
                jSONObject.put("error_msg", m33511m());
            }
            if (!TextUtils.isEmpty(m33510n())) {
                jSONObject.put("extra", m33510n());
            }
            if (!TextUtils.isEmpty(m33509o())) {
                jSONObject.put("image_url", m33509o());
            }
            if (!TextUtils.isEmpty(m33525d())) {
                jSONObject.put("event_extra", m33525d());
            }
            if (!TextUtils.isEmpty(m33508p())) {
                jSONObject.put(VastIconXmlManager.DURATION, m33508p());
            }
            if (!TextUtils.isEmpty(C4570g.m35020b().m35012d())) {
                jSONObject.put(AppsFlyerProperties.APP_ID, C4570g.m35020b().m35012d());
            }
            jSONObject.put("conn_type", C5482t.m32089b(C4600n.m34815a()));
            jSONObject.put("device_info", m33507q());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: b */
    public T m33529b(int i) {
        this.f17952i = i;
        return m33506r();
    }

    /* renamed from: b */
    public T m33528b(String str) {
        this.f17956m = str;
        return m33506r();
    }

    /* renamed from: c */
    public T m33526c(String str) {
        this.f17945b = str;
        return m33506r();
    }

    /* renamed from: c */
    public String m33527c() {
        return this.f17944a;
    }

    /* renamed from: d */
    public T m33524d(String str) {
        this.f17946c = str;
        return m33506r();
    }

    /* renamed from: d */
    public String m33525d() {
        return this.f17956m;
    }

    /* renamed from: e */
    public T m33522e(String str) {
        this.f17951h = str;
        return m33506r();
    }

    /* renamed from: e */
    public String m33523e() {
        return this.f17945b;
    }

    /* renamed from: f */
    public T m33520f(String str) {
        this.f17953j = str;
        return m33506r();
    }

    /* renamed from: f */
    public String m33521f() {
        return this.f17946c;
    }

    /* renamed from: g */
    public T m33518g(String str) {
        this.f17954k = str;
        return m33506r();
    }

    /* renamed from: g */
    public String m33519g() {
        return this.f17947d;
    }

    /* renamed from: h */
    public T m33516h(String str) {
        this.f17957n = str;
        return m33506r();
    }

    /* renamed from: h */
    public String m33517h() {
        return this.f17948e;
    }

    /* renamed from: i */
    public long m33515i() {
        return this.f17949f;
    }

    /* renamed from: j */
    public int m33514j() {
        return this.f17950g;
    }

    /* renamed from: k */
    public String m33513k() {
        return this.f17951h;
    }

    /* renamed from: l */
    public int m33512l() {
        return this.f17952i;
    }

    /* renamed from: m */
    public String m33511m() {
        return this.f17953j;
    }

    /* renamed from: n */
    public String m33510n() {
        return this.f17954k;
    }

    /* renamed from: o */
    public String m33509o() {
        return this.f17955l;
    }

    /* renamed from: p */
    public String m33508p() {
        return this.f17957n;
    }
}
