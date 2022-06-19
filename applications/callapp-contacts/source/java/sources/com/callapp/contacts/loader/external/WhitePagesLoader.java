package com.callapp.contacts.loader.external;

import android.os.Build;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.WhitePagesData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.webview.BaseWebViewDialog;
import com.callapp.contacts.util.webview.WebViewUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.NameValidationUtils;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/WhitePagesLoader.class */
public class WhitePagesLoader extends ExternalSourcesLoader<WhitePagesData> {

    /* renamed from: b */
    private static final String f25490b = new String(Base64.m26006a("aHR0cDovL3d3dy53aGl0ZXBhZ2VzLmNvbS9waG9uZS8lcw=="));

    /* renamed from: c */
    private static final String f25491c = new String(Base64.m26006a("d2hpdGVwYWdlcy5jb20="));

    /* renamed from: a */
    final ContactLoader f25492a;

    /* renamed from: f */
    private WebViewClient f25493f = new WebViewClient() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.1
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            webView.evaluateJavascript(Activities.getString(2131886977), new ValueCallback<String>() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.1.1
                @Override // android.webkit.ValueCallback
                public /* synthetic */ void onReceiveValue(String str2) {
                    CLog.m27611a(WhitePagesLoader.class, str2);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return false;
            }
            super.onRenderProcessGone(webView, renderProcessGoneDetail);
            if (webView == null || webView.getParent() == null) {
                return true;
            }
            ((ViewGroup) webView.getParent()).removeView(webView);
            webView.destroy();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener.class */
    public static class WhitePagesListener {

        /* renamed from: a */
        private final WhitePagesLoader f25504a;

        /* renamed from: b */
        private final LoadContext f25505b;

        public WhitePagesListener(LoadContext loadContext, WhitePagesLoader whitePagesLoader) {
            this.f25504a = whitePagesLoader;
            this.f25505b = loadContext;
        }

        /* renamed from: a */
        static /* synthetic */ WhitePagesData m28810a(JSONObject jSONObject) {
            WhitePagesData whitePagesData = new WhitePagesData();
            String optString = jSONObject.optString("wp_name");
            if (StringUtils.m26045b((CharSequence) optString)) {
                whitePagesData.setFullName(optString);
            }
            JSONAddress jSONAddress = new JSONAddress();
            String optString2 = jSONObject.optString("wp_city");
            if (StringUtils.m26045b((CharSequence) optString2)) {
                jSONAddress.setCity(optString2);
            }
            String optString3 = jSONObject.optString("wp_street");
            if (StringUtils.m26045b((CharSequence) optString3)) {
                jSONAddress.setStreet(optString3);
            }
            String optString4 = jSONObject.optString("wp_state");
            if (StringUtils.m26045b((CharSequence) optString4)) {
                jSONAddress.setState(optString4);
            }
            String optString5 = jSONObject.optString("wp_postal_code");
            if (StringUtils.m26045b((CharSequence) optString5)) {
                jSONAddress.setPostalCode(optString5);
            }
            whitePagesData.setAddress(jSONAddress);
            return whitePagesData;
        }

        @JavascriptInterface
        public void setWhitePagesDataList(final String str) {
            if (StringUtils.m26045b((CharSequence) str)) {
                LoadContext.m28866a(new Task() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.WhitePagesListener.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        try {
                            WhitePagesData m28810a = WhitePagesListener.m28810a(new JSONObject(str));
                            m28810a.setKey(WhitePagesListener.this.f25505b.f25322a.getPhone().m26101a());
                            WhitePagesListener.this.f25504a.m28831a(WhitePagesListener.this.f25505b, Collections.singletonList(m28810a));
                            CLog.m27611a(WhitePagesData.class, "WP data parsing succeeded for: " + str);
                        } catch (JSONException e) {
                            CLog.m27611a(WhitePagesData.class, "Error parsing json result: " + str + " - " + e);
                        }
                    }
                });
            } else {
                CLog.m27611a(WhitePagesData.class, "WP  returned with no results for: ");
                CacheManager.get().m28389a((Class<String>) this.f25504a.getDataClass(), this.f25505b.f25322a.getCacheKey((Class) this.f25504a.getDataClass()), (String) new WhitePagesData());
            }
            WhitePagesLoader whitePagesLoader = this.f25504a;
            whitePagesLoader.f25492a.removeWebview(whitePagesLoader);
        }

