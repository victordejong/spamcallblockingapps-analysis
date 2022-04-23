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

    /* renamed from: b  reason: collision with root package name */
    private static final String f14696b = new String(Base64.a("aHR0cDovL3d3dy53aGl0ZXBhZ2VzLmNvbS9waG9uZS8lcw=="));

    /* renamed from: c  reason: collision with root package name */
    private static final String f14697c = new String(Base64.a("d2hpdGVwYWdlcy5jb20="));

    /* renamed from: a  reason: collision with root package name */
    final ContactLoader f14698a;
    private WebViewClient f = new WebViewClient() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.1
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            webView.evaluateJavascript(Activities.getString(2131886977), new ValueCallback<String>() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.1.1
                @Override // android.webkit.ValueCallback
                public /* synthetic */ void onReceiveValue(String str2) {
                    CLog.a(WhitePagesLoader.class, str2);
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

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener.class */
    static class WhitePagesListener {

        /* renamed from: a  reason: collision with root package name */
        private final WhitePagesLoader f14709a;

        /* renamed from: b  reason: collision with root package name */
        private final LoadContext f14710b;

        public WhitePagesListener(LoadContext loadContext, WhitePagesLoader whitePagesLoader) {
            this.f14709a = whitePagesLoader;
            this.f14710b = loadContext;
        }

        static /* synthetic */ WhitePagesData a(JSONObject jSONObject) {
            WhitePagesData whitePagesData = new WhitePagesData();
            String optString = jSONObject.optString("wp_name");
            if (StringUtils.b((CharSequence) optString)) {
                whitePagesData.setFullName(optString);
            }
            JSONAddress jSONAddress = new JSONAddress();
            String optString2 = jSONObject.optString("wp_city");
            if (StringUtils.b((CharSequence) optString2)) {
                jSONAddress.setCity(optString2);
            }
            String optString3 = jSONObject.optString("wp_street");
            if (StringUtils.b((CharSequence) optString3)) {
                jSONAddress.setStreet(optString3);
            }
            String optString4 = jSONObject.optString("wp_state");
            if (StringUtils.b((CharSequence) optString4)) {
                jSONAddress.setState(optString4);
            }
            String optString5 = jSONObject.optString("wp_postal_code");
            if (StringUtils.b((CharSequence) optString5)) {
                jSONAddress.setPostalCode(optString5);
            }
            whitePagesData.setAddress(jSONAddress);
            return whitePagesData;
        }

        @JavascriptInterface
        public void setWhitePagesDataList(final String str) {
            if (StringUtils.b((CharSequence) str)) {
                LoadContext.a(new Task() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.WhitePagesListener.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        try {
                            WhitePagesData a2 = WhitePagesListener.a(new JSONObject(str));
                            a2.setKey(WhitePagesListener.this.f14710b.f14535a.getPhone().a());
                            WhitePagesListener.this.f14709a.a(WhitePagesListener.this.f14710b, Collections.singletonList(a2));
                            CLog.a(WhitePagesData.class, "WP data parsing succeeded for: " + str);
                        } catch (JSONException e) {
                            CLog.a(WhitePagesData.class, "Error parsing json result: " + str + " - " + e);
                        }
                    }
                });
            } else {
                CLog.a(WhitePagesData.class, "WP  returned with no results for: ");
                CacheManager.get().a((Class<String>) this.f14709a.getDataClass(), this.f14710b.f14535a.getCacheKey((Class) this.f14709a.getDataClass()), (String) new WhitePagesData());
            }
            WhitePagesLoader whitePagesLoader = this.f14709a;
            whitePagesLoader.f14698a.removeWebview(whitePagesLoader);
        }

        @JavascriptInterface
        public boolean validateWPName(String str) {
            return NameValidationUtils.b(str);
        }
    }

    static {
        Base64Utils.getInstance();
        Base64Utils.getInstance();
    }

    public WhitePagesLoader(ContactLoader contactLoader) {
        this.f14698a = contactLoader;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ JSONExternalSourceContact a(WhitePagesData whitePagesData) {
        WhitePagesData whitePagesData2 = whitePagesData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setName(whitePagesData2.getFullName());
        if (whitePagesData2.getAddress() != null) {
            jSONExternalSourceContact.setAddresses(Collections.singletonList(whitePagesData2.getAddress()));
        }
        return jSONExternalSourceContact;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ void a(LoadContext loadContext, WhitePagesData whitePagesData) {
        final ContactData contactData = loadContext.f14535a;
        contactData.setWhitePagesData(whitePagesData);
        MultiTaskRunner b2 = loadContext.b();
        b2.a(new Task() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                contactData.updateFullName();
            }
        });
        b2.a(new Task() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.4
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                contactData.updateAddresses();
            }
        });
        loadContext.a(b2, this.f14493d);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final List<WhitePagesData> c(final LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        Phone phone = contactData.getPhone();
        synchronized (contactData.getLock(WhitePagesLoader.class)) {
            if (phone != null) {
                if (!contactData.isContactInDevice() && ("US".equals(phone.getRegionCode()) || "CA".equals(phone.getRegionCode()))) {
                    WhitePagesData whitePagesData = contactData.getWhitePagesData();
                    WhitePagesData whitePagesData2 = whitePagesData;
                    if (whitePagesData != null) {
                        whitePagesData2 = whitePagesData;
                        if (StringUtils.b((CharSequence) whitePagesData.getFullName())) {
                            whitePagesData2 = whitePagesData;
                            if (!NameValidationUtils.b(whitePagesData.getFullName())) {
                                CacheManager.get().a((Class<?>) getDataClass(), contactData.getCacheKey((Class) getDataClass()));
                                whitePagesData2 = null;
                            }
                        }
                    }
                    if (whitePagesData2 != null && !whitePagesData2.isExpired(2131427415)) {
                        return null;
                    }
                    if (!CallAppRemoteConfigManager.get().c("whitePagesEnabled")) {
                        CLog.a(WhitePagesLoader.class, "WhitePagesLoader is disabled");
                        return null;
                    }
                    if (HttpUtils.c() && phone.isValidForSearch()) {
                        final String format = String.format(f14696b, phone.b());
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.loader.external.WhitePagesLoader.2
                            @Override // java.lang.Runnable
                            public void run() {
                                WebView webView = new WebView(CallAppApplication.get());
                                WebViewUtils.a(WhitePagesLoader.f14697c);
                                WebViewUtils.a("." + WhitePagesLoader.f14697c);
                                WebViewUtils.a("http://" + WhitePagesLoader.f14697c);
                                WebViewUtils.a("http://. " + WhitePagesLoader.f14697c);
                                WebViewUtils.a("https://" + WhitePagesLoader.f14697c);
                                WebViewUtils.a("https://. " + WhitePagesLoader.f14697c);
                                BaseWebViewDialog.a(webView, CallAppRemoteConfigManager.get().a("webViewUserAgent"), WhitePagesLoader.this.f, new BaseWebViewDialog.SingleWindowWebChromeClient(null));
                                webView.addJavascriptInterface(new WhitePagesListener(loadContext, this), "callAppJSObj");
                                webView.loadUrl(format);
                                WhitePagesLoader.this.f14698a.addWebview(WhitePagesLoader.this, webView);
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
