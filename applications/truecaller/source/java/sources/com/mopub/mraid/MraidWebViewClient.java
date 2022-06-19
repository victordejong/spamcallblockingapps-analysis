package com.mopub.mraid;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.mobileads.resource.MraidJavascript;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidWebViewClient.class */
public class MraidWebViewClient extends WebViewClient {

    /* renamed from: a */
    public static final String f9027a;

    static {
        StringBuilder m8728C = C22128a.m8728C("javascript:");
        m8728C.append(MraidJavascript.JAVASCRIPT_SOURCE);
        f9027a = m8728C.toString();
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return "mraid.js".equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment()) ? new WebResourceResponse("text/javascript", StringConstant.UTF8, new ByteArrayInputStream(f9027a.getBytes())) : super.shouldInterceptRequest(webView, str);
    }
}
