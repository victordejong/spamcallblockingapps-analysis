package com.bytedance.sdk.openadsdk.p167g.p169b;

import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4877e;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4878f;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4897q;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.g.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/b/b.class */
public class C4916b extends AbstractC4877e<JSONObject, JSONObject> {

    /* renamed from: a */
    private String f17927a;

    /* renamed from: b */
    private C4754w f17928b;

    public C4916b(String str, C4754w c4754w) {
        this.f17928b = c4754w;
        this.f17927a = str;
    }

    /* renamed from: a */
    public static void m33574a(C4897q c4897q, C4754w c4754w) {
        c4897q.m33612a("appInfo", new C4916b("appInfo", c4754w));
        c4897q.m33612a("adInfo", new C4916b("adInfo", c4754w));
        c4897q.m33612a("sendLog", new C4916b("sendLog", c4754w));
        c4897q.m33612a("playable_style", new C4916b("playable_style", c4754w));
        c4897q.m33612a("getTemplateInfo", new C4916b("getTemplateInfo", c4754w));
        c4897q.m33612a("getTeMaiAds", new C4916b("getTeMaiAds", c4754w));
        c4897q.m33612a("isViewable", new C4916b("isViewable", c4754w));
        c4897q.m33612a("getScreenSize", new C4916b("getScreenSize", c4754w));
        c4897q.m33612a("getCloseButtonInfo", new C4916b("getCloseButtonInfo", c4754w));
        c4897q.m33612a("getVolume", new C4916b("getVolume", c4754w));
        c4897q.m33612a("removeLoading", new C4916b("removeLoading", c4754w));
        c4897q.m33612a("sendReward", new C4916b("sendReward", c4754w));
        c4897q.m33612a("subscribe_app_ad", new C4916b("subscribe_app_ad", c4754w));
        c4897q.m33612a("download_app_ad", new C4916b("download_app_ad", c4754w));
        c4897q.m33612a("cancel_download_app_ad", new C4916b("cancel_download_app_ad", c4754w));
        c4897q.m33612a("unsubscribe_app_ad", new C4916b("unsubscribe_app_ad", c4754w));
        c4897q.m33612a("landscape_click", new C4916b("landscape_click", c4754w));
        c4897q.m33612a("clickEvent", new C4916b("clickEvent", c4754w));
        c4897q.m33612a("renderDidFinish", new C4916b("renderDidFinish", c4754w));
        c4897q.m33612a("dynamicTrack", new C4916b("dynamicTrack", c4754w));
        c4897q.m33612a("skipVideo", new C4916b("skipVideo", c4754w));
        c4897q.m33612a("muteVideo", new C4916b("muteVideo", c4754w));
        c4897q.m33612a("changeVideoState", new C4916b("changeVideoState", c4754w));
        c4897q.m33612a("getCurrentVideoState", new C4916b("getCurrentVideoState", c4754w));
        c4897q.m33612a("send_temai_product_ids", new C4916b("send_temai_product_ids", c4754w));
        c4897q.m33612a("getMaterialMeta", new C4916b("getMaterialMeta", c4754w));
        c4897q.m33612a("endcard_load", new C4916b("endcard_load", c4754w));
        c4897q.m33612a("pauseWebView", new C4916b("pauseWebView", c4754w));
        c4897q.m33612a("pauseWebViewTimers", new C4916b("pauseWebViewTimers", c4754w));
        c4897q.m33612a("webview_time_track", new C4916b("webview_time_track", c4754w));
        c4897q.m33612a("openPrivacy", new C4916b("openPrivacy", c4754w));
    }

    /* renamed from: a */
    public JSONObject mo33573a(JSONObject jSONObject, C4878f c4878f) throws Exception {
        C4754w.C4762a c4762a = new C4754w.C4762a();
        c4762a.f17443a = "call";
        c4762a.f17445c = this.f17927a;
        c4762a.f17446d = jSONObject;
        JSONObject m34155a = this.f17928b.m34155a(c4762a, 3);
        if (C4570g.m35020b().m34989s()) {
            new StringBuilder("[JSB-RSP] version: 3 data=").append(m34155a.toString());
        }
        return m34155a;
    }
}
