package com.bytedance.sdk.openadsdk.g.b;

import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.g.a.e;
import com.bytedance.sdk.openadsdk.g.a.f;
import com.bytedance.sdk.openadsdk.g.a.q;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/b/b.class */
public class b extends e<JSONObject, JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private String f9585a;

    /* renamed from: b  reason: collision with root package name */
    private w f9586b;

    public b(String str, w wVar) {
        this.f9586b = wVar;
        this.f9585a = str;
    }

    public static void a(q qVar, w wVar) {
        qVar.a("appInfo", new b("appInfo", wVar));
        qVar.a("adInfo", new b("adInfo", wVar));
        qVar.a("sendLog", new b("sendLog", wVar));
        qVar.a("playable_style", new b("playable_style", wVar));
        qVar.a("getTemplateInfo", new b("getTemplateInfo", wVar));
        qVar.a("getTeMaiAds", new b("getTeMaiAds", wVar));
        qVar.a("isViewable", new b("isViewable", wVar));
        qVar.a("getScreenSize", new b("getScreenSize", wVar));
        qVar.a("getCloseButtonInfo", new b("getCloseButtonInfo", wVar));
        qVar.a("getVolume", new b("getVolume", wVar));
        qVar.a("removeLoading", new b("removeLoading", wVar));
        qVar.a("sendReward", new b("sendReward", wVar));
        qVar.a("subscribe_app_ad", new b("subscribe_app_ad", wVar));
        qVar.a("download_app_ad", new b("download_app_ad", wVar));
        qVar.a("cancel_download_app_ad", new b("cancel_download_app_ad", wVar));
        qVar.a("unsubscribe_app_ad", new b("unsubscribe_app_ad", wVar));
        qVar.a("landscape_click", new b("landscape_click", wVar));
        qVar.a("clickEvent", new b("clickEvent", wVar));
        qVar.a("renderDidFinish", new b("renderDidFinish", wVar));
        qVar.a("dynamicTrack", new b("dynamicTrack", wVar));
        qVar.a("skipVideo", new b("skipVideo", wVar));
        qVar.a("muteVideo", new b("muteVideo", wVar));
        qVar.a("changeVideoState", new b("changeVideoState", wVar));
        qVar.a("getCurrentVideoState", new b("getCurrentVideoState", wVar));
        qVar.a("send_temai_product_ids", new b("send_temai_product_ids", wVar));
        qVar.a("getMaterialMeta", new b("getMaterialMeta", wVar));
        qVar.a("endcard_load", new b("endcard_load", wVar));
        qVar.a("pauseWebView", new b("pauseWebView", wVar));
        qVar.a("pauseWebViewTimers", new b("pauseWebViewTimers", wVar));
        qVar.a("webview_time_track", new b("webview_time_track", wVar));
        qVar.a("openPrivacy", new b("openPrivacy", wVar));
    }

    public JSONObject a(JSONObject jSONObject, f fVar) throws Exception {
        w.a aVar = new w.a();
        aVar.f9276a = "call";
        aVar.f9278c = this.f9585a;
        aVar.f9279d = jSONObject;
        JSONObject a2 = this.f9586b.a(aVar, 3);
        if (g.b().s()) {
            new StringBuilder("[JSB-RSP] version: 3 data=").append(a2.toString());
        }
        return a2;
    }
}
