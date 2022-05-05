package com.criteo.sync.sdk;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/ConfigManager.class */
public class ConfigManager {
    public static final String CONFIGURATION_ENDPOINT = "https://gum.criteo.com/sdm/config";

    public static Config getConfig(CriteoSyncManager criteoSyncManager, boolean z) {
        PreferencesManager preferencesManager = criteoSyncManager.getPreferencesManager();
        Config config = preferencesManager.getConfig();
        if (z && config.getConfigurationExpires().getTime() < System.currentTimeMillis()) {
            try {
                Config config2 = new ConfigClient(getConfigurationEndpoint(), config).getConfig(criteoSyncManager.getConfigUrlParameters());
                if (config2 != null) {
                    preferencesManager.saveConfig(config2);
                    return config2;
                }
            } catch (Exception e) {
                CrtoLog.m35513e("Unable to load config", e);
            }
        }
        return config;
    }

    public static String getConfigurationEndpoint() {
        String property = System.getProperty("FORCE_CRITEOSYNC_CONFIG_ENDPOINT");
        return property != null ? property : CONFIGURATION_ENDPOINT;
    }
}
