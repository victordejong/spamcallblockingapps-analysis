package com.verizon.ads.verizonsspconfigprovider;

import android.content.Context;
import com.verizon.ads.ConfigurationProvider;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.VASAds;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin.class */
public class VerizonSSPConfigProviderPlugin extends Plugin {
    private static final Logger i = Logger.getInstance(VerizonSSPConfigProviderPlugin.class);
    private static final URI j = null;
    private static final URL k = null;
    private static volatile boolean l = false;
    private static VerizonSSPConfigProvider m;

    public VerizonSSPConfigProviderPlugin(Context context) {
        super(context, "com.verizon.ads.verizonsspconfigprovider", "Verizon SSP Config Provider", "2.5.0", "Verizon", j, k, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(ConfigurationProvider configurationProvider, ErrorInfo errorInfo) {
        if (errorInfo != null) {
            Logger logger = i;
            logger.e("An error occurred updating handshake: " + errorInfo.getDescription());
            return;
        }
        i.d("Handshake update completed successfully.");
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        m.restoreHandshakeValues();
        if (!l) {
            l = true;
            VASAds.registerConfigurationProvider(this.id, m);
            return;
        }
        m.update(_$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k.INSTANCE);
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        VerizonSSPConfigProvider verizonSSPConfigProvider = new VerizonSSPConfigProvider(getApplicationContext());
        m = verizonSSPConfigProvider;
        return verizonSSPConfigProvider.prepare();
    }
}
