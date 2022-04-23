package com.verizon.ads;

import com.verizon.ads.ConfigurationProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ConfigurationProviderRegistration.class */
public final class ConfigurationProviderRegistration {
    private static final int ERROR_PLUGIN_DISABLED = 1;
    private static final String WHO = "ConfigurationProviderRegistration";
    private ConfigurationProvider configurationProvider;
    private String pluginId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigurationProviderRegistration(String str, ConfigurationProvider configurationProvider) {
        this.pluginId = str;
        this.configurationProvider = configurationProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void update(ConfigurationProvider.UpdateListener updateListener) {
        if (VASAds.isPluginEnabled(this.pluginId)) {
            this.configurationProvider.update(updateListener);
        } else if (Logger.isLogLevelEnabled(4)) {
            String format = String.format("Configuration Provider <%s> not updated because plugin with id <%s> is disabled.", this.configurationProvider.getId(), this.pluginId);
            if (updateListener != null) {
                updateListener.onComplete(this.configurationProvider, new ErrorInfo(WHO, format, 1));
            }
        }
    }
}
