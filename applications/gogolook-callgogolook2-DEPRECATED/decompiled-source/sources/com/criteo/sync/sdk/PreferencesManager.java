package com.criteo.sync.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/PreferencesManager.class */
public class PreferencesManager {
    public static final String CLIENT_SIDE_METRICS_DEFAULT_ENDPOINT = "https://csm.fr.eu.criteo.net/sdm";
    public static final String PREFERENCE_COLLECTION_ACTIVE = "collection_active";
    public static final String PREFERENCE_COLLECTION_ENDPOINT = "collection_endpoint";
    public static final String PREFERENCE_COLLECTION_LAST_SUCCESS = "collection_last_success";
    public static final String PREFERENCE_COLLECTION_PERIOD = "collection_period";
    public static final String PREFERENCE_CONFIGURATION_EXPIRES = "configuration_expires";
    public static final String PREFERENCE_ERROR_REPORTING_ENDPOINT = "csm_endpoint";
    public static final String PREFERENCE_ERROR_REPORTING_SAMPLING_PERCENT = "csm_sampling";
    public Context context;

    public PreferencesManager(Context context) {
        this.context = context;
    }

    private SharedPreferences getSharedPreferences() {
        return this.context.getSharedPreferences("com.criteo.sync.sdk.preferences", 0);
    }

    public Config getConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences();
        long j = sharedPreferences.getLong("configuration_expires", 0L);
        return new Config(sharedPreferences.getString("collection_endpoint", ""), sharedPreferences.getBoolean("collection_active", false), Duration.ofMillis(sharedPreferences.getLong("collection_period", AdUtils.ONE_DAY)), new Date(j), sharedPreferences.getFloat(PREFERENCE_ERROR_REPORTING_SAMPLING_PERCENT, 100.0f), sharedPreferences.getString(PREFERENCE_ERROR_REPORTING_ENDPOINT, CLIENT_SIDE_METRICS_DEFAULT_ENDPOINT));
    }

    public long getLastCollectionTime() {
        return getSharedPreferences().getLong(PREFERENCE_COLLECTION_LAST_SUCCESS, 0L);
    }

    public void saveConfig(Config config) {
        SharedPreferences.Editor edit = getSharedPreferences().edit();
        edit.putString("collection_endpoint", config.getCollectionEndpoint());
        edit.putBoolean("collection_active", config.isCollectionActive());
        edit.putLong("collection_period", config.getCollectionPeriod().toMillis());
        edit.putLong("configuration_expires", config.getConfigurationExpires().getTime());
        edit.putFloat(PREFERENCE_ERROR_REPORTING_SAMPLING_PERCENT, config.getErrorSamplingPercent());
        edit.putString(PREFERENCE_ERROR_REPORTING_ENDPOINT, config.getErrorReportingEndpoint());
        edit.apply();
    }

    public void writeLastCollectionTime() {
        SharedPreferences.Editor edit = getSharedPreferences().edit();
        edit.putLong(PREFERENCE_COLLECTION_LAST_SUCCESS, System.currentTimeMillis());
        edit.apply();
    }
}
