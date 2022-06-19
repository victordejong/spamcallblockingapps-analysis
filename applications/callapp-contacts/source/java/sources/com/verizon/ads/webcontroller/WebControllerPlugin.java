package com.verizon.ads.webcontroller;

import android.content.Context;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/webcontroller/WebControllerPlugin.class */
public class WebControllerPlugin extends Plugin {

    /* renamed from: i */
    private static final Logger f62087i = Logger.getInstance(WebControllerPlugin.class);

    /* renamed from: j */
    private static final URI f62088j = null;

    /* renamed from: k */
    private static final URL f62089k = null;

    public WebControllerPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Web Controller", BuildConfig.VAS_WEB_CONTROLLER_VERSION, "Verizon", f62088j, f62089k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        f62087i.m5567d("Preparing WebControllerPlugin");
        return true;
    }
}
