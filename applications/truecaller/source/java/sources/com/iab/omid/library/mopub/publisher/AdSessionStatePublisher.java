package com.iab.omid.library.mopub.publisher;

import android.support.annotation.NonNull;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.AdEvents;
import com.iab.omid.library.mopub.adsession.AdSessionConfiguration;
import com.iab.omid.library.mopub.adsession.AdSessionContext;
import com.iab.omid.library.mopub.adsession.ErrorType;
import com.iab.omid.library.mopub.adsession.VerificationScriptResource;
import com.iab.omid.library.mopub.adsession.a;
import com.iab.omid.library.mopub.adsession.media.MediaEvents;
import com.iab.omid.library.mopub.p125b.C2606d;
import com.iab.omid.library.mopub.p125b.C2607e;
import com.iab.omid.library.mopub.p127d.C2613a;
import com.iab.omid.library.mopub.p127d.C2614b;
import com.iab.omid.library.mopub.p127d.C2617d;
import com.iab.omid.library.mopub.p128e.C2621b;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/publisher/AdSessionStatePublisher.class */
public abstract class AdSessionStatePublisher {

    /* renamed from: a */
    private C2621b f8377a = new C2621b(null);

    /* renamed from: b */
    private AdEvents f8378b;

    /* renamed from: c */
    private MediaEvents f8379c;

    /* renamed from: d */
    private EnumC2622a f8380d;

    /* renamed from: e */
    private long f8381e;

    /* renamed from: com.iab.omid.library.mopub.publisher.AdSessionStatePublisher$a */
    /* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/publisher/AdSessionStatePublisher$a.class */
    public enum EnumC2622a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher() {
        m36361i();
    }

    /* renamed from: a */
    public void m36383a() {
    }

    /* renamed from: a */
    public void m36382a(float f) {
        C2607e.m36452a().m36450a(getWebView(), f);
    }

    /* renamed from: a */
    public void m36381a(WebView webView) {
        this.f8377a = new C2621b(webView);
    }

    /* renamed from: a */
    public void m36380a(AdEvents adEvents) {
        this.f8378b = adEvents;
    }

    /* renamed from: a */
    public void m36379a(AdSessionConfiguration adSessionConfiguration) {
        C2607e.m36452a().m36442a(getWebView(), adSessionConfiguration.toJsonObject());
    }

    /* renamed from: a */
    public void m36378a(ErrorType errorType, String str) {
        C2607e.m36452a().m36449a(getWebView(), errorType, str);
    }

    /* renamed from: a */
    public void m36377a(a aVar, AdSessionContext adSessionContext) {
        m36376a(aVar, adSessionContext, null);
    }

    /* renamed from: a */
    public void m36376a(a aVar, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String adSessionId = aVar.getAdSessionId();
        JSONObject jSONObject2 = new JSONObject();
        C2614b.m36413a(jSONObject2, "environment", "app");
        C2614b.m36413a(jSONObject2, "adSessionType", adSessionContext.getAdSessionContextType());
        C2614b.m36413a(jSONObject2, "deviceInfo", C2613a.m36421d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C2614b.m36413a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C2614b.m36413a(jSONObject3, "partnerName", adSessionContext.getPartner().getName());
        C2614b.m36413a(jSONObject3, "partnerVersion", adSessionContext.getPartner().getVersion());
        C2614b.m36413a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C2614b.m36413a(jSONObject4, "libraryVersion", "1.3.4-Mopub");
        C2614b.m36413a(jSONObject4, "appId", C2606d.m36455a().m36453b().getApplicationContext().getPackageName());
        C2614b.m36413a(jSONObject2, "app", jSONObject4);
        if (adSessionContext.getContentUrl() != null) {
            C2614b.m36413a(jSONObject2, "contentUrl", adSessionContext.getContentUrl());
        }
        if (adSessionContext.getCustomReferenceData() != null) {
            C2614b.m36413a(jSONObject2, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            C2614b.m36413a(jSONObject5, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        C2607e.m36452a().m36445a(getWebView(), adSessionId, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: a */
    public void m36375a(MediaEvents mediaEvents) {
        this.f8379c = mediaEvents;
    }

    /* renamed from: a */
    public void m36374a(String str) {
        C2607e.m36452a().m36446a(getWebView(), str, (JSONObject) null);
    }

    /* renamed from: a */
    public void m36373a(String str, long j) {
        if (j >= this.f8381e) {
            this.f8380d = EnumC2622a.AD_STATE_VISIBLE;
            C2607e.m36452a().m36439b(getWebView(), str);
        }
    }

    /* renamed from: a */
    public void m36372a(String str, JSONObject jSONObject) {
        C2607e.m36452a().m36446a(getWebView(), str, jSONObject);
    }

    /* renamed from: a */
    public void m36371a(@NonNull JSONObject jSONObject) {
        C2607e.m36452a().m36438b(getWebView(), jSONObject);
    }

    /* renamed from: a */
    public void m36370a(boolean z) {
        if (m36365e()) {
            C2607e.m36452a().m36436c(getWebView(), z ? "foregrounded" : "backgrounded");
        }
    }

    /* renamed from: b */
    public void m36369b() {
        this.f8377a.clear();
    }

    /* renamed from: b */
    public void m36368b(String str, long j) {
        if (j >= this.f8381e) {
            EnumC2622a enumC2622a = this.f8380d;
            EnumC2622a enumC2622a2 = EnumC2622a.AD_STATE_NOTVISIBLE;
            if (enumC2622a == enumC2622a2) {
                return;
            }
            this.f8380d = enumC2622a2;
            C2607e.m36452a().m36439b(getWebView(), str);
        }
    }

    /* renamed from: c */
    public AdEvents m36367c() {
        return this.f8378b;
    }

    /* renamed from: d */
    public MediaEvents m36366d() {
        return this.f8379c;
    }

    /* renamed from: e */
    public boolean m36365e() {
        return this.f8377a.get() != null;
    }

    /* renamed from: f */
    public void m36364f() {
        C2607e.m36452a().m36451a(getWebView());
    }

    /* renamed from: g */
    public void m36363g() {
        C2607e.m36452a().m36440b(getWebView());
    }

    public WebView getWebView() {
        return this.f8377a.get();
    }

    /* renamed from: h */
    public void m36362h() {
        C2607e.m36452a().m36437c(getWebView());
    }

    /* renamed from: i */
    public void m36361i() {
        this.f8381e = C2617d.m36402a();
        this.f8380d = EnumC2622a.AD_STATE_IDLE;
    }
}
