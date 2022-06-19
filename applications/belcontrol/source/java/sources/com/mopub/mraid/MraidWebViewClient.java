package com.mopub.mraid;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.C0515C;
import com.mopub.mobileads.resource.MraidJavascript;
import java.io.ByteArrayInputStream;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidWebViewClient.class */
public class MraidWebViewClient extends WebViewClient {

    /* renamed from: a */
    public static final String f5087a = "javascript:" + MraidJavascript.JAVASCRIPT_SOURCE;

    /* renamed from: a */
    public final WebResourceResponse m3385a() {
        return new WebResourceResponse("text/javascript", C0515C.UTF8_NAME, new ByteArrayInputStream(f5087a.getBytes()));
    }

    /* renamed from: b */
    public boolean m3384b(String str) {
        return "mraid.js".equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m3384b(str) ? m3385a() : super.shouldInterceptRequest(webView, str);
    }
}
