package com.verizon.ads.uriexperience;

import android.content.Context;
import com.verizon.ads.Logger;
import com.verizon.ads.PEXRegistry;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/uriexperience/UriExperiencePlugin.class */
public class UriExperiencePlugin extends Plugin {
    private static final Logger i = Logger.getInstance(UriExperiencePlugin.class);
    private static final URI j = null;
    private static final URL k = null;
    private UriExperiencePEXFactory l;

    public UriExperiencePlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Uri Experience", BuildConfig.VAS_URI_EXPERIENCE_PLUGIN_VERSION, "Verizon", j, k, 1);
        this.l = new UriExperiencePEXFactory(context);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        PEXRegistry.registerPEX("experience/uri-v1", this.l);
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        return true;
    }
}
