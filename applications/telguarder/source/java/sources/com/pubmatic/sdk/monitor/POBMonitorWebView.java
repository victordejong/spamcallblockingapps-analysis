package com.pubmatic.sdk.monitor;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.internal.AssetHelper;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView.class */
public class POBMonitorWebView extends WebView {
    public boolean isLoaded = false;

    /* renamed from: a */
    private List<String> f620a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.monitor.POBMonitorWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView$a.class */
    public class C1905a implements AbstractC1910e {

        /* renamed from: a */
        final /* synthetic */ AbstractC1910e f621a;

        C1905a(AbstractC1910e abstractC1910e) {
            POBMonitorWebView.this = r4;
            this.f621a = abstractC1910e;
        }

        @Override // com.pubmatic.sdk.monitor.POBMonitorWebView.AbstractC1910e
        /* renamed from: a */
        public void mo956a() {
            POBMonitorWebView.this.isLoaded = true;
            this.f621a.mo956a();
        }
    }

    /* renamed from: com.pubmatic.sdk.monitor.POBMonitorWebView$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView$b.class */
    public class RunnableC1906b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f623a;

        /* renamed from: com.pubmatic.sdk.monitor.POBMonitorWebView$b$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView$b$a.class */
        class C1907a implements ValueCallback<String> {
            C1907a(RunnableC1906b runnableC1906b) {
            }

            /* renamed from: a */
            public void onReceiveValue(String str) {
            }
        }

        RunnableC1906b(String str) {
            POBMonitorWebView.this = r4;
            this.f623a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            POBMonitorWebView.this.evaluateJavascript(String.format("pmMonitor.broadcast('%s')", this.f623a), new C1907a(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.monitor.POBMonitorWebView$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView$c.class */
    public static class C1908c {

        /* renamed from: a */
        Context f625a;

        private C1908c(Context context) {
            this.f625a = context;
        }

        /* synthetic */ C1908c(Context context, C1905a c1905a) {
            this(context);
        }

        @JavascriptInterface
        public void nativeCall(String str) {
            JSONObject jSONObject;
            try {
                JSONObject jSONObject2 = new JSONObject(str);
                if (!jSONObject2.optString("name", "").startsWith("share") || (jSONObject = jSONObject2.getJSONObject(NativeProtocol.WEB_DIALOG_PARAMS)) == null) {
                    return;
                }
                POBMonitorWebView.m959a(this.f625a, jSONObject.optString(SDKConstants.PARAM_A2U_BODY, ""));
            } catch (JSONException e) {
                Log.d("POBMonitorWebView", e.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.monitor.POBMonitorWebView$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView$d.class */
    public static class C1909d extends WebViewClient {

        /* renamed from: a */
        AbstractC1910e f626a;

        private C1909d(AbstractC1910e abstractC1910e) {
            this.f626a = abstractC1910e;
        }

        /* synthetic */ C1909d(AbstractC1910e abstractC1910e, C1905a c1905a) {
            this(abstractC1910e);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            this.f626a.mo956a();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    /* renamed from: com.pubmatic.sdk.monitor.POBMonitorWebView$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorWebView$e.class */
    public interface AbstractC1910e {
        /* renamed from: a */
        void mo956a();
    }

    public POBMonitorWebView(Context context) {
        super(context);
    }

    /* renamed from: a */
    static void m959a(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.setFlags(268435456);
        context.getApplicationContext().startActivity(intent);
    }

    /* renamed from: a */
    private boolean m958a(String str) {
        if (this.isLoaded) {
            post(new RunnableC1906b(str));
            return true;
        }
        return false;
    }

    public void appendData(JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        if (!m958a(jSONObject2)) {
            this.f620a.add(jSONObject2);
            return;
        }
        Iterator<String> it = this.f620a.iterator();
        while (it.hasNext()) {
            m958a(it.next());
            it.remove();
        }
    }

    public void initWebView(AbstractC1910e abstractC1910e) {
        getSettings().setJavaScriptEnabled(true);
        clearCache(true);
        clearHistory();
        setWebViewClient(new C1909d(new C1905a(abstractC1910e), null));
        setWebChromeClient(new WebChromeClient());
        addJavascriptInterface(new C1908c(getContext(), null), "nativeBridge");
    }
}
