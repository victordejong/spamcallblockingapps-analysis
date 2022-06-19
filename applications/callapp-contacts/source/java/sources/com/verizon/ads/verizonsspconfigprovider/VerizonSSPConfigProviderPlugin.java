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

    /* renamed from: i */
    private static final Logger f61975i = Logger.getInstance(VerizonSSPConfigProviderPlugin.class);

    /* renamed from: j */
    private static final URI f61976j = null;

    /* renamed from: k */
    private static final URL f61977k = null;

    /* renamed from: l */
    private static volatile boolean f61978l = false;

    /* renamed from: m */
    private static VerizonSSPConfigProvider f61979m;

    public VerizonSSPConfigProviderPlugin(Context context) {
        super(context, "com.verizon.ads.verizonsspconfigprovider", "Verizon SSP Config Provider", "2.5.0", "Verizon", f61976j, f61977k, 1);
    }

    /* renamed from: a */
    public static /* synthetic */ void m5103a(ConfigurationProvider configurationProvider, ErrorInfo errorInfo) {
        if (errorInfo == null) {
            f61975i.m5567d("Handshake update completed successfully.");
            return;
        }
        Logger logger = f61975i;
        logger.m5565e("An error occurred updating handshake: " + errorInfo.getDescription());
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        f61979m.restoreHandshakeValues();
        if (f61978l) {
            f61979m.update(C17498x6aa41af3.INSTANCE);
            return;
        }
        f61978l = true;
        VASAds.registerConfigurationProvider(this.f61216id, f61979m);
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        VerizonSSPConfigProvider verizonSSPConfigProvider = new VerizonSSPConfigProvider(getApplicationContext());
        f61979m = verizonSSPConfigProvider;
        return verizonSSPConfigProvider.prepare();
    }
}
