package com.iab.omid.library.pubmatic.publisher;

import android.webkit.WebView;
import com.iab.omid.library.pubmatic.adsession.AdEvents;
import com.iab.omid.library.pubmatic.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubmatic.adsession.AdSessionContext;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.adsession.ErrorType;
import com.iab.omid.library.pubmatic.adsession.VerificationScriptResource;
import com.iab.omid.library.pubmatic.adsession.media.MediaEvents;
import com.iab.omid.library.pubmatic.p012b.C1759d;
import com.iab.omid.library.pubmatic.p012b.C1760e;
import com.iab.omid.library.pubmatic.p014d.C1769a;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1773d;
import com.iab.omid.library.pubmatic.p015e.C1777b;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/publisher/AdSessionStatePublisher.class */
public abstract class AdSessionStatePublisher {

    /* renamed from: a */
    private C1777b f270a = new C1777b(null);

    /* renamed from: b */
    private AdEvents f271b;

    /* renamed from: c */
    private MediaEvents f272c;

    /* renamed from: d */
    private EnumC1778a f273d;

    /* renamed from: e */
    private long f274e;

    /* renamed from: com.iab.omid.library.pubmatic.publisher.AdSessionStatePublisher$a */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/publisher/AdSessionStatePublisher$a.class */
    public enum EnumC1778a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher() {
        m1188i();
    }

    /* renamed from: a */
    public void mo1187a() {
    }

    /* renamed from: a */
    public void m1207a(float f) {
        C1760e.m1285a().m1283a(getWebView(), f);
    }

    /* renamed from: a */
    public void m1206a(WebView webView) {
        this.f270a = new C1777b(webView);
    }

    /* renamed from: a */
    public void m1205a(AdEvents adEvents) {
        this.f271b = adEvents;
    }

    /* renamed from: a */
    public void m1204a(AdSessionConfiguration adSessionConfiguration) {
        C1760e.m1285a().m1275a(getWebView(), adSessionConfiguration.toJsonObject());
    }

    /* renamed from: a */
    public void m1203a(ErrorType errorType, String str) {
        C1760e.m1285a().m1282a(getWebView(), errorType, str);
    }

    /* renamed from: a */
    public void mo1186a(C1753a c1753a, AdSessionContext adSessionContext) {
        m1202a(c1753a, adSessionContext, null);
    }

    /* renamed from: a */
    public void m1202a(C1753a c1753a, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String adSessionId = c1753a.getAdSessionId();
        JSONObject jSONObject2 = new JSONObject();
        C1770b.m1237a(jSONObject2, "environment", POBConstants.KEY_APP);
        C1770b.m1237a(jSONObject2, "adSessionType", adSessionContext.getAdSessionContextType());
        C1770b.m1237a(jSONObject2, "deviceInfo", C1769a.m1245d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C1770b.m1237a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C1770b.m1237a(jSONObject3, "partnerName", adSessionContext.getPartner().getName());
        C1770b.m1237a(jSONObject3, "partnerVersion", adSessionContext.getPartner().getVersion());
        C1770b.m1237a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C1770b.m1237a(jSONObject4, "libraryVersion", "1.3.12-Pubmatic");
        C1770b.m1237a(jSONObject4, "appId", C1759d.m1288a().m1286b().getApplicationContext().getPackageName());
        C1770b.m1237a(jSONObject2, POBConstants.KEY_APP, jSONObject4);
        if (adSessionContext.getContentUrl() != null) {
            C1770b.m1237a(jSONObject2, "contentUrl", adSessionContext.getContentUrl());
        }
        if (adSessionContext.getCustomReferenceData() != null) {
            C1770b.m1237a(jSONObject2, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            C1770b.m1237a(jSONObject5, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        C1760e.m1285a().m1278a(getWebView(), adSessionId, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: a */
    public void m1201a(MediaEvents mediaEvents) {
        this.f272c = mediaEvents;
    }

    /* renamed from: a */
    public void m1200a(String str) {
        C1760e.m1285a().m1279a(getWebView(), str, (JSONObject) null);
    }

    /* renamed from: a */
    public void m1199a(String str, long j) {
        if (j >= this.f274e) {
            this.f273d = EnumC1778a.AD_STATE_VISIBLE;
            C1760e.m1285a().m1272b(getWebView(), str);
        }
    }

    /* renamed from: a */
    public void m1198a(String str, JSONObject jSONObject) {
        C1760e.m1285a().m1279a(getWebView(), str, jSONObject);
    }

    /* renamed from: a */
    public void m1197a(JSONObject jSONObject) {
        C1760e.m1285a().m1271b(getWebView(), jSONObject);
    }

    /* renamed from: a */
    public void m1196a(boolean z) {
        if (m1192e()) {
            C1760e.m1285a().m1269c(getWebView(), z ? "foregrounded" : "backgrounded");
        }
    }

    /* renamed from: b */
    public void mo1184b() {
        this.f270a.clear();
    }

    /* renamed from: b */
    public void m1195b(String str, long j) {
        if (j < this.f274e || this.f273d == EnumC1778a.AD_STATE_NOTVISIBLE) {
            return;
        }
        this.f273d = EnumC1778a.AD_STATE_NOTVISIBLE;
        C1760e.m1285a().m1272b(getWebView(), str);
    }

    /* renamed from: c */
    public AdEvents m1194c() {
        return this.f271b;
    }

    /* renamed from: d */
    public MediaEvents m1193d() {
        return this.f272c;
    }

    /* renamed from: e */
    public boolean m1192e() {
        return this.f270a.get() != null;
    }

    /* renamed from: f */
    public void m1191f() {
        C1760e.m1285a().m1284a(getWebView());
    }

    /* renamed from: g */
    public void m1190g() {
        C1760e.m1285a().m1273b(getWebView());
    }

    public WebView getWebView() {
        return (WebView) this.f270a.get();
    }

    /* renamed from: h */
    public void m1189h() {
        C1760e.m1285a().m1270c(getWebView());
    }

    /* renamed from: i */
    public void m1188i() {
        this.f274e = C1773d.m1226a();
        this.f273d = EnumC1778a.AD_STATE_IDLE;
    }
}
