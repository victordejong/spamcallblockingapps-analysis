package com.verizon.ads.inlineplacement;

import android.content.Context;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlinePlacementPlugin.class */
public class InlinePlacementPlugin extends Plugin {

    /* renamed from: i */
    private static final URI f61402i = null;

    /* renamed from: j */
    private static final URL f61403j = null;

    public InlinePlacementPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Inline Placement", BuildConfig.VAS_INLINE_PLACEMENT_VERSION, "Verizon", f61402i, f61403j, 1);
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
