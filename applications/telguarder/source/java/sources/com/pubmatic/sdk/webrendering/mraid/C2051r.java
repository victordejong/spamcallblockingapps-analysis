package com.pubmatic.sdk.webrendering.mraid;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient;
import java.io.ByteArrayInputStream;
import java.util.Locale;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.r */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/r.class */
class C2051r extends POBHTMLViewClient {
    /* renamed from: a */
    private WebResourceResponse m458a(Context context) {
        String loadMraid = POBUtils.loadMraid(context, "mraid.js");
        if (loadMraid != null) {
            return new WebResourceResponse("text/javascript", POBCommonConstants.URL_ENCODING, new ByteArrayInputStream(("javascript:" + loadMraid).getBytes()));
        }
        return null;
    }

    /* renamed from: b */
    private boolean m457b(String str) {
        return "mraid.js".equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (m457b(webResourceRequest.getUrl().toString())) {
            PMLog.debug("PMMraidWebClient", "Injecting MRAID in webView via request", new Object[0]);
            WebResourceResponse m458a = m458a(webView.getContext());
            return m458a != null ? m458a : super.shouldInterceptRequest(webView, webResourceRequest);
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (m457b(str)) {
            PMLog.debug("PMMraidWebClient", "Injecting MRAID in webView via url", new Object[0]);
            WebResourceResponse m458a = m458a(webView.getContext());
            return m458a != null ? m458a : super.shouldInterceptRequest(webView, str);
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
