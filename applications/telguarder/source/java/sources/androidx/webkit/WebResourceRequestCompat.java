package androidx.webkit;

import android.webkit.WebResourceRequest;
import androidx.webkit.internal.WebResourceRequestAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebResourceRequestCompat.class */
public class WebResourceRequestCompat {
    private WebResourceRequestCompat() {
    }

    private static WebResourceRequestAdapter getAdapter(WebResourceRequest webResourceRequest) {
        return WebViewGlueCommunicator.getCompatConverter().convertWebResourceRequest(webResourceRequest);
    }

    public static boolean isRedirect(WebResourceRequest webResourceRequest) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_RESOURCE_REQUEST_IS_REDIRECT;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webResourceRequest.isRedirect();
        }
        if (!webViewFeatureInternal.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        return getAdapter(webResourceRequest).isRedirect();
    }
}
