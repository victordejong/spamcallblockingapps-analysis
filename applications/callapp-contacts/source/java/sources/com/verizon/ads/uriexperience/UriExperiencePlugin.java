package com.verizon.ads.uriexperience;

import android.content.Context;
import com.verizon.ads.Logger;
import com.verizon.ads.PEXRegistry;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/uriexperience/UriExperiencePlugin.class */
public class UriExperiencePlugin extends Plugin {

    /* renamed from: i */
    private static final Logger f61740i = Logger.getInstance(UriExperiencePlugin.class);

    /* renamed from: j */
    private static final URI f61741j = null;

    /* renamed from: k */
    private static final URL f61742k = null;

    /* renamed from: l */
    private UriExperiencePEXFactory f61743l;

    public UriExperiencePlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Uri Experience", BuildConfig.VAS_URI_EXPERIENCE_PLUGIN_VERSION, "Verizon", f61741j, f61742k, 1);
        this.f61743l = new UriExperiencePEXFactory(context);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        PEXRegistry.registerPEX("experience/uri-v1", this.f61743l);
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        return true;
    }
}
