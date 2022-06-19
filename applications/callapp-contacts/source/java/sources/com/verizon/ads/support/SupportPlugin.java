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

    /* renamed from: i */
    private static final Logger f61679i = Logger.getInstance(SupportPlugin.class);

    /* renamed from: j */
    private static final URI f61680j = null;

    /* renamed from: k */
    private static final URL f61681k = null;

    public SupportPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Support", BuildConfig.VAS_SUPPORT_VERSION, "Verizon", f61680j, f61681k, 1);
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
