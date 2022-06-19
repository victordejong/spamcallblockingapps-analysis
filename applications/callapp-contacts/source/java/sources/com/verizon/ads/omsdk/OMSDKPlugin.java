package com.verizon.ads.omsdk;

import android.content.Context;
import com.verizon.ads.Configuration;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/omsdk/OMSDKPlugin.class */
public class OMSDKPlugin extends Plugin {

    /* renamed from: i */
    private static final Logger f61644i = Logger.getInstance(OMSDKPlugin.class);

    /* renamed from: j */
    private static final URI f61645j = null;

    /* renamed from: k */
    private static final URL f61646k = null;

    /* renamed from: l */
    private static boolean f61647l = false;

    public OMSDKPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "OMSDK", BuildConfig.VAS_OMSDK_PLUGIN_VERSION, "Verizon", f61645j, f61646k, 1);
    }

    public static OpenMeasurementService getMeasurementService() {
        if (!f61647l || !Configuration.getBoolean(BuildConfig.LIBRARY_PACKAGE_NAME, "omsdkEnabled", true)) {
            return null;
        }
        return OpenMeasurementService.m5364a();
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
        f61647l = false;
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        f61647l = true;
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        try {
            OpenMeasurementService.m5363a(getApplicationContext());
            return true;
        } catch (Throwable th) {
            f61644i.m5564e("An error occurred instantiating the Open Measurement Service.", th);
            return false;
        }
    }
}
