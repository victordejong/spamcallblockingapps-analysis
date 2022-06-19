package com.verizon.ads.nativeplacement;

import android.content.Context;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativePlacementPlugin.class */
public class NativePlacementPlugin extends Plugin {

    /* renamed from: i */
    private static final Logger f61626i = Logger.getInstance(NativePlacementPlugin.class);

    /* renamed from: j */
    private static final URI f61627j = null;

    /* renamed from: k */
    private static final URL f61628k = null;

    public NativePlacementPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "Native Placement", BuildConfig.VAS_NATIVE_PLACEMENT_VERSION, "Verizon", f61627j, f61628k, 1);
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
