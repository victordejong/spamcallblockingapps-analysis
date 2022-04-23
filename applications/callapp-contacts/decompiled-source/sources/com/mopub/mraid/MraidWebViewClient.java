package com.mopub.mraid;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.mobileads.resource.MraidJavascript;
import java.io.ByteArrayInputStream;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidWebViewClient.class */
public class MraidWebViewClient extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34445a = "javascript:" + MraidJavascript.JAVASCRIPT_SOURCE;

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return "mraid.js".equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment()) ? new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(f34445a.getBytes())) : super.shouldInterceptRequest(webView, str);
    }
}
