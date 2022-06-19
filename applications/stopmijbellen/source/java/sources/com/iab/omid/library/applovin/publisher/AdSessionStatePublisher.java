package com.iab.omid.library.applovin.publisher;

import android.webkit.WebView;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.adsession.ErrorType;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.p060b.C1935d;
import com.iab.omid.library.applovin.p060b.C1936e;
import com.iab.omid.library.applovin.p062d.C1945a;
import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1949d;
import com.iab.omid.library.applovin.p063e.C1953b;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/publisher/AdSessionStatePublisher.class */
public abstract class AdSessionStatePublisher {

    /* renamed from: a */
    private C1953b f7201a = new C1953b(null);

    /* renamed from: b */
    private AdEvents f7202b;

    /* renamed from: c */
    private MediaEvents f7203c;

    /* renamed from: d */
    private EnumC1954a f7204d;

    /* renamed from: e */
    private long f7205e;

    /* renamed from: com.iab.omid.library.applovin.publisher.AdSessionStatePublisher$a */
    /* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/publisher/AdSessionStatePublisher$a.class */
    public enum EnumC1954a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher() {
        m4049i();
    }

    /* renamed from: a */
    public void mo4048a() {
    }

    /* renamed from: a */
    public void m4068a(float f) {
        C1936e.m4149a().m4147a(getWebView(), f);
    }

    /* renamed from: a */
    public void m4067a(WebView webView) {
        this.f7201a = new C1953b(webView);
    }

    /* renamed from: a */
    public void m4066a(AdEvents adEvents) {
        this.f7202b = adEvents;
    }

    /* renamed from: a */
    public void m4065a(AdSessionConfiguration adSessionConfiguration) {
        C1936e.m4149a().m4139a(getWebView(), adSessionConfiguration.toJsonObject());
    }

    /* renamed from: a */
    public void m4064a(ErrorType errorType, String str) {
        C1936e.m4149a().m4146a(getWebView(), errorType, str);
    }

    /* renamed from: a */
    public void mo4047a(C1929a c1929a, AdSessionContext adSessionContext) {
        m4063a(c1929a, adSessionContext, null);
    }

    /* renamed from: a */
    public void m4063a(C1929a c1929a, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String adSessionId = c1929a.getAdSessionId();
        JSONObject jSONObject2 = new JSONObject();
        C1946b.m4099a(jSONObject2, "environment", "app");
        C1946b.m4099a(jSONObject2, "adSessionType", adSessionContext.getAdSessionContextType());
        C1946b.m4099a(jSONObject2, "deviceInfo", C1945a.m4108d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C1946b.m4099a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C1946b.m4099a(jSONObject3, "partnerName", adSessionContext.getPartner().getName());
        C1946b.m4099a(jSONObject3, "partnerVersion", adSessionContext.getPartner().getVersion());
        C1946b.m4099a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C1946b.m4099a(jSONObject4, "libraryVersion", "1.3.30-Applovin");
        C1946b.m4099a(jSONObject4, "appId", C1935d.m4152a().m4150b().getApplicationContext().getPackageName());
        C1946b.m4099a(jSONObject2, "app", jSONObject4);
        if (adSessionContext.getContentUrl() != null) {
            C1946b.m4099a(jSONObject2, "contentUrl", adSessionContext.getContentUrl());
        }
        if (adSessionContext.getCustomReferenceData() != null) {
            C1946b.m4099a(jSONObject2, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            C1946b.m4099a(jSONObject5, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        C1936e.m4149a().m4142a(getWebView(), adSessionId, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: a */
    public void m4062a(MediaEvents mediaEvents) {
        this.f7203c = mediaEvents;
    }

    /* renamed from: a */
    public void m4061a(String str) {
        C1936e.m4149a().m4143a(getWebView(), str, (JSONObject) null);
    }

    /* renamed from: a */
    public void m4060a(String str, long j) {
        if (j >= this.f7205e) {
            this.f7204d = EnumC1954a.AD_STATE_VISIBLE;
            C1936e.m4149a().m4136b(getWebView(), str);
        }
    }

    /* renamed from: a */
    public void m4059a(String str, JSONObject jSONObject) {
        C1936e.m4149a().m4143a(getWebView(), str, jSONObject);
    }

    /* renamed from: a */
    public void m4058a(JSONObject jSONObject) {
        C1936e.m4149a().m4135b(getWebView(), jSONObject);
    }

    /* renamed from: a */
    public void m4057a(boolean z) {
        if (m4053e()) {
            C1936e.m4149a().m4133c(getWebView(), z ? "foregrounded" : "backgrounded");
        }
    }

    /* renamed from: b */
    public void mo4045b() {
        this.f7201a.clear();
    }

    /* renamed from: b */
    public void m4056b(String str, long j) {
        if (j >= this.f7205e) {
            EnumC1954a enumC1954a = this.f7204d;
            EnumC1954a enumC1954a2 = EnumC1954a.AD_STATE_NOTVISIBLE;
            if (enumC1954a == enumC1954a2) {
                return;
            }
            this.f7204d = enumC1954a2;
            C1936e.m4149a().m4136b(getWebView(), str);
        }
    }

    /* renamed from: c */
    public AdEvents m4055c() {
        return this.f7202b;
    }

    /* renamed from: d */
    public MediaEvents m4054d() {
        return this.f7203c;
    }

    /* renamed from: e */
    public boolean m4053e() {
        return this.f7201a.get() != null;
    }

    /* renamed from: f */
    public void m4052f() {
        C1936e.m4149a().m4148a(getWebView());
    }

    /* renamed from: g */
    public void m4051g() {
        C1936e.m4149a().m4137b(getWebView());
    }

    public WebView getWebView() {
        return this.f7201a.get();
    }

    /* renamed from: h */
    public void m4050h() {
        C1936e.m4149a().m4134c(getWebView());
    }

    /* renamed from: i */
    public void m4049i() {
        this.f7205e = C1949d.m4087a();
        this.f7204d = EnumC1954a.AD_STATE_IDLE;
    }
}
