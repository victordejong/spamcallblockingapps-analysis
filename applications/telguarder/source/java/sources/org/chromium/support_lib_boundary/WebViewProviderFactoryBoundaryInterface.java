package org.chromium.support_lib_boundary;

import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
/* loaded from: classes3-dex2jar.jar:org/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface.class */
public interface WebViewProviderFactoryBoundaryInterface {
    InvocationHandler createWebView(WebView webView);

    InvocationHandler getProxyController();

    InvocationHandler getServiceWorkerController();

    InvocationHandler getStatics();

    String[] getSupportedFeatures();

    InvocationHandler getTracingController();

    InvocationHandler getWebkitToCompatConverter();

    void setSupportLibraryVersion(String str);
}
