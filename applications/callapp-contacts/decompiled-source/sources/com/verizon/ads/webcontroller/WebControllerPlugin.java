package com.verizon.ads.webcontroller;

import android.content.Context;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/webcontroller/WebControllerPlugin.class */
public class WebControllerPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(WebControllerPlugin.class);
    private static final URI j = null;
    private static final URL k = null;

    public WebControllerPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Web Controller", BuildConfig.VAS_WEB_CONTROLLER_VERSION, "Verizon", j, k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        i.d("Preparing WebControllerPlugin");
        return true;
    }
}
