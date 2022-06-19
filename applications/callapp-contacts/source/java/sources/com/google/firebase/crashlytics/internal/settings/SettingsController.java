package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.AbstractC14184g;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.CurrentTimeProvider;
import com.google.firebase.crashlytics.internal.common.DataCollectionArbiter;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.firebase.crashlytics.internal.common.SystemCurrentTimeProvider;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import com.google.firebase.crashlytics.internal.settings.model.Settings;
import com.google.firebase.crashlytics.internal.settings.model.SettingsData;
import com.google.firebase.crashlytics.internal.settings.model.SettingsRequest;
import com.google.firebase.crashlytics.internal.settings.network.DefaultSettingsSpiCall;
import com.google.firebase.crashlytics.internal.settings.network.SettingsSpiCall;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/SettingsController.class */
public class SettingsController implements SettingsDataProvider {
    private static final String PREFS_BUILD_INSTANCE_IDENTIFIER = "existing_instance_identifier";
    private static final String SETTINGS_URL_FORMAT = "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings";
    private final AtomicReference<C14186i<AppSettingsData>> appSettingsData = new AtomicReference<>(new C14186i());
    private final CachedSettingsIo cachedSettingsIo;
    private final Context context;
    private final CurrentTimeProvider currentTimeProvider;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final AtomicReference<Settings> settings;
    private final SettingsJsonParser settingsJsonParser;
    private final SettingsRequest settingsRequest;
    private final SettingsSpiCall settingsSpiCall;

    SettingsController(Context context, SettingsRequest settingsRequest, CurrentTimeProvider currentTimeProvider, SettingsJsonParser settingsJsonParser, CachedSettingsIo cachedSettingsIo, SettingsSpiCall settingsSpiCall, DataCollectionArbiter dataCollectionArbiter) {
        AtomicReference<Settings> atomicReference = new AtomicReference<>();
        this.settings = atomicReference;
        this.context = context;
        this.settingsRequest = settingsRequest;
        this.currentTimeProvider = currentTimeProvider;
        this.settingsJsonParser = settingsJsonParser;
        this.cachedSettingsIo = cachedSettingsIo;
        this.settingsSpiCall = settingsSpiCall;
        this.dataCollectionArbiter = dataCollectionArbiter;
        atomicReference.set(DefaultSettingsJsonTransform.defaultSettings(currentTimeProvider));
    }

