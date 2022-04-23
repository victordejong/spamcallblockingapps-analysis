package io.fabric.sdk.android.services.settings;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.DataCollectionArbiter;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/settings/DefaultSettingsController.class */
public class DefaultSettingsController implements SettingsController {
    private static final String LOAD_ERROR_MESSAGE = "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.";
    private static final String PREFS_BUILD_INSTANCE_IDENTIFIER = "existing_instance_identifier";
    private final CachedSettingsIo cachedSettingsIo;
    private final CurrentTimeProvider currentTimeProvider;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final Kit kit;
    private final PreferenceStore preferenceStore;
    private final SettingsJsonTransform settingsJsonTransform;
    private final SettingsRequest settingsRequest;
    private final SettingsSpiCall settingsSpiCall;

    public DefaultSettingsController(Kit kit, SettingsRequest settingsRequest, CurrentTimeProvider currentTimeProvider, SettingsJsonTransform settingsJsonTransform, CachedSettingsIo cachedSettingsIo, SettingsSpiCall settingsSpiCall, DataCollectionArbiter dataCollectionArbiter) {
        this.kit = kit;
        this.settingsRequest = settingsRequest;
        this.currentTimeProvider = currentTimeProvider;
        this.settingsJsonTransform = settingsJsonTransform;
        this.cachedSettingsIo = cachedSettingsIo;
        this.settingsSpiCall = settingsSpiCall;
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.preferenceStore = new PreferenceStoreImpl(this.kit);
    }

    private SettingsData getCachedSettingsData(SettingsCacheBehavior settingsCacheBehavior) {
        Exception e;
        r9 = null;
        SettingsData settingsData = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject readCachedSettings = this.cachedSettingsIo.readCachedSettings();
                if (readCachedSettings != null) {
                    settingsData = this.settingsJsonTransform.buildFromJson(this.currentTimeProvider, readCachedSettings);
                    if (settingsData != null) {
                        logSettings(readCachedSettings, "Loaded cached settings: ");
                        long currentTimeMillis = this.currentTimeProvider.getCurrentTimeMillis();
                        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && settingsData.isExpired(currentTimeMillis)) {
                            Fabric.getLogger().mo288d(Fabric.TAG, "Cached settings have expired.");
                            settingsData = null;
                        }
                        try {
                            Fabric.getLogger().mo288d(Fabric.TAG, "Returning cached settings.");
                        } catch (Exception e2) {
                            e = e2;
                            Fabric.getLogger().mo285e(Fabric.TAG, "Failed to get cached settings", e);
                            return settingsData;
                        }
                    } else {
                        Fabric.getLogger().mo285e(Fabric.TAG, "Failed to transform cached settings data.", null);
                        settingsData = null;
                    }
                } else {
                    Fabric.getLogger().mo288d(Fabric.TAG, "No cached settings data found.");
                    settingsData = null;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return settingsData;
    }

    private void logSettings(JSONObject jSONObject, String str) throws JSONException {
        Logger logger = Fabric.getLogger();
        logger.mo288d(Fabric.TAG, str + jSONObject.toString());
    }

    boolean buildInstanceIdentifierChanged() {
        return !getStoredBuildInstanceIdentifier().equals(getBuildInstanceIdentifierFromContext());
    }

    String getBuildInstanceIdentifierFromContext() {
        return CommonUtils.createInstanceIdFrom(CommonUtils.resolveBuildId(this.kit.getContext()));
    }

    String getStoredBuildInstanceIdentifier() {
        return this.preferenceStore.get().getString(PREFS_BUILD_INSTANCE_IDENTIFIER, "");
    }

    @Override // io.fabric.sdk.android.services.settings.SettingsController
    public SettingsData loadSettingsData() {
        return loadSettingsData(SettingsCacheBehavior.USE_CACHE);
    }

    @Override // io.fabric.sdk.android.services.settings.SettingsController
    public SettingsData loadSettingsData(SettingsCacheBehavior settingsCacheBehavior) {
        Exception e;
        if (!this.dataCollectionArbiter.isDataCollectionEnabled()) {
            Fabric.getLogger().mo288d(Fabric.TAG, "Not fetching settings, because data collection is disabled by Firebase.");
            return null;
        }
        SettingsData settingsData = null;
        SettingsData settingsData2 = null;
        try {
            if (!Fabric.isDebuggable()) {
                settingsData = null;
                if (!buildInstanceIdentifierChanged()) {
                    settingsData = getCachedSettingsData(settingsCacheBehavior);
                }
            }
            settingsData2 = settingsData;
            if (settingsData == null) {
                JSONObject invoke = this.settingsSpiCall.invoke(this.settingsRequest);
                settingsData2 = settingsData;
                if (invoke != null) {
                    SettingsData buildFromJson = this.settingsJsonTransform.buildFromJson(this.currentTimeProvider, invoke);
                    try {
                        this.cachedSettingsIo.writeCachedSettings(buildFromJson.expiresAtMillis, invoke);
                        logSettings(invoke, "Loaded settings: ");
                        setStoredBuildInstanceIdentifier(getBuildInstanceIdentifierFromContext());
                        settingsData2 = buildFromJson;
                    } catch (Exception e2) {
                        e = e2;
                        settingsData2 = buildFromJson;
                        Fabric.getLogger().mo285e(Fabric.TAG, LOAD_ERROR_MESSAGE, e);
                        return settingsData2;
                    }
                }
            }
            settingsData2 = settingsData2;
            if (settingsData2 == null) {
                settingsData2 = getCachedSettingsData(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
            }
        } catch (Exception e3) {
            e = e3;
        }
        return settingsData2;
    }

    @SuppressLint({"CommitPrefEdits"})
    boolean setStoredBuildInstanceIdentifier(String str) {
        SharedPreferences.Editor edit = this.preferenceStore.edit();
        edit.putString(PREFS_BUILD_INSTANCE_IDENTIFIER, str);
        return this.preferenceStore.save(edit);
    }
}
