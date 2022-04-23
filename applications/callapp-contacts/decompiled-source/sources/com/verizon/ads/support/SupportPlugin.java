package com.verizon.ads.support;

import android.content.Context;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.support.StaticViewabilityRuleComponent;
import com.verizon.ads.support.VideoViewabilityRuleComponent;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/SupportPlugin.class */
public class SupportPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(SupportPlugin.class);
    private static final URI j = null;
    private static final URL k = null;

    public SupportPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Support", BuildConfig.VAS_SUPPORT_VERSION, "Verizon", j, k, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        ComponentRegistry.registerComponent("rule/static-viewability-v1", new StaticViewabilityRuleComponent.Factory());
        ComponentRegistry.registerComponent("rule/video-viewability-v1", new VideoViewabilityRuleComponent.Factory());
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        return true;
    }
}
