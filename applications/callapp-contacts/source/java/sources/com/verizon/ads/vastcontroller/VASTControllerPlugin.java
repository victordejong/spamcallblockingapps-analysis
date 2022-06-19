package com.verizon.ads.vastcontroller;

import android.content.Context;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTControllerPlugin.class */
public class VASTControllerPlugin extends Plugin {

    /* renamed from: i */
    private static final URI f61821i = null;

    /* renamed from: j */
    private static final URL f61822j = null;

    public VASTControllerPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "VAST Controller", BuildConfig.VAS_VAST_CONTROLLER_VERSION, "Verizon", f61821i, f61822j, 1);
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
