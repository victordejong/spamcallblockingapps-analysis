package com.verizon.ads.webview;

import android.content.Context;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/WebViewPlugin.class */
public class WebViewPlugin extends Plugin {
    private static final URI i = null;
    private static final URL j = null;

    public WebViewPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "WebView", BuildConfig.VAS_WEBVIEW_VERSION, "Verizon", i, j, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        return true;
    }
}
