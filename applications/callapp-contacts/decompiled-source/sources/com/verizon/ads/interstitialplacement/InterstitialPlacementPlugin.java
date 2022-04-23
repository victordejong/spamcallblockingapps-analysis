package com.verizon.ads.interstitialplacement;

import android.content.Context;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialPlacementPlugin.class */
public class InterstitialPlacementPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(InterstitialPlacementPlugin.class);
    private static final URI j = null;
    private static final URL k = null;

    public InterstitialPlacementPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Interstitial Placement", BuildConfig.VAS_INTERSTITIAL_PLACEMENT_VERSION, "Verizon", j, k, 1);
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