    public static SettingsController create(Context context, String str, IdManager idManager, HttpRequestFactory httpRequestFactory, String str2, String str3, DataCollectionArbiter dataCollectionArbiter) {
        String installerPackageName = idManager.getInstallerPackageName();
        SystemCurrentTimeProvider systemCurrentTimeProvider = new SystemCurrentTimeProvider();
        return new SettingsController(context, new SettingsRequest(str, idManager.getModelName(), idManager.getOsBuildVersionString(), idManager.getOsDisplayVersionString(), idManager, CommonUtils.createInstanceIdFrom(CommonUtils.getMappingFileId(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(installerPackageName).getId()), systemCurrentTimeProvider, new SettingsJsonParser(systemCurrentTimeProvider), new CachedSettingsIo(context), new DefaultSettingsSpiCall(String.format(Locale.US, SETTINGS_URL_FORMAT, str), httpRequestFactory), dataCollectionArbiter);
    }

    private SettingsData getCachedSettingsData(SettingsCacheBehavior settingsCacheBehavior) {
        Exception e;
        SettingsData settingsData = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject readCachedSettings = this.cachedSettingsIo.readCachedSettings();
                if (readCachedSettings != null) {
                    settingsData = this.settingsJsonParser.parseSettingsJson(readCachedSettings);
                    if (settingsData != null) {
                        logSettings(readCachedSettings, "Loaded cached settings: ");
                        long currentTimeMillis = this.currentTimeProvider.getCurrentTimeMillis();
                        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && settingsData.isExpired(currentTimeMillis)) {
                            Logger.getLogger().m8482v("Cached settings have expired.");
                            settingsData = null;
                        }
                        try {
                            Logger.getLogger().m8482v("Returning cached settings.");
                        } catch (Exception e2) {
                            e = e2;
                            Logger.getLogger().m8485e("Failed to get cached settings", e);
                            return settingsData;
                        }
                    } else {
                        Logger.getLogger().m8485e("Failed to parse cached settings data.", null);
                        settingsData = null;
                    }
                } else {
                    Logger.getLogger().m8488d("No cached settings data found.");
                    settingsData = null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            settingsData = null;
        }
        return settingsData;
    }

    private String getStoredBuildInstanceIdentifier() {
        return CommonUtils.getSharedPrefs(this.context).getString(PREFS_BUILD_INSTANCE_IDENTIFIER, "");
    }

    public void logSettings(JSONObject jSONObject, String str) throws JSONException {
        Logger logger = Logger.getLogger();
        logger.m8488d(str + jSONObject.toString());
    }

    public boolean setStoredBuildInstanceIdentifier(String str) {
        SharedPreferences.Editor edit = CommonUtils.getSharedPrefs(this.context).edit();
        edit.putString(PREFS_BUILD_INSTANCE_IDENTIFIER, str);
        edit.apply();
        return true;
    }

    boolean buildInstanceIdentifierChanged() {
        return !getStoredBuildInstanceIdentifier().equals(this.settingsRequest.instanceId);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsDataProvider
    public AbstractC14185h<AppSettingsData> getAppSettings() {
        return this.appSettingsData.get().m11473a();
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsDataProvider
    public Settings getSettings() {
        return this.settings.get();
    }

    public AbstractC14185h<Void> loadSettingsData(SettingsCacheBehavior settingsCacheBehavior, Executor executor) {
        SettingsData cachedSettingsData;
        if (!buildInstanceIdentifierChanged() && (cachedSettingsData = getCachedSettingsData(settingsCacheBehavior)) != null) {
            this.settings.set(cachedSettingsData);
            this.appSettingsData.get().m11469b((C14186i<AppSettingsData>) cachedSettingsData.getAppSettingsData());
            return C14188k.m11464a((Object) null);
        }
        SettingsData cachedSettingsData2 = getCachedSettingsData(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (cachedSettingsData2 != null) {
            this.settings.set(cachedSettingsData2);
            this.appSettingsData.get().m11469b((C14186i<AppSettingsData>) cachedSettingsData2.getAppSettingsData());
        }
        return this.dataCollectionArbiter.waitForDataCollectionPermission().mo11479a(executor, new AbstractC14184g<Void, Void>() { // from class: com.google.firebase.crashlytics.internal.settings.SettingsController.1
            public AbstractC14185h<Void> then(Void r6) throws Exception {
                JSONObject invoke = SettingsController.this.settingsSpiCall.invoke(SettingsController.this.settingsRequest, true);
                if (invoke != null) {
                    SettingsData parseSettingsJson = SettingsController.this.settingsJsonParser.parseSettingsJson(invoke);
                    SettingsController.this.cachedSettingsIo.writeCachedSettings(parseSettingsJson.getExpiresAtMillis(), invoke);
                    SettingsController.this.logSettings(invoke, "Loaded settings: ");
                    SettingsController settingsController = SettingsController.this;
                    settingsController.setStoredBuildInstanceIdentifier(settingsController.settingsRequest.instanceId);
                    SettingsController.this.settings.set(parseSettingsJson);
                    ((C14186i) SettingsController.this.appSettingsData.get()).m11469b((C14186i) parseSettingsJson.getAppSettingsData());
                    C14186i c14186i = new C14186i();
                    c14186i.m11469b((C14186i) parseSettingsJson.getAppSettingsData());
                    SettingsController.this.appSettingsData.set(c14186i);
                }
                return C14188k.m11464a((Object) null);
            }
        });
    }

    public AbstractC14185h<Void> loadSettingsData(Executor executor) {
        return loadSettingsData(SettingsCacheBehavior.USE_CACHE, executor);
    }
}
