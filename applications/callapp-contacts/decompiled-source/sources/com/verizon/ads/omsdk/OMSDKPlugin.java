package com.verizon.ads.omsdk;

import android.content.Context;
import com.verizon.ads.Configuration;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/omsdk/OMSDKPlugin.class */
public class OMSDKPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(OMSDKPlugin.class);
    private static final URI j = null;
    private static final URL k = null;
    private static boolean l = false;

    public OMSDKPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "OMSDK", BuildConfig.VAS_OMSDK_PLUGIN_VERSION, "Verizon", j, k, 1);
    }

    public static OpenMeasurementService getMeasurementService() {
        if (!l || !Configuration.getBoolean(BuildConfig.LIBRARY_PACKAGE_NAME, "omsdkEnabled", true)) {
            return null;
        }
        return OpenMeasurementService.a();
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
        l = false;
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        l = true;
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        try {
            OpenMeasurementService.a(getApplicationContext());
            return true;
        } catch (Throwable th) {
            i.e("An error occurred instantiating the Open Measurement Service.", th);
            return false;
        }
    }
}