        @JavascriptInterface
        public boolean validateWPName(String str) {
            return NameValidationUtils.m26063b(str);
        }
    }

    static {
        Base64Utils.getInstance();
        Base64Utils.getInstance();
    }

    public WhitePagesLoader(ContactLoader contactLoader) {
        this.f25492a = contactLoader;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    protected final /* synthetic */ JSONExternalSourceContact mo28805a(WhitePagesData whitePagesData) {
        WhitePagesData whitePagesData2 = whitePagesData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setName(whitePagesData2.getFullName());
        if (whitePagesData2.getAddress() != null) {
            jSONExternalSourceContact.setAddresses(Collections.singletonList(whitePagesData2.getAddress()));
        }
        return jSONExternalSourceContact;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    protected final /* synthetic */ void mo28808a(LoadContext loadContext, WhitePagesData whitePagesData) {
        final ContactData contactData = loadContext.f25322a;
        contactData.setWhitePagesData(whitePagesData);
        MultiTaskRunner m28862b = loadContext.m28862b();
        m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                contactData.updateFullName();
            }
        });
        m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.4
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                contactData.updateAddresses();
            }
        });
        loadContext.m28868a(m28862b, this.f25279d);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: c */
    protected final List<WhitePagesData> mo28800c(final LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        Phone phone = contactData.getPhone();
        synchronized (contactData.getLock(WhitePagesLoader.class)) {
            if (phone != null) {
                if (!contactData.isContactInDevice() && ("US".equals(phone.getRegionCode()) || "CA".equals(phone.getRegionCode()))) {
                    WhitePagesData whitePagesData = contactData.getWhitePagesData();
                    WhitePagesData whitePagesData2 = whitePagesData;
                    if (whitePagesData != null) {
                        whitePagesData2 = whitePagesData;
                        if (StringUtils.m26045b((CharSequence) whitePagesData.getFullName())) {
                            whitePagesData2 = whitePagesData;
                            if (!NameValidationUtils.m26063b(whitePagesData.getFullName())) {
                                CacheManager.get().m28390a((Class<?>) getDataClass(), contactData.getCacheKey((Class) getDataClass()));
                                whitePagesData2 = null;
                            }
                        }
                    }
                    if (whitePagesData2 != null && !whitePagesData2.isExpired(2131427415)) {
                        return null;
                    }
                    if (!CallAppRemoteConfigManager.get().m28698c("whitePagesEnabled")) {
                        CLog.m27611a(WhitePagesLoader.class, "WhitePagesLoader is disabled");
                        return null;
                    }
                    if (HttpUtils.m26967c() && phone.isValidForSearch()) {
                        final String format = String.format(f25490b, phone.m26095b());
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.2
                            @Override // java.lang.Runnable
                            public void run() {
                                WebView webView = new WebView(CallAppApplication.get());
                                WebViewUtils.m26867a(WhitePagesLoader.f25491c);
                                WebViewUtils.m26867a("." + WhitePagesLoader.f25491c);
                                WebViewUtils.m26867a("http://" + WhitePagesLoader.f25491c);
                                WebViewUtils.m26867a("http://. " + WhitePagesLoader.f25491c);
                                WebViewUtils.m26867a("https://" + WhitePagesLoader.f25491c);
                                WebViewUtils.m26867a("https://. " + WhitePagesLoader.f25491c);
                                BaseWebViewDialog.m26870a(webView, CallAppRemoteConfigManager.get().m28703a("webViewUserAgent"), WhitePagesLoader.this.f25493f, new BaseWebViewDialog.SingleWindowWebChromeClient(null));
                                webView.addJavascriptInterface(new WhitePagesListener(loadContext, this), "callAppJSObj");
                                webView.loadUrl(format);
                                WhitePagesLoader.this.f25492a.addWebview(WhitePagesLoader.this, webView);
                            }
                        });
                        return null;
                    }
                    return null;
                }
            }
            return null;
        }
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected Class<WhitePagesData> getDataClass() {
        return WhitePagesData.class;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected int getExernalSourceId() {
        return 1004;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
