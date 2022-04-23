package com.verizon.ads.verizonsspconfigprovider;

import com.verizon.ads.ConfigurationProvider;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.verizonsspconfigprovider.-$;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspconfigprovider/_$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k.class */
public final /* synthetic */ class _$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k implements ConfigurationProvider.UpdateListener {
    public static final /* synthetic */ -$.Lambda.VerizonSSPConfigProviderPlugin.rnuP0Qhad3tfCQUPPLR4HjR4A9k INSTANCE = new _$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k();

    private /* synthetic */ _$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k() {
    }

    @Override // com.verizon.ads.ConfigurationProvider.UpdateListener
    public final void onComplete(ConfigurationProvider configurationProvider, ErrorInfo errorInfo) {
        VerizonSSPConfigProviderPlugin.a(configurationProvider, errorInfo);
    }
}
