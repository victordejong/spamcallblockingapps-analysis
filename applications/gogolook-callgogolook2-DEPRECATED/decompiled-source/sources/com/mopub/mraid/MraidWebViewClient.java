package com.mopub.mraid;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.mopub.mobileads.resource.MraidJavascript;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidJS;
import java.io.ByteArrayInputStream;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidWebViewClient.class */
public class MraidWebViewClient extends WebViewClient {

    /* renamed from: a */
    public static final String f8957a = "javascript:" + MraidJavascript.JAVASCRIPT_SOURCE;

    /* renamed from: a */
    public final WebResourceResponse m30232a() {
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(f8957a.getBytes()));
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30231a(@NonNull String str) {
        return MraidJS.MRAID_JS.equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(@NonNull WebView webView, @NonNull String str) {
        return m30231a(str) ? m30232a() : super.shouldInterceptRequest(webView, str);
    }
}
