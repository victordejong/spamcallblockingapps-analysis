package com.iab.omid.library.mopub.adsession;

import android.support.annotation.Nullable;
import android.webkit.WebView;
import com.iab.omid.library.mopub.p127d.C2618e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdSessionContext.class */
public final class AdSessionContext {
    private final AdSessionContextType adSessionContextType;
    @Nullable
    private final String contentUrl;
    private final String customReferenceData;
    private final Map<String, VerificationScriptResource> injectedResourcesMap = new HashMap();
    private final String omidJsScriptContent;
    private final Partner partner;
    private final List<VerificationScriptResource> verificationScriptResources;
    private final WebView webView;

    private AdSessionContext(Partner partner, WebView webView, String str, List<VerificationScriptResource> list, @Nullable String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.verificationScriptResources = arrayList;
        this.partner = partner;
        this.webView = webView;
        this.omidJsScriptContent = str;
        this.adSessionContextType = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            for (VerificationScriptResource verificationScriptResource : list) {
                this.injectedResourcesMap.put(UUID.randomUUID().toString(), verificationScriptResource);
            }
        }
        this.contentUrl = str2;
        this.customReferenceData = str3;
    }

    public static AdSessionContext createHtmlAdSessionContext(Partner partner, WebView webView, @Nullable String str, String str2) {
        C2618e.m36398a(partner, "Partner is null");
        C2618e.m36398a(webView, "WebView is null");
        if (str2 != null) {
            C2618e.m36397a(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public static AdSessionContext createJavascriptAdSessionContext(Partner partner, WebView webView, @Nullable String str, String str2) {
        C2618e.m36398a(partner, "Partner is null");
        C2618e.m36398a(webView, "WebView is null");
        if (str2 != null) {
            C2618e.m36397a(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str, str2, AdSessionContextType.JAVASCRIPT);
    }

    public static AdSessionContext createNativeAdSessionContext(Partner partner, String str, List<VerificationScriptResource> list, @Nullable String str2, String str3) {
        C2618e.m36398a(partner, "Partner is null");
        C2618e.m36398a((Object) str, "OM SDK JS script content is null");
        C2618e.m36398a(list, "VerificationScriptResources is null");
        if (str3 != null) {
            C2618e.m36397a(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType getAdSessionContextType() {
        return this.adSessionContextType;
    }

    @Nullable
    public String getContentUrl() {
        return this.contentUrl;
    }

    public String getCustomReferenceData() {
        return this.customReferenceData;
    }

    public Map<String, VerificationScriptResource> getInjectedResourcesMap() {
        return Collections.unmodifiableMap(this.injectedResourcesMap);
    }

    public String getOmidJsScriptContent() {
        return this.omidJsScriptContent;
    }

    public Partner getPartner() {
        return this.partner;
    }

    public List<VerificationScriptResource> getVerificationScriptResources() {
        return Collections.unmodifiableList(this.verificationScriptResources);
    }

    public WebView getWebView() {
        return this.webView;
    }
}
